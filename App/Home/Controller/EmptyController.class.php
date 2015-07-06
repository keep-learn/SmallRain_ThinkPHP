<?php
namespace Home\Controller;
use Think\Controller;
class EmptyController extends Controller{
	public function index(){
		// echo "对不起 , 您访问的方法不存在 ! ";
		$this->display("Index/empty");
	}
}
?>