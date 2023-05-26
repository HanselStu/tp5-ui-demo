<?php

namespace app\index\controller;

use think\Request;
use think\Session;
use app\index\controller\Base;
use app\index\model\User as userModel;
use app\index\model\UserModel as adminModel;

/**
 * 仅练习，用于熟悉语法，如果想更规范，请自行修改，如代码有错误，请尝试自行修改。(我是小白)
 * 这是之前写的 表不一样 可以自己重写
 * 用户登录、注册、注销
 */
class User extends Base
{

    // 注册用户名检查
    public function checkName(Request $request)
    {
        $data = $request->param();

        $userDao = new userModel();
        $user = $userDao->selectName($data['username']);

        if ($user == null) return json(["hasName" => false]);

        return json(["hasName" => true]);
    }

    // 用户注册
    public function register(Request $request)
    {
        $data = $request->param();

        $userDao = new userModel();
        $count = $userDao->addUser($data['username'], $data['password']);

        if ($count == 1) {
            return json(["msg" => "注册成功！", "isPass" => true]);
        }

        return json(["msg" => "注册失败！请重试！", "isPass" => false]);
    }

    // 用户登录
    public function login(Request $request)
    {
        $data = $request->param();

        $rule = ['username' => 'require', 'password' => 'require', 'verify' => 'require|captcha'];
        $msg = [
            'username' => ['require' => '用户名不能为空！'],
            'password' => ['require' => '密码不能为空！'],
            'verify' => ['require' => '验证码不能为空！', 'captcha' => '验证码错误！']
        ];
        $result = $this->validate($data, $rule, $msg);
        if ($result != 1) return json(["msg" => $result, "isPass" => false]);

        $userDao = new adminModel();
        $login = $userDao->selectUser($data['username'], $data['password']);

        if ($login != null) {
            // 判断是否被禁用
            if ($login[0]['used'] == 0) return json(["msg" => "该账号已被禁用！请联系超级管理员！", "isPass" => false]);

            Session::set('user_info_name', $login[0]['name']);
            Session::set('user_info_role', $login[0]['role']);
            return json(["msg" => "验证通过！", "isPass" => true]);
        }
        return json(["msg" => "验证失败！请检查信息！", "isPass" => false]);
    }

    // 注销
    public function logout()
    {
        Session::delete('user_info_role');
        Session::delete('user_info_name');
        return json(["msg" => "注销成功！", "isLogout" => true]);
    }
}
