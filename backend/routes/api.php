<?php
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use Illuminate\Routing\Route as RoutingRoute;
use App\Models\User;
use App\Http\Controllers\UserController;
use App\Http\Controllers\ApiContollerController;
use App\Http\Controllers\AuthController;

Route::get('/api-controllers', [ApiContollerController::class, 'index']);
Route::get('/users', function() {
    return \App\Models\User::all();
});

Route::post('/register', [AuthController::class, 'register']);
Route::post('/login', [AuthController::class, 'login']);

