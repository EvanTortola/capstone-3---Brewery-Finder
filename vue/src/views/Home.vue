<template>
  <div class="home  hero-img vw-100 vh-100">
    <brewery-card/>
  </div>
</template>

<script>

import BreweryCard from '@/components/BreweryCard.vue';

export default {
  components: {
    BreweryCard

  },
  name: "home"
};
</script>
