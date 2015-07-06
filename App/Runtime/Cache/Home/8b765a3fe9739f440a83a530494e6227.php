<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Execise Bootstrap</title>
	<!-- 引入css -->
	<link href="<?php echo (CSS_URL); ?>bootstrap.css" rel="stylesheet">
  <link href="<?php echo (CSS_URL); ?>style.css" rel="stylesheet">
    <link rel="icon" href="<?php echo (IMG_URL); ?>logo.ico" type="image/x-icon">

</head>

<body>

<!-- 容器的开始 -->
<div class="container">
<!-- 页面头部的开始 -->
  <div class="row " style="margin-top:20px;margin-bottom:20px;background:#A5C48E; padding:50px;">
      <div class="col-md-4 col-sm-4 col-xs-4 pull-left">
        <a href="/SmallRain/index.php/Home/Index/Index/index"> <span id="title_website"> 中华军事网  </span></a>
      </div>
      <div class="col-md-4 col-sm-4 col-xs-4  ">
          
      </div>
      <div class="col-md-4 col-sm-4 col-xs-4 pull-right text-right">
          <span id="user_font"><button class="btn btn-lg btn-info">小雨滴</button></span>
      </div>

  </div>
<!-- 页面头部的结束 -->
      <div class="row img_opacity_detail">
      <!-- 左边主题内容区开始 -->
      <div class="col-md-8 col-sm-8 col-xs-12 "  style="background:#EDE8E8 ;padding-bottom:40px;">
      <!-- 文章的标题部分 -->
            <div class="col-md-12 text-center">
               <h1>中美关系的研究</h1>
               <hr/>
               <div class="col-md-4 col-sm-4 col-xs col-md-offset-5 col-sm-offset-5 col-xs-offset-5 text-right">
                 <h4>2015/7/5 &nbsp;&nbsp;&nbsp; 作者:阳光</h4>
               </div>
            </div>
      <!-- 文章的图片 -->
      <img class="img-responsive" src="<?php echo (IMG_URL); ?>detail.jpg"/>
      <!-- 文章的主题部分 -->
      <br/>
      <br/>

      <p class="passage_contents">
      中国位于亚洲东部，太平洋西岸，陆地面积约960万平方千米，东部和南部大陆海岸线1.8万多千米，内海和边海的水域面积约470多万平方千米；海域分布有大小岛屿7600多个，其中台湾岛最大；同14国接壤，与8国隔海相望；共34个省级行政区划，分别是23个省、4个直辖市、5个自治区、2个特别行政区；首都北京。 [1] 
中国是一个以华夏文明为主体、以汉族为主体民族的统一多民族国家。中国境内56个民族统称为中华民族，龙是中华民族的象征。距今约5000年前，以中原地区为中心开始出现规模较大的部落。约公元前21世纪，中国第一个朝代夏朝建立，此后历经商、周、秦、汉、晋、隋、唐、宋、元、明、清等朝代，直至20世纪初辛亥革命后，君主专制政体退出中国历史，取而代之的是共和政体。1912年1月1日中华民国成立，1949年10月1日中华人民共和国成立。
作为五千年历史的文明古国，中国孕育出灿烂的中华文化，在语言、文字、建筑、饮食、哲学、文学、医学、历法、戏曲、音乐、绘画等各方各面都有显著的特色，并且强烈影响了周边国家。
      </p>
      <!-- 富文本编辑器开始 -->
      <hr/>
      <h3>发表评论</h3>
      <textarea class="form-control " rows="5"></textarea>
      <br/>

      <button class="btn btn-success">发表评论</button>
      <hr/>
      <!-- 富文本编辑器结束 -->

      <!-- 评论部分的开始 -->
       <b style="font-size: 24px;color: #EA4D10; margin-bottom: -1px;">热门评论</b>
        <hr>
      <!-- 第1个评论 -->
        <div class="col-sm-12 col-md-12 col-lg-12  ">
           <div class="col-sm-9 col-md-9 col-lg-9 z-top" >
              <b class="z-name">小雨滴</b> &nbsp;&nbsp;&nbsp;
              <span class="z-time">2015/7/6</span> 
           </div> 
            <div class="col-sm-3 col-md-3 col-lg-3 text-right  z-top" >
            1  <b class="z-name">Floor</b>
            </div>
            <hr/>
           <div class="z-content col-sm-12 col-md-12 col-lg-12">
              这段文字just for testing ! 
           </div>
        </div>
      <!-- 第2个评论 -->

        <div class="col-sm-12 col-md-12 col-lg-12  ">
           <div class="col-sm-9 col-md-9 col-lg-9 z-top" >
              <b class="z-name">小雨滴</b> &nbsp;&nbsp;&nbsp;
              <span class="z-time">2015/7/6</span> 
           </div> 
            <div class="col-sm-3 col-md-3 col-lg-3 text-right  z-top" >1<b class="z-name">Floor</b></div>
           <div class="z-content col-sm-12 col-md-12 col-lg-12">
              这段文字justtest 
           </div>
        </div>

      <!-- 第3个评论 -->
        <div class="col-sm-12 col-md-12 col-lg-12  ">
           <div class="col-sm-9 col-md-9 col-lg-9 z-top" >
              <b class="z-name">小雨滴</b> &nbsp;&nbsp;&nbsp;
              <span class="z-time">2015/7/6</span> 
           </div> 
            <div class="col-sm-3 col-md-3 col-lg-3 text-right  z-top" >1<b class="z-name">Floor</b></div>
           <div class="z-content col-sm-12 col-md-12 col-lg-12">
              这段文字justtest 
           </div>
        </div>
      <!-- 评论部分的结束 -->
      </div>
      <!-- 左边主题内容区结束 -->
      <!-- 中间一个展位的开始 -->

      <!-- 中间一个展位的结束 -->
      <div class="col-md-1 col-sm-1 hidden-xs"  style="">
      
      </div>
      <!-- 右边区域的开始 -->
      <div class="col-md-3 col-sm-3 hidden-xs " style="background:#CEE8B9 ;padding-bottom:20px;">
      <br/>
       <img src="<?php echo (IMG_URL); ?>right_1.jpg"class="img-responsive center-block" /> 
      <br/>
      <p class="text-center">This is the first pic</p>
       <hr/>
       <img src="<?php echo (IMG_URL); ?>right_1.jpg"class="img-responsive center-block" /> 
       <br/>
      <p class="text-center">This is the first pic</p>
       <hr/>       
       <img src="<?php echo (IMG_URL); ?>right_1.jpg"class="img-responsive center-block" />
       <br/>
      <p class="text-center">This is the first pic</p>
       <hr/>
      </div>
