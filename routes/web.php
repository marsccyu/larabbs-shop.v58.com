<?php

Route::get('/', 'PagesController@root')->name('root');

Auth::routes(['verify' => true]);

// auth 中间件代表需要登录，verified中间件代表需要经过邮箱验证
Route::group(['middleware' => ['auth', 'verified']], function() {
    Route::get('user_addresses', 'UserAddressesController@index')->name('user_addresses.index');

    Route::redirect('/', '/products')->name('root');
    Route::get('products', 'ProductsController@index')->name('products.index');
    Route::get('products', 'ProductsController@index')->name('products.index');
    Route::get('products/{product}', 'ProductsController@show')->name('products.show');
    Route::post('products/{product}/favorite', 'ProductsController@favor')->name('products.favor');
    Route::delete('products/{product}/favorite', 'ProductsController@disfavor')->name('products.disfavor');
});

