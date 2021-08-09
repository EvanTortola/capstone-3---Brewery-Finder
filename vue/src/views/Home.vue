<template>
<div>
    <brewery-card/>
    <admin-nav-bar  v-if="$store.state.user.authorities[0].name == 'ROLE_ADMIN'"/>
</div>  
</template>

<script>

import BreweryCard from '@/components/BreweryCard.vue';
import adminNavBar from '@/components/AdminNavBar'

export default {
  components: {
    BreweryCard,
    adminNavBar

  },
  name: "home"
};
</script>
