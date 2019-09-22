<?php

use Illuminate\Support\Str;
use Illuminate\Database\Seeder;

class UsersSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $data = [
            'name' => 'Mars',
            'email' => 'bcawosxy@gmail.com',
            'email_verified_at' => now(),
            'password' => bcrypt('123456'), // password
            'remember_token' => Str::random(10),
        ];

        \App\Models\User::query()->create($data);

        // 通过 factory 方法生成 100 个用户并保存到数据库中
        factory(\App\Models\User::class, 10)->create();
    }
}
