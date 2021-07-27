import mapboxgl from 'mapbox-gl';
import 'mapbox-gl/dist/mapbox-gl.css';
const mapElement = document.getElementById('map');



const initMapboxOnRestaurantsIndex = () => {
  if (!(/\d/.test(window.location.href))) {

  if (mapElement) { // only build a map if there's a div#map to inject into
  const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
  };
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10'
    });
    const markers = JSON.parse(mapElement.dataset.markers);
    markers.forEach((marker) => {
      new mapboxgl.Marker()
        .setLngLat([ marker.lng, marker.lat ])
        .addTo(map);
    });
    fitMapToMarkers(map, markers)
    }
  }
};

const initMapboxOnRestaurantShow = () => {
  if ((/\d/.test(window.location.href))) {

  if (mapElement) { // only build a map if there's a div#map to inject into
  const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  bounds.extend([ markers.lng, markers.lat ]);
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
  };
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10'
    });
    const markers = JSON.parse(mapElement.dataset.markers);
      new mapboxgl.Marker()
        .setLngLat([ markers.lng, markers.lat ])
        .addTo(map);
    fitMapToMarkers(map, markers)
  }
}

};
export { initMapboxOnRestaurantsIndex, initMapboxOnRestaurantShow };
