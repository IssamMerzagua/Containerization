<template>
  <img alt="Vue logo" src="./assets/logo.png">
  <EncryptedMessage msg="Welcome to my app"/>
</template>

<script>
import EncryptedMessage from './components/EncryptedMessage.vue'

export default {
  name: 'App',
  components: {
    EncryptedMessage
  }
}

</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
