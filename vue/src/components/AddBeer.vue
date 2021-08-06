<template>
<div>
    <h1>Add Beer</h1>
  <form v-on:submit.prevent="submitForm" class="cardForm">
      <div class="status-message error" v-show="errorMsg !== ''">{{errorMsg}}</div>
      <div class="form-group">
          <label for="title">Beer Name</label>
          <input id="beerName" type="text" class="form-control" v-model="beer.name" autocomplete="off" />
      </div>
  </form>
  </div>
</template>

<script>
export default {
    name: 'add-beer'

}
</script>

<style>

</style>