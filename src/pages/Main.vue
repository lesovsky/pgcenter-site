<template>
  <div class="cs-background fill-height">
    <v-container fluid class="fill-height">
      <v-col size="12">
        <v-row justify="center">
          <p class="title text-center cs-title-margin cs-title-font">Working with PostgreSQL stats is now simpler than ever</p>
        </v-row>
        <v-row justify="center" class="mt-5">
          <v-btn
            depressed
            large
            color="orange darken-2"
            class="text-none title cs-title-font"
            href="https://github.com/lesovsky/pgcenter/releases"
          >
            Get pgCenter
          </v-btn>
        </v-row>
      </v-col>
    </v-container>
  </div>
</template>

<script>
export default {
  name: "Main"
}
</script>

<style scoped>
.cs-background {
  background: linear-gradient(to bottom, transparent 0%, black 100%),
  url(../assets/background.png);
  background-size: cover;
  background-position: top;
  margin-top: 80px;
}
.cs-title-margin {
  margin-top: 20vh;
}
.cs-title-font {
  color: #ffffff;
}
</style>
