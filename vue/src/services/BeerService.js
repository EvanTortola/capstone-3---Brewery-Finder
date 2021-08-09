import axios from 'axios';

const http = axios.create({
    baseURL: "http://localhost:8080"
});

export default {
    getBeer() {
        return http.get('/beer')
        .then(response => this.beer = response)
    },

    addBeer(beer) {
        return http.post("/beer/addBeer", beer)
    },
    getBeerByBreweryId(breweryId) {
        return http.get(`/beer/${breweryId}`)
    },
    getBeerByBeerId(beerId) {
        return http.get(`/beer/beer/${beerId}`)
    }
}