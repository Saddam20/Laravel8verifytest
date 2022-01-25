<?php

use Illuminate\Support\Facades\Route;



Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::get('admin', [App\Http\Controllers\AdminController::class, 'index'])->name('');


Route::get('admin/user', [App\Http\Controllers\UserController::class, 'index'])->name('');
Route::get('admin/user/add', [App\Http\Controllers\UserController::class, 'add'])->name('');
Route::post('admin/user/submit', [App\Http\Controllers\UserController::class, 'insert'])->name('');


Route::get('admin/banner', [App\Http\Controllers\BannerController::class, 'index'])->name('');
Route::get('admin/banner/add', [App\Http\Controllers\BannerController::class, 'add'])->name('');
Route::get('admin/banner/view/{slug}', [App\Http\Controllers\BannerController::class, 'view'])->name('');
Route::get('admin/banner/edit/{slug}', [App\Http\Controllers\BannerController::class, 'edit'])->name('');
Route::post('admin/banner/submit', [App\Http\Controllers\BannerController::class, 'insert'])->name('');
Route::post('admin/banner/update', [App\Http\Controllers\BannerController::class, 'update'])->name('');

Route::get('admin/error/access', [App\Http\Controllers\ErrorController::class, 'access'])->name('');


Route::get('admin/general/basic', [App\Http\Controllers\GeneralController::class, 'basic'])->name('');
Route::post('admin/general/basic/update', [App\Http\Controllers\GeneralController::class, 'basic_update'])->name('');
Route::get('admin/general/social', [App\Http\Controllers\GeneralController::class, 'social'])->name('');

Route::post('admin/general/social/update', [App\Http\Controllers\GeneralController::class, 'social_update'])->name('');
Route::get('admin/general/contact', [App\Http\Controllers\GeneralController::class, 'contact'])->name('');
Route::post('admin/general/contact/update', [App\Http\Controllers\GeneralController::class, 'contact_update'])->name('');


Route::get('admin/contactus', [App\Http\Controllers\ContactusController::class, 'index'])->name('');
Route::get('admin/contactus/view/{slug}', [App\Http\Controllers\ContactusController::class, 'view'])->name('');


Route::post('admin/contactus/softdel',[App\Http\Controllers\ContactusController::class, 'soft_delete'])->name('');
Route::post('admin/contactus/restore', [App\Http\Controllers\ContactusController::class,'restore'])->name('');
Route::post('admin/contactus/delete', [App\Http\Controllers\ContactusController::class,'delete'])->name('');



Route::get('admin/recycle/contact', [App\Http\Controllers\RecycleController::class,'contact'])->name('');
Route::get('admin/recycle', [App\Http\Controllers\RecycleController::class,'index'])->name('');
