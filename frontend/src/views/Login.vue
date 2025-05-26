<template>
  <div>
    <h2>Login</h2>
    <input v-model="username" placeholder="Username" />
    <input type="password" v-model="password" placeholder="Password" />
    <button @click="login">Login</button>
  </div>
</template>

<script>
import axios from 'axios';
export default {
  data() {
    return {
      username: '',
      password: ''
    };
  },
  methods: {
    async login() {
      const res = await axios.post('/api/v1/auth/login', {
        username: this.username,
        password: this.password
      });
      localStorage.setItem('token', res.data.token);
      this.$router.push('/dashboard');
    }
  }
}
</script>