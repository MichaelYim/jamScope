GoogleMaps.init
  sensor: true #optional
  key: "AIzaSyDm2gMtNV9wflK9xeRTl9C40GpKvAzdwQw" #optional
  # language: "de" #optional
, ->
  mapOptions =
    zoom: 13
    mapTypeId: google.maps.MapTypeId.ROADMAP

  map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions)
  map.setCenter new google.maps.LatLng(22.26, 114.19)
  return
