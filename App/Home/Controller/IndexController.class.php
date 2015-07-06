<?php
// 本类由系统自动生成，仅供测试用途
namespace Home\Controller;
use Think\Controller;
class IndexController extends Controller {
    public function index(){
    	$this->display();
    }


    // 登录页面的控制器
    public function login(){
    	$this->display();
    }

    // 注册界面
    public function register(){
    	$this->display();
    }

    // 二级页面的控制
    public function show_item_detail(){
        $this->display('show_item_detail');
    }


    // 空操作方法
    public function _empty(){
        // echo "Sorry , do not have the method !";
        $this->display('empty');
    }
}
