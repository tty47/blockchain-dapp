<template>
  <div>
      <button type="button" @click="decrement">-</button>
      <span>Account: {{ account }} </span>
      <button type="button" @click="increment">+</button>
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
            //console.log("decrement");
            // with send, we are going to modify the blockchain
            // so, we have to add the account which we will use
            this.$counter.methods.decrement().send({
                from: window.ethereum.selectedAddress
            })
            .then(() => {
                this.getAccount()
            });
        },
        increment() {
            //console.log("increment");
            this.$counter.methods.increment().send({
                from: window.ethereum.selectedAddress
            })
            .then(() => {
                this.getAccount()
            });
        },
        getAccount() {
            this.$counter.methods.account().call()
            .then(data => {
            // store the value received into the this.account var
            this.account = data;
        });
        },
    },
    created(){
        //console.log(this.$counter)
        //console.log(this.$counter.methods.account().call())

        // in this part, we create the call to the blockchain,
        // we wait until the response is received
        // call method is only to READ the blockchain
        this.$counter.methods.account().call()
        .then(data => {
            //console.log(data);
            // store the value received into the this.account var
            this.account = data;
        });
    }
}
</script>

<style>

</style>