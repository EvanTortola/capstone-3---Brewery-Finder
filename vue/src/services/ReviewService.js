import axios from 'axios';

const http = axios.create({
    baseURL: "http://localhost:8080"
});

export default {
    getReviewByBreweryId(breweryId) {
        return http.get(`/review/${breweryId}`)
        .then(response => this.beer = response)
    },

    addReview(review) {
        return http.post("/addReview", review)
    }

    
}