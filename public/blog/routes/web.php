<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
   // return 'welcome';
    //return phpinfo();
    return view('welcome');
});
Route::get('/test', function () {
    return "this is laravel 7 project";
});
Route::get('/post', 'PostController@index');