<?php

namespace app\index\model;

use think\Model;

class Admin extends Model
{
    protected $table = 'tb_admin';

    // 根据名字和日期分页查询
    public function searchByNameAndDate($name, $start_date, $end_date, $page, $limit)
    {
        $query = $this->where('name', 'like', "%$name%")
            ->order('id', 'desc')
            ->page($page, $limit);

        $list = $query->select();
        $count = $query->count();

        return ['list' => $list, 'count' => $count];
    }
}
