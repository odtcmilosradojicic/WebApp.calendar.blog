<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    /**
     * @param User $user
     * @return mixed
     */
    public function index(User $user)
    {
        return view('users.profile', [
            'user' => $user,
            'posts' => $user->posts,
        ]);
    }
}
