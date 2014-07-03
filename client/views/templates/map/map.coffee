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

    google.maps.event.addListener map, "click", (e) ->
      placeMarker e.latLng, map



    centerHK = new google.maps.LatLng(22.26, 114.19)
    placeMarker centerHK, map


  placeMarker = (position, map) ->
    marker = new google.maps.Marker(
      position: position
      map: map
      animation: google.maps.Animation.DROP
    )
    mapinfo = "hi"
    name = Meteor.user().profile.name
    contentStr = "<h1> #{name} </h1>"
    infowindow = new google.maps.InfoWindow(content : contentStr)
    google.maps.event.addListener marker, "click", ->
      infowindow.open map, marker