</div>
<!-- 右边区域的结束 -->

</div>
<!-- 容器的结束 -->
<br/>
<br/>
<br/>

<!-- 底部页脚的开始 -->
<!-- 底部页脚的开始 -->
<div class="img_opacity foot_bar row foot_font_size" style="height:352px;background:#2d3237;">
  <div class="col-md-6 col-sm-6 col-xs-6 hidden-sm hidden-xs "   >
  <!-- 第一排图片开始 -->
    <div class="col-md-12 ">
      <div class="col-md-12 col-sm-12 col-xs-12">
         <h3>小雨滴 团队成员</h3>
         <br/>
      </div>
    <br/>
      <div class="img-responsive col-md-4 col-sm-4 col-xs-4">
        <img src="<?php echo (IMG_URL); ?>person1.jpg" class="img-responsive"/>
      </div>
      <div class="img-responsive col-md-4 col-sm-4 col-xs-4">
        <img src="<?php echo (IMG_URL); ?>person2.jpg" class="img-responsive"/>
      </div>
      <div class="img-responsive col-md-4 col-sm-4 col-xs-4">
        <img src="<?php echo (IMG_URL); ?>person3.jpg" class="img-responsive"/>
      </div>

    </div>
  <!-- 第一排图片结束 -->
  <!-- 第二排图片 开始-->
    <div class="col-md-12 ">

    <br/>
      <div class="img-responsive col-md-4 col-sm-4 col-xs-4">
        <img src="<?php echo (IMG_URL); ?>person4.jpg" class="img-responsive"/>
      </div>
      <div class="img-responsive col-md-4 col-sm-4 col-xs-4">
        <img src="<?php echo (IMG_URL); ?>person5.jpg" class="img-responsive"/>
      </div>
      <div class="img-responsive col-md-4 col-sm-4 col-xs-4">
        <img src="<?php echo (IMG_URL); ?>person6.jpg" class="img-responsive"/>
      </div>

    </div>
    <!-- 第二排图片结束 -->
  </div>
  <!-- 页脚右边内容的开始 -->
  <div class="col-md-6 col-sm-12 col-xs-12" >
      <div class="col-md-12 col-sm-12 col-xs-12">
         <h3>联系方式</h3>
         <br/>
         <hr/>
      </div>
  <br/>
     <div class="col-md-12 col-sm-12 col-xs-12">
       <span>
           邮箱 : lovephp@foxmail.com 
  <hr style="border:1px solid gray" />
       </span>
     </div>
  
     <div class="col-md-12 col-sm-12 col-xs-12">
       <span>
          联系方式 : 15769207754  
  <hr style="border:1px solid gray" />
       </span>
     </div>
   
     <div class="col-md-12 col-sm-12 col-xs-12">
       <span>
          友情链接: www.lovezbs.com 
       </span>
     </div>


  </div>
  <hr style="border:1px solid #2d3237" />
  <div class="col-md-12 col-sm-12 col-xs-12 text-center">
     <span>
      <br/>
        版权所有 ©  2015--2020, 侵权必究 
     </span>
   </div>
</div>
<!-- 底部页脚的结束 -->




</body>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="<?php echo (JS_URL); ?>jquery-1.11.1.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="<?php echo (JS_URL); ?>bootstrap.min.js"></script>

</html>