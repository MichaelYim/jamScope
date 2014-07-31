makeModal = (marker, nameObject, map, infowindow)->
      google.maps.event.addListener marker, "mouseover", ->
        infowindow.open(marker.get('map'), marker)

      google.maps.event.addListener marker, "click", ->
        Crater.overlay "profilepop",
          data:
            nameObject

arrayOfMarkers = []

Template.map.rendered = ->

  if !Meteor.user()
    $('#map-canvas').attr("title", "sign in to add your pin!")
  setTimeout (->
    if !Meteor.user() && Session.get("introSeen")==false
      Crater.overlay "introInfo"
      Session.set("introSeen", true )
  ), 4000

  GoogleMaps.init
    sensor: true #optional
    key: gmapskey #optional
    # language: "de" #optional
  , ->
    geocoder = new google.maps.Geocoder()
    myLatlng = new google.maps.LatLng(22.26, 114.19)
    mapOptions =
      zoom: 13
      mapTypeId: google.maps.MapTypeId.ROADMAP
      center: myLatlng

    map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions)


    google.maps.event.addListener map, "click", (e) ->
      placeMarker e.latLng, map
      # console.log "running"

      geolatlng = new google.maps.LatLng(e.latLng.k, e.latLng.B)

      geocoder.geocode
        latLng: geolatlng
      , (results, status) ->
        share.geocoding = results[1].formatted_address
        console.log share.geocoding
      updateThis =
        "profile.lat": e.latLng.k
        "profile.long": e.latLng.B
        "geocoding": share.geocoding
      currentTarget = Meteor.userId()

      Meteor.call 'updateThis' ,updateThis, currentTarget, (error, result) ->

    listOfUsers = Meteor.users.find().fetch()


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

  placeMarker = (position, map) ->
    if Meteor.user().profile.lat == null
    else
      oldPin = _.find(arrayOfMarkers, (x) ->
        x.id == Meteor.user()._id
      )
      oldPin.setMap(null)
      oldPin = null
      arrayOfMarkers = _.filter(arrayOfMarkers, (x) ->
        x.id != Meteor.user()._id
      )
    marker = new google.maps.Marker(
      id: Meteor.user()._id
      position: position
      map: map
      animation: google.maps.Animation.DROP
      icon: Meteor.user().profile.picturesquare
    )
    mapinfo = "hi"
    name = Meteor.user().profile.name
    picLink = Meteor.user().profile.picture
    contentStr = "<p>#{name}</p>"
    infowindow = new google.maps.InfoWindow(content : contentStr)
    infowindow.open(map, marker)
    arrayOfMarkers.push(marker)
    google.maps.event.addListener marker, "click", ->
      infowindow.open map, marker
      makeModal marker, Meteor.user()


