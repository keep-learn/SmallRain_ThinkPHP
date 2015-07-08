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
        <a href="/SmallRain/index.php/Home/Index/Index/index">  
<img src="<?php echo (IMG_URL); ?>logo2.png">
          </a>
      </div>
      <div class="col-md-4 col-sm-4 col-xs-4  ">
          
      </div>
      <div class="col-md-4 col-sm-4 col-xs-4 pull-right text-right">
          <span id="user_font">
          <a href="/SmallRain/index.php/Home/Index/index">
          <button class="btn btn-lg btn-info"><?php echo ($login_user_name); ?></button>
          </a>
          </span>
      </div>

  </div>
<!-- 页面头部的结束 -->
      <div class="row img_opacity_detail">
      <!-- 左边主题内容区开始 -->
      <div class="col-md-8 col-sm-8 col-xs-12 "  style="background:#EDE8E8 ;padding-bottom:40px;">
      <!-- 文章的标题部分 -->
            <div class="col-md-12 text-center">
               <h3><?php echo ($pass_info["title"]); ?></h3>
               
               <div class="col-md-4 col-sm-4 col-xs col-md-offset-5 col-sm-offset-5 col-xs-offset-5 text-right">
                 <h5><span class="glyphicon glyphicon-calendar"></span>  &nbsp;&nbsp;  <?php echo ($pass_info["time"]); ?> &nbsp;&nbsp;
                <span class="glyphicon glyphicon-user"></span>
                 <?php echo ($pass_info["user"]); ?></h5> <hr/>
               </div>
            </div>
      <!-- 文章的图片 -->
      <!-- <img class="img-responsive" src="<?php echo (IMG_URL); ?>detail.jpg"/> -->
      <!-- 文章的主题部分 -->
      <br/>
      <br/>

      <p class="passage_contents">
            <?php echo (htmlspecialchars_decode($pass_info["content"])); ?>
      </p>
      <!-- 富文本编辑器开始 -->
      <hr/>
      <input type="hidden" id="pass_id" value="<?php echo ($pass_id); ?>"/>
      <!-- 添加评论的url -->
      <input type="hidden" id="add_comment_url" value="<?php echo (ADD_COMMENTS_URL); ?>"/>
      <h3 style="color:green;"><span class="glyphicon glyphicon-list"></span> &nbsp;&nbsp;<b>发表评论</b></h3>
      <textarea id="say_words" class="form-control " rows="5"></textarea>
      <br/>

      <button id="btn_say_word" class="btn btn-success">发表评论</button>
      <hr/>
      <!-- 富文本编辑器结束 -->

      <!-- 评论部分的开始 -->
       <b style="font-size: 24px;color: #EA4D10; margin-bottom: -1px;">热门评论</b>
        <hr>
      <!-- 第1个评论 -->
<?php if(is_array($info)): $i = 0; $__LIST__ = $info;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><div class="col-sm-12 col-md-12 col-lg-12  ">
           <div class="col-sm-9 col-md-9 col-lg-9 z-top" >
              <span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;
               <b class="z-name"><span style="color:#EA4D10">User ID</span> : <?php echo ($v["user_id"]); ?> </b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <span class="glyphicon glyphicon-calendar"></span>
              <span class="z-time "> &nbsp;<?php echo ($v["time"]); ?></span> 
           </div> 

            <div class="col-sm-3 col-md-3 col-lg-3 text-right  z-top" >
              <span class="glyphicon glyphicon-object-align-bottom"></span> &nbsp;&nbsp;
            <?php echo ($v["ip"]); ?>  <b class="z-name"><span style="color:#EA4D10">IP</span></b>
            </div>
            <hr/>
           <div class="z-content col-sm-12 col-md-12 col-lg-12" style="text-indent:2em;padding-top:15px;padding-bottom:6px;">
              <?php echo ($v["say"]); ?>
           </div>
        </div>
        <div class="col-md-12">
            <hr style="border:1px solid #6FB96F"/>
        </div><?php endforeach; endif; else: echo "" ;endif; ?>
<div id="add_comment" class="col-sm-12 col-md-12 col-lg-12 ">
  
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
           <span class="glyphicon glyphicon-envelope"></span> : lovephp@foxmail.com 
  <hr style="border:1px solid gray" />
       </span>
     </div>
  
     <div class="col-md-12 col-sm-12 col-xs-12">
       <span>
          <span class="glyphicon glyphicon-earphone"></span> : 15769207754  
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

<!-- 发表评论的js -->
<script type="text/javascript">
    $(function(){
          $('#btn_say_word').click(function(){
            // 获取作者发的内容
              $say_words=$("#say_words").val();
              // alert("The words is "+$say_words);
              // 获取文章的id
              $pass_id=$("#pass_id").val();
              // 添加文章的url
              $add_comment_url=$("#add_comment_url").val();
              // alert("pass_id is "+$pass_id);
              // 获取用户的id  /都从控制器中来获得信息
              // 获取时间  /都从控制器中来获得信息
              // 获取ip   /都从控制器中来获得信息
              // Ajax 插入到数据库
              $.ajax({
                type:"post",
                url :$add_comment_url,
                data:"say_words="+$say_words+"&pass_id="+$pass_id,
                success:function(data){
                    alert("评论发表 成功 ! ");
                    $("#add_comment").append("<b style='color:#EA4D10;font-size:24px;'>发表的内容是 :</b> <b style='color:green;font-size:24px;'>"+$say_words);
                }
              });
              // 显示发表的评论
          });
    });
</script>
<!-- 获取所有的图片,添加自适应的样式 -->
<script type="text/javascript">
$(function(){
    $("img").addClass("img-responsive");
});

</script>
</html>