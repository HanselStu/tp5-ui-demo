<?php

namespace app\index\controller;

use app\index\model\UserModel;
use think\Controller;
use think\Request;
use think\Session;

// 仅练习，用于熟悉语法，如果想更规范，请自行修改，如代码有错误，请尝试自行修改。(我是小白)
class AdminController extends Controller
{
    // 判断用户是否登录
    public function _initialize()
    {
        if (Session::get('user_info_name') == '') {
            return $this->redirect("index/login");
        }
    }

    // 用户管理页面
    public function adminList(Request $request)
    {
        $this->_initialize();
        $this->view->assign('title', '管理员列表');
        $this->view->assign('keywords', 'TP5教学系统');
        $this->view->assign('desc', '教学管理系统');
        // 定义返回数据
        $return_data = array(
            'code' => 0, // 返回的状态码，200成功，500失败
            'msg' => '查询成功', // 提示信息
            'count' => 0, // 总记录数
            'list' => '', // 返回的数据数组
            'page' => 0, // 当前页码
            'limit' => 0, // 每页显示的条数
            'page_count' => 0, // 总页数
            'keyword' => '', // 搜索关键字
        );
        // 先通过session获取到用户的角色信息
        $userRole = Session::get('user_info_role');
        // 如果是超级管理员，就查询所有的用户信息
        if ($userRole == '超级管理员') {
            $list = UserModel::page(1, 10)
                ->order('update_time', 'desc')
                ->select();
            $count = UserModel::count();
            // 返回数据
            $return_data['count'] = $count;
            $return_data['list'] = $list;
            $return_data['page'] = 1;
            $return_data['limit'] = 10;
            $return_data['page_count'] = ceil($count / 10);
            $this->view->assign('data', $return_data);
        } else {
            // 为了共用列表模板，使用了all(),其实这里用get()符合逻辑，但有时也要变通//非admin只能看自己信息，数据要经过模型获取器处理
            $list = UserModel::all(['name' => Session::get('user_info_name')]);
            $return_data['count'] = 1;
            $return_data['list'] = $list;
            $return_data['page'] = 1;
            $return_data['limit'] = 10;
            $return_data['page_count'] = 1;
            $this->view->assign('data', $return_data);
        }
        return $this->view->fetch('admin/admin_list');
    }

    // 关键字查询用户
    public function adminListByKey(Request $request)
    {

        // 定义返回数据
        $return_data = array(
            'code' => 0, // 返回的状态码，200成功，500失败
            'msg' => '查询成功',
            'count' => 0, // 总记录数
            'list' => '', // 返回的数据数组
            'page' => 0, // 当前页码
            'limit' => 0, // 每页显示的条数
            'page_count' => 0, // 总页数
            'keyword' => '', // 搜索关键字
        );
        //先通过session获取到用户的角色信息
        $userRole = Session::get('user_info_role');
        if ($userRole == '超级管理员') {
            // 分页查询的条件：keyword、page、limit
            $condition = $request->param();
            // 条件
            $keyword = $condition['keyword'];
            $page = $condition['page'];
            $limit = $condition['limit'];
            // 模糊查询
            $list = UserModel::where('name', 'like', '%' . $keyword . '%')
                ->page($page, $limit)
                ->order('update_time', 'desc')
                ->select();
            $count = UserModel::where('name', 'like', '%' . $keyword . '%')->count();
            // 返回数据
            $return_data['code'] = 200;
            $return_data['count'] = $count;
            $return_data['list'] = $list;
            $return_data['page'] = $page;
            $return_data['limit'] = $limit;
            $return_data['page_count'] = ceil($count / $limit);
            $return_data['keyword'] = $keyword;
            return json($return_data);
        }
        // 非admin只能看自己信息
        $return_data['list'] = UserModel::all(['name' => Session::get('user_info_name')]);
        $return_data['code'] = 200;
        $return_data['msg'] = '无权限!';
        return json($return_data);
    }

    // 管理员状态变更
    public function setStatus(Request $request)
    {
        $user_id = $request->param('id');
        $result = UserModel::get($user_id);

        if ($result->getData('used') == 1) {
            UserModel::update(['used' => 0], ['id' => $user_id]);
        } else {
            UserModel::update(['used' => 1], ['id' => $user_id]);
        }

        return json(['code' => 200, 'message' => '状态变更成功!']);
    }

    // 管理员更新页面
    public function adminEdit(Request $request)
    {
        $this->_initialize();
        $user_id = $request->param('id');
        $result = UserModel::get($user_id);
        $this->view->assign('title', '编辑管理员信息');
        $this->view->assign('keywords', 'TP5教学系统');
        $this->view->assign('desc', '教学管理系统');
        $this->view->assign('user_info', $result->getData());
        return $this->view->fetch('admin/admin_edit');
    }

    // 管理员更新操作
    public function editAdmin(Request $request)
    {
        $param = $request->param();
        foreach ($param as $key => $value) {
            if ($value == null) {
                return json(['code' => 500, 'msg' => '请填写完整信息！']);
            }
        }
        // 更新update_time字段
        $param['update_time'] = date('Y-m-d H:i:s');
        $result = UserModel::update($param, ['id' => $param['id']]);

        if ($result) {
            // 如果更新的是当前登录用户的信息，更新session中的信息
            if ($param['name'] == Session::get('user_info_name')) {
                Session::set('user_info_name', $param['name']);
                // 普通管理员不能修改自己的角色
                Session::set('user_info_role', isset($param['role']) ? $param['role'] : Session::get('user_info_role'));
            }
            return json(['code' => 200, 'msg' => '更新成功！']);
        }

        return json(['code' => 300, 'msg' => '更新失败！']);
    }

    // 管理员删除操作--单条或多条
    public function deleteAdmin(Request $request)
    {
        // 接受数组参数
        $user_id = $request->param('id/a'); // '/a'表示获取的是数组
        $result = UserModel::destroy($user_id);
        if ($result) {
            return json(['code' => 200, 'msg' => '删除成功！']);
        }

        return json(['code' => 500, 'msg' => '删除失败！']);
    }

    // 管理员添加页面
    public function adminAdd()
    {
        $this->_initialize();
        $this->view->assign('title', '添加管理员');
        $this->view->assign('keywords', 'TP5教学系统');
        $this->view->assign('desc', '教学管理系统');
        return $this->view->fetch('admin/admin_add');
    }

    // 添加用户姓名重复检查
    public function checkAdminName(Request $request)
    {
        $name = trim($request->param('name'));
        $code = 200;
        $message = '';
        if (UserModel::get(['name' => $name])) {
            //如果在表中查询到该用户名
            $code = 500;
            $message = '用户名重复，请重新输入！';
        }
        return json(['code' => $code, 'message' => $message]);
    }

    // 添加用户邮箱重复检查
    public function checkEmail(Request $request)
    {
        $email = trim($request->param('email'));
        $code = 200;
        $message = '';
        if (UserModel::get(['email' => $email])) {
            //如果在表中查询到该邮箱
            $code = 500;
            $message = '邮箱重复，请重新输入！';
        }
        return json(['code' => $code, 'message' => $message]);
    }

    // 管理员添加操作
    public function addAdmin(Request $request)
    {
        $param = $request->param();
        foreach ($param as $key => $value) {
            if ($value == null) {
                return json(['code' => 500, 'msg' => '请填写完整信息！']);
            }
        }
        $param['update_time'] = date('Y-m-d H:i:s');
        $result = UserModel::create($param);

        if ($result) {
            return json(['code' => 200, 'msg' => '添加成功！']);
        }

        return json(['code' => 500, 'msg' => '添加失败！']);
    }
}
