<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Execise Bootstrap</title>
	<!-- 引入css -->
	<link href="<?php echo (CSS_URL); ?>bootstrap.css" rel="stylesheet">
	<link href="<?php echo (CSS_URL); ?>style.css" rel="stylesheet">
	<link rel="icon" href="<?php echo (IMG_URL); ?>favicon.ico" type="image/x-icon">

</head>
<style>
.item_background{
	background: url("<?php echo (IMG_URL); ?>bg5.jpg");
}
</style>
<body>

<!-- 页面总容器的开始 -->
<div class="container">
<!-- 左边的导航区开始-->

	<div  class="col-md-3 col-sm-3 hidden-xs bg" style="background:url('<?php echo (IMG_URL); ?>bg8.jpg')">
	<hr/>
		<div  class="col-md-12 scrollnav"  id="scrollnav">
		<a  date-scroll="#team" href="">
				<img class="img-responsive center-block left_width" style="opacity:1.0;filter:Alpha(opacity=100);"  src="<?php echo (IMG_URL); ?>logo_team.png"/>
		</a>
		</div>
	<hr/>
<!-- 实用工具开始 -->
		<div class="col-md-12  text-center" style="margin-top:20px;">
			<div class=" tool  col-md-8  col-md-offset-2  "  >
			<h4><span class="glyphicon glyphicon-briefcase"></span>&nbsp;&nbsp;天气预报</h4>
		
			<div class=" text-center ">
				<h6><?php echo ($curr_time); ?></h6>
				<h6><?php echo ($city); ?>   </h6>
				<h6><?php echo ($temprature); ?></h6>
				<h6><img src="<?php echo ($weather_img); ?>"/></h6>
	
			</div>
			</div>
		</div>
<!-- 使用工具结束 -->

<!-- 导航栏目开始 -->
		<div class="col-md-12 scrollnav nav_font"   id="scrollnav">
		<a  class="col-md-offset-2 col-md-8 " href="" date-scroll="#one">
			
					<span class="glyphicon glyphicon-triangle-right" aria-hidden="true"></span> 
					&nbsp;&nbsp;
					军情
			
		 </a>
		 <a class="col-md-offset-2 col-md-8 " href="" date-scroll="#two">
					<span class="glyphicon glyphicon-triangle-right" aria-hidden="true"></span> 
					&nbsp;&nbsp;			 
					国际
			 
		</a>
			<a  class="col-md-offset-2 col-md-8  "  href="" date-scroll="#three">
					<span class="glyphicon glyphicon-triangle-right" aria-hidden="true"></span> 
					&nbsp;&nbsp;			 
				 装备
			 
			 </a>
			 <a  class="col-md-offset-2  col-md-8  "  href="" date-scroll="#four">
					<span class="glyphicon glyphicon-triangle-right" aria-hidden="true"></span> 
					&nbsp;&nbsp;			 
					军史
			 
			</a>

		</div>
<!-- 导航栏目结束 -->
	</div>
<!-- 左边的导航区结束-->
<!-- 右边的内容开始 -->
<div  class="col-md-9 col-sm-9 col-xs-12 col-sm-offset-3 col-md-offset-3 bg2">
<!-- 登录注册开始 -->
	<div class="row text-center" style="margin-top:20px;">
			<div class="col-md-3 text-center ">
			<img src="<?php echo (IMG_URL); ?>logo2.png">
			<!-- <span id="title_website"> 中华军事网</span> &nbsp;&nbsp;&nbsp; -->

			</div>
			<div class="col-md-6 pull-right text-center" >
			<a href="<?php echo U('Home/Admin/index');?>">
				<button class="btn btn-info"><b>小雨滴团队</b> 专用添加内容按钮</button>
			</a>
				 <a href="/Smallrain/index.php/Home/Index/login">
				 <button class="btn btn-success">
					<?php echo ($login_user_name); ?>
				 </button>
				 </a>
				 <a href="/Smallrain/index.php/Home/Index/register"><button class="btn btn-success">注册</button></a>
			</div>
	</div>
	<hr style="border:2px solid green"/>
<!-- 登录注册结束 -->

<!-- 具体内容的实现 开始-->
<div class="col-md-12"  >

