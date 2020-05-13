import L from 'leaflet'

export const tileLayer = async (data) => {
  const view = typeof(data[0]) === "object" ? {zoom: 11, lat: -37.81, long: 144.96} : {zoom: 20, lat: data[0], long: data[1]} 
  const map = L.map('map').setView([view.lat, view.long], view.zoom)
  L.tileLayer('https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token={accessToken}', {
      attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, <a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
      maxZoom: 20,
      id: 'mapbox/streets-v11',
      tileSize: 512,
      zoomOffset: -1,
      accessToken: // add your own mapbox access token
  }).addTo(map)
  return map
}