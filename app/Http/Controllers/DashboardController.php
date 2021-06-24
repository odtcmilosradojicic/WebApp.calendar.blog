<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class DashboardController extends Controller
{
    /**
     * @return mixed
     */
    public function index()
    {
        return view('dashboard.home');
    }
}
