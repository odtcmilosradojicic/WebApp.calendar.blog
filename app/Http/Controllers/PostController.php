<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;

class PostController extends Controller
{


    public function index()
    {
        $posts = Post::with(['user', 'like'])->latest()->paginate(3);
            return view('posts.index', [
            'posts' => $posts
        ]);
    }




    public function store(Request $request)
    {
        $this->validate($request, [
            'title' => 'required',
            'body' => 'required'
        ]);


        $request->user()->posts()->create([
            'title' => $request->title,
            'body' => $request->body
        ]);

        return redirect()->route('posts');
    }





    public function destroy(Post $post)
    {
        $this->authorize('delete', $post);
        $post->delete();
        return back();
    }
}
