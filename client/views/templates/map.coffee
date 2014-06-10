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

    #add infoWindow

    google.maps.event.addListener map, "click", (e, result) ->
      placeMarker e.latLng, map
      console.log result

    # google.maps.event.addListener marker, "click", ->
    #   infowindow.open map, marker




  placeMarker = (position, map) ->
    marker = new google.maps.Marker(
      position: position
      map: map
      )
    attachContent(marker)

    attachContent = (marker) ->
      content = "content"
      infowindow = newgooglemaps.InfoWindow(content: marker)
      google.maps.event.addListener marker, "click", ->
      infowindow.open marker.get("map"), marker
    # contentString = '<h1>hi</div>'
    # infowindow = new google.maps.InfoWindow(content: contentString)





  #listening for pin adds





  # google.maps.event.addDomListener window, "load", initialize