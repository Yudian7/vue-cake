<template>
  <div class="app-logout">
    <h3>退出登录</h3>
    <mt-button @click="logout"></mt-button>
  </div>
</template>
<script>
import  {Toast} from "mint-ui";
  export default{
    data(){
      return {}
    },
  methods:{
    logout(){
      var url="http://127.0.0.1:3000";
      this.axios.get(url).then(result=>{
        Toast("退出成功");
      })
    }
  }
}
</script>