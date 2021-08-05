<template>
    <div class="brew-card">
        <h1>{{ brewery.brewery_name }}</h1>
        <h2>{{ brewery.city }}</h2>
        <div>
            <img :src="brewery.image" />
        </div>
        <button>Fav</button>
    </div>  
</template>






<script>
import breweryService from '../services/BreweryService';

export default {
    name: 'brewery-card',

    data() {
        return {
            brewery: []
            
        }
    },
    created() {
        breweryService.getBreweries(this.$route.params.id).then(response => {
            this.brewery = response.data;
        })
    }

}
</script>




<style>
    .btn-circle.btn-xl {
            width: 180px;
            height: 180px;
            padding: 10px 16px;
            border-radius: 90px;
            font-size: 12px;
            text-align: center;
        }
    


</style> 