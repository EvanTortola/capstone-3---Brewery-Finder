import axios from 'axios';

const http = axios.create({
    baseURL: "http://localhost:8080"
});

export default {
    getReviewByBeerId(beerId) {
        return http.get(`/reviews/${beerId}`)
        
    },

    addReview(review) {
        return http.post("/addReview", review)
    }

    
}