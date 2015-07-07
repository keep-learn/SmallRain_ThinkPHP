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
        $Contents=M('passage');
        $res1=$Contents->query("select pass_id ,title from tb_passage where type=1 order by pass_id desc limit 6;");
        $this->assign("items",$res1);  
        
        $res2=$Contents->order("pass_id desc")->where('type=2')->getField('title',6); 
        $this->assign("items2",$res2);  
        
        $res3=$Contents->order("pass_id desc")->where('type=3')->getField('title',6); 
        $this->assign("items3",$res3);  
        
        $res4=$Contents->order("pass_id desc")->where('type=4')->getField('title',6); 
        $this->assign("items4",$res4);  

           
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
        // 接受文章的id值
        $id=$_GET['id'];
        // 将文章的id放到表中的隐藏表单中
        $Info=M('passage')->where('pass_id='.$id)->find();
        // show_bug($Info);


        // 分配用户名信息
        if(cookie('login_user_name')!=""){
            $this->assign("login_user_name",cookie('login_user_name'));
        }else{
            $this->assign("login_user_name","登录");
        }
        // 分配文章的id
        $this->assign('pass_id',$id);
        // 分配文章的内容
        $this->assign('pass_info',$Info);
        $this->display('show_item_detail');
    }






// 插入用户评论的内容
    public function add_comments(){
        // 获取收到的评论内容
        $comments=I('post.say_words');
        // 获取文章的id
        $pass_id=I('post.pass_id');
      // 获取用户的id  /都从控制器中来获得信息
      // 获取时间  /都从控制器中来获得信息
        $time=date("Y-m-d h:i a");
      // 获取ip   /都从控制器中来获得信息
        $ip = get_client_ip();
        // echo "time : ".$time."ip : ".$ip;

        $user_name=cookie('login_user_name');
        $user=M('member')->where("username='%s'",array($user_name))->find();
        $user_id=$user['user_id'];
        var_dump($user);

        $data['pass_id']=$pass_id;
        $data['user_id']=$user_id;
        $data['say']=$comments;
        $data['time']=$time;
        $data['ip']=$ip;
        //插入到数据库
        $comments=M('comment');
        $res=$comments->add($data);

        // 判断是否成功
        if($res){
            echo "Success ";
        }else{
            echo "Sorry ";
        }
    }

    // 空操作方法
    public function _empty(){
        // echo "Sorry , do not have the method !";
        $this->display('empty');
    }

}
