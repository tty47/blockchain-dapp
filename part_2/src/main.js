import Vue from 'vue'
import App from './App.vue'
import { CounterContract} from './counter-contract.js'

Vue.config.productionTip = false

// inyect the counter from our CounterContract
Vue.prototype.$counter = CounterContract;

new Vue({
  render: h => h(App),
}).$mount('#app')
