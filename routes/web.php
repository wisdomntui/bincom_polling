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

// Route::get('/', function () {
//     return view('welcome');
// });

// Auth::routes();

Route::get('/individual-polls/{unit?}', [App\Http\Controllers\PollsController::class, 'individualPolls'])->name('individual-polls');

Route::get('/total-result/{lga?}', [App\Http\Controllers\PollsController::class, 'totalResult'])->name('total-result');

Route::get('/create-result', [App\Http\Controllers\PollsController::class, 'createResult'])->name('create-result');

Route::post('validate-unit', [App\Http\Controllers\PollsController::class, 'validatePolUnit'])->name('validate-unit');

Route::post('save-result', [App\Http\Controllers\PollsController::class, 'saveResult'])->name('save-result');

Route::get('get-wards', [App\Http\Controllers\PollsController::class, 'getWards'])->name('get-wards');

Route::get('/', [App\Http\Controllers\HomeController::class, 'index'])->name('index');
