<?php
namespace Home\Controller;
use Think\Controller;
class TestController extends Controller{
	public function index(){
		echo "hello , this is the controller !"."<br/>";
		$info=M('member');
		$res=$info->select();
		show_bug($res);
	}
	public function test(){
		$user="ZhangBingShuai";
		echo "username is : ".$user;
		cookie('use_name','ZBingShuai');
		echo "login_user_name : ".cookie('login_user_name');
		// echo cookie('use_name');
	}
	public function test2(){
		echo "login_user_id : ".cookie('login_user_id');
		echo "<br/>".date("Y-m-d H:i");

	}
	// 读出列表信息
	public function test3(){
		$comment=M('comment');
		$info=$comment->select();
		show_bug($info);
		$this->assign("info",$info);
		$this->display('test');
	}
}

?>