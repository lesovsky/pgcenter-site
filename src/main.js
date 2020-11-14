import Vue from 'vue'
import VueGtag from 'vue-gtag'
import App from './App.vue'
import router from './plugins/router/router'
import vuetify from './plugins/vuetify/vuetify'

Vue.config.productionTip = false

process.env.VUE_APP_RUNTIME_MODE === 'development'
  ? Vue.config.devtools = true
  : Vue.config.devtools = false;

Vue.use(VueGtag, {
  config: { id: 'G-MGYHZZV1WE' }
});

new Vue({
  router,
  vuetify,
  render: h => h(App),
}).$mount('#app')
