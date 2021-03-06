makeModal = (marker, nameObject, map, infowindow)-> #make modal popup
      google.maps.event.addListener marker, "mouseover", ->
        infowindow.open(marker.get('map'), marker)

      google.maps.event.addListener marker, "click", ->
        Crater.overlay "profilepop",
          data:
            nameObject

arrayOfMarkers = []

Template.map.rendered = ->

  $("html, body").scrollTop(0) #scroll to top every time this page is rendered

  if !Meteor.user()
    $('#map-canvas').attr("title", "sign in to add your pin!")

  setTimeout (-> #intro popup once
    if !Meteor.user() && Session.get("introSeen")==false
      Crater.overlay "introInfo"
      Session.set("introSeen", true )
  ), 4000

  GoogleMaps.init
    sensor: true
    key: gmapskey
    # language: "de" #optional
  , ->
    # initialize map
    myLatlng = new google.maps.LatLng(22.26, 114.19)
    mapOptions =
      zoom: 13
      mapTypeId: google.maps.MapTypeId.ROADMAP
      center: myLatlng
    # geolocation on button click
    map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions)
    $(".my-location-btn").click ->
      console.log "runningButton"
      if navigator.geolocation
        navigator.geolocation.getCurrentPosition (position) ->
          pos = new google.maps.LatLng(position.coords.latitude, position.coords.longitude)
          map.setCenter pos
          map.setZoom(13)
          console.log position
    # geolocation plus drop button on current location on button click
    $(".pin-my-location-btn").click ->
      console.log "runningButton"
      if navigator.geolocation
        navigator.geolocation.getCurrentPosition (position) ->
          pos = new google.maps.LatLng(position.coords.latitude, position.coords.longitude)
          map.setCenter pos
          map.setZoom(13)
          console.log position
          placeMarker pos, map

      else
        alert "Cannot find location without your permission"
    #geocode location (get address) and save to database
    google.maps.event.addListener map, "click", (e) ->
      console.log e.latLng
      placeMarker e.latLng, map #run placeMarker function defined below
      B = "1"
      if e.latLng.B != null
        B = e.latLng.B
      else B = e.latLng.A
      geocoder = new google.maps.Geocoder()
      geolatlng = new google.maps.LatLng(e.latLng.k, B)
      x = []
      geocoder.geocode
        latLng: geolatlng
      , (results, status) ->
        console.log results
        geoCodingAddress = results[1].formatted_address
        secondLast = results.length-2
        geoCodingCountry = results[secondLast].formatted_address
        updateThis =
          "profile.lat": e.latLng.k
          "profile.long": B
          "profile.geocoding": geoCodingAddress
          "profile.geocodingCountry": geoCodingCountry
        currentTarget = Meteor.userId()
        Meteor.call 'updateThis' ,updateThis, currentTarget, (error, result) ->

    listOfUsers = Meteor.users.find().fetch() #drop pins of users (from database), add to an array
    arrayOfMarkers = []
    for i in [0...listOfUsers.length]
      if listOfUsers[i].profile.lat != null
        thisLocation = new google.maps.LatLng(listOfUsers[i].profile.lat, listOfUsers[i].profile.long)
        marker = new google.maps.Marker(
          id: listOfUsers[i]._id
          title: listOfUsers[i].profile.name
          position: thisLocation
          map: map
          icon: listOfUsers[i].profile.picturesquare
        )
        mapinfo = "hi"
        name = listOfUsers[i].profile.name
        nameObject = listOfUsers[i]
        contentStr = "<div style='height:auto, width:auto'>#{name}</div>"
        infowindow = new google.maps.InfoWindow(content: contentStr)

        arrayOfMarkers.push(marker)

        makeModal marker, nameObject, marker, infowindow

  placeMarker = (position, map) -> #place marker function on click
    if Meteor.user().profile.lat == null
    else
      oldPin = _.find(arrayOfMarkers, (x) ->
        x.id == Meteor.user()._id
      )
      oldPin.setMap(null)
      oldPin = null
      arrayOfMarkers = _.filter(arrayOfMarkers, (x) ->
        x.id != Meteor.user()._id
      ) # delete old marker if current user already dropped a marker previously
        # makes sure each user can only drop 1 marker at a time
    marker = new google.maps.Marker(
      id: Meteor.user()._id
      position: position
      map: map
      animation: google.maps.Animation.DROP
      icon: Meteor.user().profile.picturesquare
    )
    mapinfo = ""
    name = Meteor.user().profile.name
    picLink = Meteor.user().profile.picture
    contentStr = "<p>#{name}</p>"
    infowindow = new google.maps.InfoWindow(content : contentStr)
    infowindow.open(map, marker)
    arrayOfMarkers.push(marker)
    google.maps.event.addListener marker, "click", -> # run create modal function when a pin is clicked
      infowindow.open map, marker
      makeModal marker, Meteor.user()


