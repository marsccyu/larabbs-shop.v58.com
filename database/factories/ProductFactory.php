<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Models\Product;
use Faker\Generator as Faker;

$factory->define(Product::class, function (Faker $faker) {
    $category = \App\Models\Category::query()->where('is_directory', false)->inRandomOrder()->first();

    $image = $faker->randomElement([
        "images/1.jpg",
        "images/2.jpg",
        "images/3.jpg",
        "images/4.jpg",
        "images/5.jpg",
        "images/6.jpg",
    ]);

    return [
        'title'        => $faker->word,
        'long_title'   => $faker->sentence,
        'description'  => $faker->sentence,
        'image'        => $image,
        'on_sale'      => true,
        'rating'       => $faker->numberBetween(0, 5),
        'sold_count'   => 0,
        'review_count' => 0,
        'price'        => 0,
        // 将取出的类目 ID 赋给 category_id 字段
        // 如果数据库中没有类目则 $category 为 null，同样 category_id 也设成 null
        'category_id'  => $category ? $category->id : null,
    ];
});
