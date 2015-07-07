<?php
// 本类由系统自动生成，仅供测试用途
namespace Home\Controller;
use Think\Controller;
class IndexController extends Controller {
    public function index(){
        if(cookie('login_user_name')!=""){
            $this->assign("login_user_name",cookie('login_user_name'));
        }else{
            $this->assign("login_user_name","登录");
        }
        $this->display();
    }


    // 登录页面的控制器
    public function login(){
    	$this->display();
    }
    // 登录页面处理
    public function do_login(){
        $username=I('post.username');
        $passwd=md5(I('post.passwd'));
        $User=M('member');
        $user_info=$User->where("username='%s'",array($username))->find();
        $passwd_fr_db=$user_info['passwd'];
        $user_id=$user_info['user_id'];

        // echo "passwd : ".$passwd."<hr/>";
        // echo "passwd fr db : ".$passwd_fr_db."<hr/>";

        if($passwd_fr_db==$passwd){
            $this->success("登录成功 !","index");
            cookie('login_user_name',$username);
            cookie('login_user_id',$user_id);
        }else{
            $this->error("登录失败,请重新登录 ! ","login");
        }

    }

    // 注册界面
    public function register(){
    	$this->display();
    }
    // 注册页面处理
    public function do_register(){
        // 接受用户名
        $data['username']=I('post.username');
        // 接受密码
        $data['passwd']=md5(I('post.passwd'));
        // 添加到数据库
        $Info=M('member');
        $res=$Info->add($data);
        if($res){
            $this->success("恭喜你,注册成功 ! ","Index/index");
        }else{
            $this->success("对不起 , 注册失败 , 请重新注册 !","Index/register");
        }
        // show_bug($data);
        // echo "hello";
        // $this->display();
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
