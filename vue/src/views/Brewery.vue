<template>
<div>
    <div>
        <brewery-detail />
    </div>
    <div>
        <brewer-nav-bar v-if="$store.state.user.authorities[0].name == 'ROLE_BREWER'"/>
    </div>
</div>
 
</template>

<script>

import BreweryDetail from '@/components/BreweryDetail.vue'
import brewerNavBar from '@/components/BrewerNavBar'
export default {

    components: {
        BreweryDetail,
        brewerNavBar
    }
}
</script>
       

