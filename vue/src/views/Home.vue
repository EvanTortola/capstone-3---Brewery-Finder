<template>
<div>
    <brewery-card/>
    <admin-nav-bar  v-if="$store.state.user.authorities[0].name == 'ROLE_ADMIN'"/>
    <green-bar  v-if="$store.state.user.authorities[0].name != 'ROLE_ADMIN'"/>
</div>  
</template>

<script>

import BreweryCard from '@/components/BreweryCard.vue';
import adminNavBar from '@/components/AdminNavBar'
import greenBar from '@/components/GreenBar'

export default {
  components: {
    BreweryCard,
    adminNavBar,
    greenBar

  },
  name: "home"
};
</script>
