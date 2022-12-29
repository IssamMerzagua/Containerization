<template>
  <div class="hello">
    <h1>{{ msg }}</h1>

  </div>

  <div id="app">
  <h4>Fonction SHA256</h4>
  <form action="#" method="post">
    Entez un texte :<br/>
    <input type="text" size="25" v-model="message" /><br/><br/>
    Chaîne de hachage (SHA256) :
    <button type="button" v-on:click="sha256Function()" > Go </button> <br/><br/>
    {{encryptedMessage}}
    <br/>
  </form>
  </div>

</template>
<script>
import {sha256} from "js-sha256";
export default {
  name: 'EncryptedMessage',
  props: {
    msg: String
  },
  data()
  {
    return {
        message:null,
        encryptedMessage:null
    }
  },
  // To bad that fonction doesn't save the data somewhere :-(
  methods: {
    sha256Function() {
      this.encryptedMessage= sha256(this.message);
    }
  }
}
</script>


<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h3 {
  margin: 40px 0 0;
}
ul {
  list-style-type: none;
  padding: 0;
}
li {
  display: inline-block;
  margin: 0 10px;
}
a {
  color: #42b983;
}

#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
