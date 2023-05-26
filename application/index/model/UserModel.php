<?php

namespace app\index\model;

use think\Model;

class UserModel extends Model
{
    // 设置当前模型对应的完整数据表名称
    protected $table = 'tb_admin';

    // 用户登录验证
    public function selectUser($username, $password)
    {
        return $this->where('name', $username)->where('pwd', $password)->select();
    }
}
