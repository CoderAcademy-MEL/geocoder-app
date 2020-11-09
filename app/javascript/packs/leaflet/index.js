import { icon } from './icon'
import { tileLayer } from './tileLayer'

const renderMap = async () => {
  const response = await fetch("/venues?type=json")
  const { data, center } = await response.json()
  const map = await tileLayer(center)
  const markers = data.map((location) => {
    return L.marker([location[0], location[1]], {icon: icon})
  })
  L.featureGroup(markers).addTo(map)
}

renderMap()