<template>
  <div id="container">
    <nav-bar />
    <router-view  class="routerView" />
   
    
  </div>
</template>

<script>
import navBar from '@/components/NavBar'


export default {
  components: {
    navBar,
      
  }
  
  
}
</script>

<style>

</style>
