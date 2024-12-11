<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\SettlementController;
use App\Http\Controllers\MachineController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\AchievementController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::get('/settlement',[SettlementController::class,'index']);
Route::get('/machine',[MachineController::class,'index']);
Route::get('/user',[UserController::class,'index']);
Route::get('/achievement',[AchievementController::class,'index']);


