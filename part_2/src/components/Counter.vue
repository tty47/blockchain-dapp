<template>
  <div>
      <button type="button" @click="decrement">-</button>
      <span>Account Balance: <b>{{ account }}</b> ETH</span>
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
            // This was the first getAccount values, before event
            //.then(() => {
            //    this.getAccount()
            });
        },
        increment() {
            //console.log("increment");
            this.$counter.methods.increment().send({
                from: window.ethereum.selectedAddress
            // This was the first getAccount values, before event
            //.then(() => {
            //    this.getAccount()
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

        this.$counter.events.ChangedAccount({}, (err, res) => {
            //console.log(res.returnValues._account);
            this.account = res.returnValues._account;
        })
    }
}
</script>

<style>

</style>