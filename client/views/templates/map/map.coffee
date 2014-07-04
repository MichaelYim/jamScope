makeModal = (marker, nameObject)->
  google.maps.event.addListener marker, "click", ->
    Crater.overlay "profilepop",
      data:
        nameObject

Template.map.rendered = ->
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

    # google.maps.event.addListener map, "click", (e) ->
    #   placeMarker e.latLng, map

    #   updateLatLng =
    #     "profile.lat": e.latLng.k
    #     "profile.long": e.latLng.B

    #   current = Meteor.userId()
    #   Meteor.users.update current,
    #   $set: updateLatLng

    listOfUsers = Meteor.users.find().fetch()


    for i in [0...listOfUsers.length]
      thisLocation = new google.maps.LatLng(listOfUsers[i].profile.lat, listOfUsers[i].profile.long)
      console.log listOfUsers[i].profile.lat

      marker = new google.maps.Marker(
        title: listOfUsers[i].profile.name
        position: thisLocation
        map: map
        # animation: google.maps.Animation.DROP
      )
      mapinfo = "hi"
      name = listOfUsers[i].profile.name
      nameObject = listOfUsers[i]
      console.log name
      contentStr = "#{name}"
      infowindow = new google.maps.InfoWindow(content: contentStr)
      infowindow.open(map, marker)

      makeModal marker, nameObject





  # placeMarker = (position, map) ->
  #   marker = new google.maps.Marker(
  #     position: position
  #     map: map
  #     animation: google.maps.Animation.DROP
  #   )
  #   mapinfo = "hi"
  #   name = name
  #   contentStr = "<h1> #{name} </h1>"
  #   infowindow = new google.maps.InfoWindow(content : contentStr)
  #   google.maps.event.addListener marker, "click", ->
  #     infowindow.open map, marker

    # console.log(position)

