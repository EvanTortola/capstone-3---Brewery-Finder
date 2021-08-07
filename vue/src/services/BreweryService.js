import axios from 'axios';

const http = axios.create({
    baseURL: "http://localhost:8080"
});

export default {
    getBreweries() {
        return http.get('/breweries')
        .then(response => this.breweries = response)
    },

    getBreweryById(breweryId) {
        return http.get(`/breweries/${breweryId}`)
        .then(response => this.brewery = response)
    },
    
    addBrewery(brewery) {
        return http.post('/breweries/new', brewery)
    },
}