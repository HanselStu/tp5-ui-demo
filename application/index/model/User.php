<?php

namespace app\index\model;

use think\Model;

// 之前写的 不用管 需要的自己重写
class User extends Model
{
    // 设置当前模型对应的完整数据表名称
    protected $table = 'tb_manager';

    public function selectUser($username, $password)
    {
        return $this->where('name', $username)->where('pwd', $password)->select();
    }

    public function addUser($username, $password)
    {
        return $this->data([
            'name'  =>  $username,
            'pwd' =>  $password
        ])->save();
    }
}
