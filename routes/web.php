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

Route::get('/', [App\Http\Controllers\HomeController::class, 'index'])->name('index');
