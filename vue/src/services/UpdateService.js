import axios from 'axios';

// const http = axios.create({
//     baseURL: "http://localhost:8080"
// });

export default {
    sendUpdate(update) {
        return axios.post('/addUpdate', update)
    },

    likeBrewery(brewUser) {
        return axios.post('/addBU', brewUser)
    },

    getUpdates(userId) {
        return axios.get(`/updates/${userId}`)
    }
}
