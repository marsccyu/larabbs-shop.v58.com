<?php

use App\Models\CouponCode;
use Illuminate\Database\Seeder;

class CouponCodeTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // 创建 10 筆資料
        factory(\App\Models\CouponCode::class, 10)->create();
    }
}
