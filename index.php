<?php
if(version_compare(PHP_VERSION,'5.3.0','<'))  die('require PHP > 5.3.0 !');

define('APP_DEBUG',True);
define('APP_PATH','./App/');

// define("SITE_URL","http://127.0.0.1/");
define("SITE_URL","http://172.16.129.10/");
define("CSS_URL",SITE_URL."SmallRain/APP/Common/css/"); //css
define("IMG_URL",SITE_URL."SmallRain/APP/Common/img/"); //img
define("JS_URL",SITE_URL."SmallRain/APP/Common/js/"); //js
define("EDITOR_URL",SITE_URL."SmallRain/APP/Common/ueditor/"); //Editor

// 发表评论处理的url地址
define("ADD_COMMENTS_URL",SITE_URL."SmallRain/index.php/Home/Index/add_comments");
require './ThinkPHP/ThinkPHP.php';
 function show_bug($res){
 	header("content-type:text/html;charset=utf-8");
	echo "<pre style='color:red'>";
	var_dump($res);
	echo "</pre>";
}