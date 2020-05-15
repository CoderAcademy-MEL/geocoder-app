import { icon } from './icon'
import { tileLayer } from './tileLayer'

const renderMap = async (search) => {
  const url = search ? `/venues/map/${search}` : `/venues?type=json`
  const response = await fetch(url)
  const { data, center } = await response.json()
  const map = await tileLayer(center)
  const markers = data.map((location) => {
    return L.marker([location[0], location[1]], {icon: icon})
  })
  L.featureGroup(markers).addTo(map)
}

const search = document.querySelector("#search-form")
search.addEventListener('submit', async (e) => {
  e.preventDefault()
  map.remove()
  document.querySelector(".map-container").innerHTML = `<div id="map"></div>`
  const value = e.target.elements[0].value
  renderMap(value)
})

renderMap()