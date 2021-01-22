<template>
  <div>
      <button type="button">-</button>
      <span>Account: {{ account }} </span>
      <button type="button">+</button>
  </div>
</template>

<script>
export default {
    data(){
        return {
            account: 1
        }
    },
    methods: {
        decrement() {

        },
        increment() {

        },
    }
}
</script>

<style>

</style>