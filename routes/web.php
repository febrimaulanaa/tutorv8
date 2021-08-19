<?php

use App\Http\Livewire\Members;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\SettuwebController;

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


Route::group(['middleware' => ['auth']], function () {
    Route::get('/', function () {
        if (auth()->user()->hasRole('Admin'))
            return redirect()->route('admin.home');
        if (auth()->user()->hasRole('Member'))
            return redirect()->route('member.home');

        // return redirect()->route()
    });


    Route::group(['middleware' => 'role:Admin', 'prefix' => 'admin', 'as' => 'admin.'], function () {
        Route::get('/', [HomeController::class, 'index'])->name('home');

        Route::get('/dashboard', [SettuwebController::class, 'tampil'])->name('dashboard');

        //create user
        Route::get('/createusers', [AdminController::class, 'create'])->name('createuser');
        Route::post('/user', [AdminController::class, 'storeusers'])->name('user');
    });

    Route::group(['middleware' => 'role:Member', 'prefix' => 'member', 'as' => 'member.'], function () {
        Route::get('/', [SettuwebController::class, 'home'])->name('home');

        Route::get('/settuweb', [SettuwebController::class, 'index'])->name('settuweb');
        Route::post('/upload/settuweb', [SettuwebController::class, 'upload_settuweb'])->name('uploadsettuweb');
    });

    Route::post('/settuweb/{type}', [SettuwebController::class, 'upload'])->name('upload');

    Route::get('/download/file/{id}/{type}', [SettuwebController::class, 'download_file'])->name('download');
    Route::get('/downloadZip/{upload}', [SettuwebController::class, 'downloadZip'])->name('downloadZip');
});
