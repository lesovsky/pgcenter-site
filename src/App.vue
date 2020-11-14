<template>
  <v-app id="app">
    <Navigation/>

    <router-view/>

    <Footer/>
  </v-app>
</template>

<script>
import Navigation from "@/components/Navigation";
import Footer from "@/components/Footer";

export default {
  name: 'App',
  components: {
    Navigation,
    Footer
  }
}
</script>

<style>
#app {
  /*font-family: Avenir, Helvetica, Arial, sans-serif;*/
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  /*text-align: center;*/
  /*color: #2c3e50;*/
  /*margin-top: 60px;*/
  /*background-color: black;*/
}
</style>
