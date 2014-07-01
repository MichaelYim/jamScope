Template.map.rendered = ->
  GoogleMaps.init
    sensor: true #optional
    key: gmapskey #optional
    # language: "de" #optional
  , ->

    placeMarker = (position, map) ->
      marker = new google.maps.Marker(
        position: position
        map: map
      )


      infowindow = new google.maps.InfoWindow(content : "{{> mapinfowindow}}")
      google.maps.event.addListener marker, "click", ->
        infowindow.open map, marker

    myLatlng = new google.maps.LatLng(22.26, 114.19)
    mapOptions =
      zoom: 13
      mapTypeId: google.maps.MapTypeId.ROADMAP
      center: myLatlng

    map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions)




    google.maps.event.addListener map, "click", (e) ->
      placeMarker e.latLng, map






    # contentString = '<h1>hi</div>'
    # infowindow = new google.maps.InfoWindow(content: contentString)





  #listening for pin adds





  # google.maps.event.addDomListener window, "load", initialize