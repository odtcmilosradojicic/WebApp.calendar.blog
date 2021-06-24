<?php

namespace App\Http\Controllers;

use App\Models\Post;
use http\Env\Response;
use Illuminate\Http\Request;

class PostLikeController extends Controller
{
    /**
     * @param Post $post
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(Post $post, Request $request)
    {
        if($post->likedBy($request->user())) { //checking if specified user liked that post
            $request->user()->likes()->where('post_id', $post->id)->delete();
        } else {
            $post->like()->create([
                'user_id' => $request->user()->id
            ]);
        }

        return back();
    }
}
