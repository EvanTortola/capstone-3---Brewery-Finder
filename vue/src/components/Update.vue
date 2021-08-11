<template>
<div>
    <div v-for="update in updates" v-bind:key="update.updateId">
      <h4>{{update.breweryName}}</h4>
      <p>{{update.update}}</p>
    </div>
  </div>
</template>

<script>
import updateService from "../services/UpdateService"
export default {
    name: "update",

    data() {
        return {
            updates: []
        }
    },

    methods: {
        getUpdates() {
            updateService
            .getUpdates(this.$store.state.user.id)
            .then(response => {
                this.updates = response.data;
            })
        }
    },

    created() {
        this.getUpdates();
    }

}
</script>

<style>

</style>