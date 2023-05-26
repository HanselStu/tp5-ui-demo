<?php

namespace app\index\controller;

use app\index\controller\Base;
use think\Session;

// 仅练习，用于熟悉语法，如果想更规范，请自行修改，如代码有错误，请尝试自行修改。(我是小白)
// 这是之前写的 可以自己重写
// 管理前面三个页面的跳转
class Index extends Base
{
    // 首页页面
    public function index()
    {
        if (Session::get('user_info_name') == '') {
            echo "<script>alert('请登录！')</script>";
            return $this->fetch("index/login");
        }

        return $this->fetch();
    }

    // 登录页面
    public function login()
    {
        return $this->fetch();
    }

    // 注册页面
    public function register()
    {
        return $this->fetch();
    }
}
