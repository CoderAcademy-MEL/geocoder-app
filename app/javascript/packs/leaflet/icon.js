import L from 'leaflet'
import "leaflet/dist/leaflet.css"
import icon1 from "leaflet/dist/images/marker-icon.png"
import shadow from "leaflet/dist/images/marker-shadow.png"

export const icon = L.icon({
  iconUrl: icon1,
  shadowUrl: shadow,
  iconSize: [24,36],
  iconAnchor: [12,36]
})