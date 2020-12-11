import mapboxgl from 'mapbox-gl';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';

// const btnSpotIt = document.getElementById("btn-spot-it");
// btnSpotIt.addEventListener("click", (e) => {
//   setTimeout(() => {
//     initMapbox();
//   }, 3000);
// });


const mapElement = document.getElementById('map');

// const fitMapToMarkers = (map, markers) => {
//   const bounds = new mapboxgl.LngLatBounds();
//   markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
//   map.fitBounds(bounds, { padding: 70, maxZoom: 20, duration: 2000 });
// };

const addMarkersToMap = (map, markers) => {
  markers.forEach((marker) => {
    const popup = new mapboxgl.Popup().setHTML(marker.infoWindow);

    var el = document.createElement('div');
      el.className = 'marker';
      el.style.backgroundImage =
      'url(https://res.cloudinary.com/dbappiopini/image/upload/v1607653199/guy_icon2_usc0hs.png)';

    new mapboxgl.Marker(el)
      .setLngLat([ marker.lng, marker.lat ])
      .setPopup(popup)
      .addTo(map);
  });
};

const getUserLocation = (map, markers) => {
  let x = document.getElementById("demo");
  function getLocation() {
    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(showPosition);
    } else {
      x.innerHTML = "Geolocation is not supported by this browser.";
    }
  }
  function showPosition(position) {
    // x.innerHTML = "Latitude: " + position.coords.latitude +
    // "<br>Longitude: " + position.coords.longitude;
    const inputLatitude = document.getElementById("user_current_latitude");
      inputLatitude.value = position.coords.latitude;
    const inputLongitude = document.getElementById("user_current_longitude");
      inputLongitude.value = position.coords.longitude;

    markers.push({lat: position.coords.latitude, lng: position.coords.longitude });
    addMarkersToMap(map, markers);
    map.flyTo({center: { lat: markers[markers.length - 1].lat, lng: markers[markers.length - 1].lng },
      zoom: 18,
      speed: 0.7,
      curve: 1 });
    // fitMapToMarkers(map, markers);
  }
  $(document).ready(() => {
    getLocation()
  });
};

const initMapbox = () => {
  // const btn = document.getElementById("btn-mapbox");
  // console.log(btn);
  if (mapElement) {
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const markers = JSON.parse(mapElement.dataset.markers);
    const map = new mapboxgl.Map({
      center: {
        lat: markers[markers.length - 1].lat,
        lng: markers[markers.length - 1].lng
      },
      zoom: 20,
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10'
    });
    map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken, mapboxgl: mapboxgl }));
    addMarkersToMap(map, markers);
    // fitMapToMarkers(map, markers);
    getUserLocation(map, markers);
    // btn.addEventListener("click", (e) => {
    //   map.flyTo({center: { lat: markers[markers.length - 2].lat, lng: markers[markers.length - 2].lng }, zoom: 15 });
    // });
  }
};



export { initMapbox };
// const getUserLocation = (map, markers) => {
//   let x = document.getElementById("demo");
//   function getLocation() {
//     if (navigator.geolocation) {
//       return navigator.geolocation.getCurrentPosition(showPosition);
//     } else {
//       x.innerHTML = "Geolocation is not supported by this browser.";
//     }
//   }
//   function showPosition(position) {
//     x.innerHTML = "Latitude: " + position.coords.latitude +
//     "<br>Longitude: " + position.coords.longitude;
//     markers.push({lat: position.coords.latitude, lng: position.coords.longitude });
//     addMarkersToMap(map, markers);
//     fitMapToMarkers(map, markers);
//   }
//   $(document).ready(() => {
//     const location = getLocation();
//     // Salva o retorno do getLocation em uma variável
//     fetch('/spots/new', {
//       method: "post",
//       headers: {
//         accept: "application/JSON"
//       },
//       // Cria um POST pra rota /spots/new
//       // diz que o método é post
//       // especifica os headers da sua requisicao
//       body: JSON.stringfy(location)
//     }).then(res => res.json())
//       // mandou? pega o que rolou depois que tu mandou e transforma em json
//       .then(json => {
//         // Vai fazer alguma coisa com o retorno? Cabe aqui, sn só console
//         console.log(json);
//       })
//   })
// };

