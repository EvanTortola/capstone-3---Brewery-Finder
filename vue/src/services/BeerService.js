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
        return http.post("/beer/new", beer)
    },
    getBeerByBreweryId(breweryId) {
        return http.get(`/beer/${breweryId}`)
    }
}