<div class="col-md-12"    >
<!-- 轮播图开始 -->
	<div  id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="<?php echo (IMG_URL); ?>1.jpg" alt="...">
      <div class="carousel-caption">
        Hello world , this is the first pic
      </div>
    </div>
    <div class="item">
      <img src="<?php echo (IMG_URL); ?>2.jpg" alt="...">
      <div class="carousel-caption">
        Second pic , this is the pic 
      </div>
    </div>
    <div class="item">
      <img src="<?php echo (IMG_URL); ?>3.jpg" alt="...">
      <div class="carousel-caption">
        Third pic , this is the pic 
      </div>
    </div>
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<!-- 轮播图结束 -->
</div>



<!-- 第 1 个导航条 -->
	<div id="one" class=" img_opacity  col-md-12 item_background" style="margin-top:30px;border:0px solid green;">
	 	<div class="col-md-12" >

	 		 <h2>
					<span class="glyphicon glyphicon-facetime-video" aria-hidden="true"></span> 
					&nbsp;&nbsp;
	 		 军情</h2>
	 		 <hr style="border:1px solid gray"   />
	 	</div>
	 	
	 	<div class="row ">
			<div class="col-lg-9 col-md-9 col-sm-9 col-xs-9">
<!-- 开始循环 -->
<?php if(is_array($items)): $i = 0; $__LIST__ = $items;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><!-- 每个条目的第1行 -->
				<div class="row">
					<div  class="col-lg-12 col-md-12 col-sm-12 col-xs-12 items_height">
						 <span class="glyphicon glyphicon-star" aria-hidden="true"></span> &nbsp;&nbsp;&nbsp;
						 <a href="/Smallrain/index.php/Home/Index/show_item_detail/id/<?php echo ($v["pass_id"]); ?>" target="_blank">
						 <?php echo ($v["title"]); ?>
						 </a> 
					</div>

				</div>
				<!-- <hr/> --><?php endforeach; endif; else: echo "" ;endif; ?>
<!-- <hr style="border:1px solid gray"   /> -->
<!-- 结束循环	 -->

			</div>
		 	<div class=" col-lg-3 col-md-3 col-sm-3 col-xs-3 ">
		 		 <img src="<?php echo (IMG_URL); ?>item1.jpg" class="right_img_size  img-responsive hidden-xs hidden-sm" />
		 	</div>
	 	</div>
	 </div>
	 	<hr style="border:2px solid gray"/>
<!-- 第 2 个导航条 -->
	<div id="two" class="img_opacity right_img_size col-md-12" style="border:0px solid green;background:rgba(238,209,71,0.5)">
	 	<div class="col-md-12" >
	 		 <h2>
					<span class="glyphicon glyphicon-facetime-video" aria-hidden="true"></span> 
					&nbsp;&nbsp;
	 		 国际</h2>
	 		 <hr style="border:1px solid gray"   />
	 	</div>
	 	
	 	<div class="row  ">
			<div class="col-lg-9 col-md-9 col-sm-9 col-xs-9">
			   <!-- 每个条目的第1行 -->
<!-- 循环的开始 -->
<?php if(is_array($items2)): $i = 0; $__LIST__ = $items2;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 items_height">
						<span class="glyphicon glyphicon-star" aria-hidden="true"></span> &nbsp;&nbsp;&nbsp;
						<a href="/Smallrain/index.php/Home/Index/show_item_detail/id/<?php echo ($v["pass_id"]); ?>" target="_blank">
						<?php echo ($v["title"]); ?>
						</a>
					</div>
				</div>
				<!-- <hr/> --><?php endforeach; endif; else: echo "" ;endif; ?>
<!-- <hr style="border:1px solid gray"   /> -->
<!-- 循环的结束 -->

			</div>
		 	<div class=" col-lg-3 col-md-3 col-sm-3 col-xs-3 ">
		 		 <img src="<?php echo (IMG_URL); ?>item2.jpg"   id="right_img_size " class=" img-responsive hidden-xs hidden-sm" />
		 	</div>
	 	</div>
	 </div>
	 	<hr style="border:2px solid gray"/>

<!-- 第 3 个导航条 -->
	<div id="three" class="img_opacity  col-md-12" style="border:0px solid green;background:rgba(237,70,238,0.5)">
	 	<div class="col-md-12" >
	 		 <h2>
					<span class="glyphicon glyphicon-facetime-video" aria-hidden="true"></span> 
					&nbsp;&nbsp;
	 		 装备</h2>
	 		 <hr style="border:1px solid gray"   />
	 	</div>
	 	
	 	<div class="row  ">
			<div class="col-lg-9 col-md-9 col-sm-9 col-xs-9">
			   <!-- 每个条目的第1行 -->
