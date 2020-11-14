<template>
  <v-app-bar app absolute dense flat text height="80px" color="transparent">
    <v-img
      :src="require('../assets/pgcenter_logo.png')"
      class="ml-5"
      max-height="80"
      max-width="250"
    />

    <v-spacer />

    <div
      v-for="link in links"
      :key="link.name"
      class="hidden-md-and-down"
    >
      <router-link
        v-if="link.internal"
        class="cs-link"
        :to="link.link"
      >
        {{ link.name }}
      </router-link>
      <a
        v-else
        class="subtitle-1 cs-link" :href="link.link"
      >
        {{ link.name }}
      </a>
    </div>
  </v-app-bar>
</template>

<script>
export default {
  name: "Navigation",
  data() {
    return {
      links: [
        {
          name: 'Documentation',
          link: 'https://github.com/lesovsky/pgcenter/tree/master/doc',
          internal: false
        },
        {
          name: 'Github',
          link: 'https://github.com/lesovsky/pgcenter',
          internal: false
        },
      ]
    }
  }
}
</script>

<style scoped>
.cs-link {
  /* decorates 'a href' style - removes underscore and default blue color */
  text-decoration: none;
  color: rgba(0,0,0,0.87);
  cursor: pointer;
  /* 20px is equal to mx-5 */
  margin-left: 20px;
  margin-right: 20px;
}
</style>
