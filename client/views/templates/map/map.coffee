makeModal = (marker, nameObject)->
      google.maps.event.addListener marker, "click", ->
        Crater.overlay "profilepop",
          data:
            nameObject

arrayOfMarkers = []

Template.map.rendered = ->
  Crater.dismissOverlay('.crater-overlay')
  GoogleMaps.init
    sensor: true #optional
    key: gmapskey #optional
    # language: "de" #optional
  , ->

    myLatlng = new google.maps.LatLng(22.26, 114.19)
    mapOptions =
      zoom: 13
      mapTypeId: google.maps.MapTypeId.ROADMAP
      center: myLatlng

    map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions)

    google.maps.event.addListener map, "click", (e) ->
      placeMarker e.latLng, map

      updateLatLng =
        "profile.lat": e.latLng.k
        "profile.long": e.latLng.B
      current = Meteor.userId()
      Meteor.users.update current,
      $set: updateLatLng

    listOfUsers = Meteor.users.find().fetch()


    arrayOfMarkers = []
    for i in [0...listOfUsers.length]
      thisLocation = new google.maps.LatLng(listOfUsers[i].profile.lat, listOfUsers[i].profile.long)
      console.log listOfUsers[i].profile.lat

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
      contentStr = "#{name}"
      infowindow = new google.maps.InfoWindow(content: contentStr)
      infowindow.open(map, marker)
      arrayOfMarkers.push(marker)

      makeModal marker, nameObject





  placeMarker = (position, map) ->
    ##add if statement for people adding forr the first time
    if Meteor.user().profile.lat = null

    else
      oldPin = _.find(arrayOfMarkers, (x) ->
        x.id == Meteor.user()._id
      )
      oldPin.setMap(null)
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


    # console.log(position)

