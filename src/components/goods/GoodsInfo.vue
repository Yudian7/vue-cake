<template>
  <div class="app-goodsinfo">
    <!--轮播图-->
    <swiper-box :list="list"></swiper-box>
    <!--商品信息-->
    <div class="mui-card">
      <div class="mui-card-header">
         {{info.name}}
      </div>
      <!--添加商品图片-->
      <div class="cake_img">
        <img src="http://127.0.0.1:3000/img/birth/01.jpg" alt="">
      </div>
      <div class="mui-card-content">
        <div class="mui-card-inner">
           <div class="price">
              市场价:<del>{{info.price}}</del>
              销售价:<span class="now">{{info.price/2}}</span>
           </div>
           购买数量:
           	<div class="mui-numbox" data-numbox-min='1' data-numbox-max='9'>
					<button class="mui-btn mui-btn-numbox-minus" type="button" @click="goodsSub">-</button>
					<input id="test" class="mui-input-numbox" type="number" value="1" v-model="val" />
					<button class="mui-btn mui-btn-numbox-plus" type="button" @click="goodsAdd">+</button>
				</div>
        </div>
      </div>
      <div  class="mui-card-footer">
        <mt-button type="primary" size="small">立即购买</mt-button>
        <mt-button type="primary" size="small" @click="addCart">加入购物车</mt-button>
      </div>      
    </div>
    <!--商品参数-->
    
  </div>  
</template>
<script> 
  import {Toast} from "mint-ui";
  //1:引入子组件
  import swipe from "../sub/swiper.vue";
  //2:引入mui 组件js文件
  //import mui from "../../lib/mui/js/mui.js";
  export default {
    components:{
      "swiper-box":swipe
    },
    created() {
      //console.log("list组件参数:"+this.id);
      this.getImageList();
      this.getGoodsInfo();
    },
    data(){
      return  {
        id:this.$route.params.id,
        list:[],
        val:1,
        info:{}
      }
    },
    methods:{
      getGoodsInfo(){
        // 1:获取参数 id
        var id=this.id;
        // 2:发送ajax请求获取商品信息
        var url="http://127.0.0.1:3000/getProduct";
        url+="?id="+id;
        this.axios.get(url).then(result=>{
          //console.log(result.data);
          this.info=result.data.data;
        })
        // 3:保存显示模板
      },
      addCart(){
        // 1:获取参数 uid=1 pid price count
        var uid=1; //当前登录用户
        var pid=this.id; //商品编号
        var count=this.val; //商品数量
        var price=99;
        // 2:发送ajax请求将数据发送服务器
        var url="http://127.0.0.1:3000";
        url+="/addCart";
        this.axios.get(url,{
          params:{
            uid:uid,
            pid:pid,
            count:count,
            price:price
          }
        }).then(result=>{
          if(result.data.code>0){
            this.$store.commit("increment");
            Toast(result.data.msg);
          }else{
            Toast(result.data.msg)
          }
        });
        // 3:返回结果
        // 4:显示提示消息
      },
      goodsSub(){
        if(this.val > 1){
           this.val--;
        }
      },
      goodsAdd(){
        if(this.val <= 998){
            this.val++;
        }
      },
      getImageList(){
         var url = "http://127.0.0.1:3000/";
         url +="getImages";
         this.axios.get(url).then(result=>{
           this.list = result.data;
         });
         //console.log(this.list);?????
       } 
    }
  }  
</script>
<style>
.cake_img{
  width:100%;
  height:266px;
  border:1px solid red;
  text-align:center;
}
.cake_img>img{
  width:240px;
  height:264px;
}
</style>