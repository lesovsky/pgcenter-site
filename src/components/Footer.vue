<template>
  <v-footer
    app
    absolute
    color="transparent"
  >
    <v-col
      class="caption text-center grey--text text--darken-2 pa-0"
    >
      {{ new Date().getFullYear() }}, pgCenter
    </v-col>
  </v-footer>
</template>

<script>
export default {
  name: "Footer"
}
</script>

<style scoped>

</style>
