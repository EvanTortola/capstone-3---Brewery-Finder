import axios from 'axios';

const http = axios.create({
    baseURL: "http://localhost:8080"
});

export default {
    getBreweries() {
        return http.get('/breweries')
        .then(response => this.breweries = response)
    },

    getBreweryById(id) {
        return http.get(`/breweries/${id}`)
        .then(response => this.breweries = response)
    },
    
    addBrewery(brewery) {
        return http.post('/breweries', brewery)
    }
}