<?php if(is_array($items3)): $i = 0; $__LIST__ = $items3;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 items_height">
						<span class="glyphicon glyphicon-star" aria-hidden="true"></span> &nbsp;&nbsp;&nbsp;
						<a href="/Smallrain/index.php/Home/Index/show_item_detail/id/<?php echo ($v["pass_id"]); ?>" target="_blank">
						<?php echo ($v["title"]); ?>
						</a>
					</div>
				</div>
				<!-- <hr/> --><?php endforeach; endif; else: echo "" ;endif; ?>
	 	<!-- <hr style="border:2px solid gray"/> -->
			</div>
		 	<div class=" col-lg-3 col-md-3 col-sm-3 col-xs-3 ">
		 		 <img src="<?php echo (IMG_URL); ?>item3.jpg" class="img-responsive hidden-xs hidden-sm" />
		 	</div>
	 	</div>
	 </div>
	 	<hr style="border:2px solid gray"/>

<!-- 第 4 个导航条 -->
	<div id="four" class="img_opacity  col-md-12" style="border:0px solid green;background:rgba(239,150,70,0.5)">
	 	<div class="col-md-12" >
	 		 <h2>
					<span class="glyphicon glyphicon-facetime-video" aria-hidden="true"></span> 
					&nbsp;&nbsp;
	 		 军史</h2>
	 		 <!-- <hr style="border:1px solid gray"   /> -->
	 	</div>
	 	
	 	<div class="row  ">
			<div class="col-lg-9 col-md-9 col-sm-9 col-xs-9">
			   <!-- 每个条目的第1行 -->
<?php if(is_array($items4)): $i = 0; $__LIST__ = $items4;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 items_height">
						 <span class="glyphicon glyphicon-star" aria-hidden="true"></span> &nbsp;&nbsp;&nbsp;
						 <a href="/Smallrain/index.php/Home/Index/show_item_detail/id/<?php echo ($v["pass_id"]); ?>" target="_blank">
						 <?php echo ($v["title"]); ?>
						 </a>
					</div>

				</div>
				<!-- <hr/> --><?php endforeach; endif; else: echo "" ;endif; ?>
			</div>
		 	<div class=" col-lg-3 col-md-3 col-sm-3 col-xs-3 ">
		 		 <img src="<?php echo (IMG_URL); ?>item4.jpg" class="img-responsive hidden-xs hidden-sm" />
		 	</div>
	 	</div>
	 </div>
	 	<hr style="border:2px solid gray"/>



<!-- 底部页脚的开始 -->
<div id="team" class="img_opacity  row foot_font_size" style="height:352px;background:#2d3237">
	<div class="col-md-6 col-sm-6 col-xs-6 hidden-sm hidden-xs" >
	<!-- 第一排图片开始 -->
		<div class="col-md-12 ">
			<div class="col-md-12 col-sm-12 col-xs-12">
				 <h3><b>小雨滴</b> 团队成员</h3>
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
	<!-- 页脚右边内容的结束 -->

<!-- <div id="one" class="row" style="height:300px;border:0px solid green;background:pink">
	
</div> -->


</div>
<!-- 底部页脚的结束 -->




</div>
<!-- 具体内容的实现 结束-->

</div>
<!-- 右边的内容结束 -->
</div>
<!-- 总页面的结束 -->


</body>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="<?php echo (JS_URL); ?>jquery-1.11.1.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="<?php echo (JS_URL); ?>bootstrap.min.js"></script>
<!-- 屏幕滚动代码 开始 -->
<script>
$(document).ready(function(){
	jQuery.scrollto = function(scrolldom,scrolltime) {
		
		$(scrolldom).click( function(){ 
			var scrolltodom = $(this).attr("date-scroll");
			$(this).addClass("thisscroll").siblings().removeClass("thisscroll");
			$('html,body').animate({
				scrollTop:$(scrolltodom).offset().top},scrolltime
			);
			return false;
		}); 
		
	};
  
    $.scrollto("#scrollnav a",600);
});

$('.carousel').carousel({
  interval: 2000
})
</script>


</html>