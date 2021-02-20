<?php

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
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('dvd_records', ['uses'=>'CdRecordsController@index', 'as'=>'dvd_records.index']);
Route::resource('dvd_records','CdRecordsController');
Route::get('csv', 'CdRecordsController@csv')->name('dvd_records.csv');
