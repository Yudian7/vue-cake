<template>
  <div class="app-home">
     <!--第一个：顶部导航条 学子商城-->
        <!--由于导航条公用,所以放在了共有页面App.中-->
     <!--第二个：轮播图-->
     <mt-swipe :auto="2500">
        <mt-swipe-item v-for="item in list" :key="item.id"> <!--key为关键字,以id进行排序-->
            <img :src="item.img_url" />
        </mt-swipe-item>
     </mt-swipe>
     <!--第三个：九宫格-->
      <ul class="mui-table-view mui-grid-view mui-grid-9">
		    <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3">
          <router-link to="/NewsList">
		        <img src="../../img/01.png" />
		            <div class="mui-media-body">
                 新品</div>
          </router-link>
        </li>
		            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3">
                  <router-link to="/GoodsList">
                        <img src="../../img/02.png" />
		                    <div class="mui-media-body">
                        生日</div></router-link></li>
		            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><router-link to="/ShopList">
		                    <img src="../../img/03.png" />
		                    <div class="mui-media-body">
                        儿童</div></router-link></li>
		            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><a href="#">
		                    <img src="../../img/04.png" />
		                    <div class="mui-media-body">
                        聚会</div></a></li>
		            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><a href="#">
		                     <img src="../../img/05.png" />
		                    <div class="mui-media-body">活动专区</div></a></li>
		            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><a href="#">
		                    <img src="../../img/06.png" />
		                    <div class="mui-media-body">新客专享</div></a></li>
		        </ul>
     
     <!--第3-1:添加两个小模块-->
     <div class="cakeInfo">
        <div class="cake">
          <img src="../../img/main01.jpg" alt="">
          <p class="title">新品尝新</p>
          <p class="title2">蛋糕新品推荐</p>
        </div>
        <div class="tap"></div>
        <div class="cake">
          <img src="../../img/main02.jpg" alt="">
          <p class="title">新客专享</p>
          <p class="title2">开启您的甜点之旅</p>
        </div>
      </div>
     <!--第四个：底部导航栏tabbar-->
  </div>  
</template>
<script>
 export default {
   created() {
      //当组件对象创建成功后即可发送ajax请求
      this.getImages();
   },
   methods:{
     getImages(){
       //完成一个功能,获取服务器端轮播图片
       //1:发送ajax请求
       var url = "http://127.0.0.1:3000/getImages";
       this.axios.get(url).then(result=>{
         this.list = result.data;
       })
       //2:获取返回数据保存list
     }
   },
   data(){
     return {
       list:[]
     }
   }
 }  
</script>
<style>
/*轮播图设置父元素高度*/
.app-home .mint-swipe{
  height:200px;
}
.app-home .mint-swipe img{
  width:100%;
}
/*九宫格 图片大小 dpr 2*/
.app-home .mui-grid-9 img{
  width:60px;
  height:60px;
}
/*九宫格  背景白色*/
.app-home .mui-grid-view.mui-grid-9{
  background-color:#fff;
}
.app-home .mui-grid-view.mui-grid-9 li{
  border:1;
}
.cakeInfo{
  display:flex;
  justify-content:space-between
}
.cakeInfo>.tap{
  width:2%;
}
.cake{
  box-shadow:0 0 6px 0 rgba(0,0,0,0.10);
  background:#fafafa;
  width:50%;
  height:180px;
  border-radius:8px;
  margin-top:5px;
  justify-content:space-between
}
.cake>img{
  width:100%;
  height:100px;
  border-radius:8px 8px 0 0;
  margin-bottom:5px;
  float:right;
}
.cake .title{
  font-size:18px;
  letter-spacing:5px;
  color:#724228;
  text-align:center;
}
.cake .title2{
  text-align:center;

}
</style>