import axios from 'axios';

const http = axios.create({
    baseURL: "http://localhost:8080"
});

export default {
    getBeer() {
        return http.get('/beer')
        .then(response => this.beer = response)
    }
}