<template>
    <div>
        <brewery-detail />
        <brewer-nav-bar v-if="$store.state.user.authorities[0].name == 'ROLE_BREWER'"/>
        <green-bar v-if="$store.state.user.authorities[0].name != 'ROLE_BREWER'" />
    </div>
 
</template>

<script>

import BreweryDetail from '@/components/BreweryDetail.vue'
import brewerNavBar from '@/components/BrewerNavBar'
import greenBar from '@/components/GreenBar'
export default {

    components: {
        BreweryDetail,
        brewerNavBar,
        greenBar
    }
}
</script>
       

