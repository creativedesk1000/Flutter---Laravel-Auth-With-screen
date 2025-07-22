<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\ApiContoller;
class ApiContollerController extends Controller
{


    public function index() {
        return ApiContoller::all(); // Change User::all() to ApiContoller::all()
    }
}
