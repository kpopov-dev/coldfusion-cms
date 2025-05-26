<template>
  <div>
    <h2>Dashboard</h2>
    <ul>
      <li v-for="item in content" :key="item.id">{{ item.title }}</li>
    </ul>
  </div>
</template>

<script>
import axios from 'axios';
export default {
  data() {
    return {
      content: []
    };
  },
  async mounted() {
    const token = localStorage.getItem('token');
    const res = await axios.get('/api/v1/content', {
      headers: { Authorization: `Bearer ${token}` }
    });
    this.content = res.data;
  }
}
</script>