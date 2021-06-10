@extends('layouts.app')

@section('content')

    <div class="row">
        <div class="row col-10 mx-auto p-4">
            <div class="border-box pb-5">
                <h1>Post something</h1>
                <form method="post" action="{{ route('posts') }}">
                    @csrf

                    <div class="form-group pb-3">
                        <label for="title">Title</label>
                        <input type="text" class="form-control" id="title" name="title" placeholder="Your title...">
                        @error('title')
                        <div class="text-red mt-2 text-sm">
                            {{ $message }}
                        </div>
                        @enderror
                    </div>

                    <div class="form-group pb-3">
                        <label for="body">Body</label>
                            <textarea class="form-control" id="body" name="body" placeholder="Your post..."></textarea>
                            @error('body')
                                 <div class="text-red mt-2 text-sm">
                                 {{ $message }}
                                 </div>
                            @enderror
                    </div>

                    <div class="form-check">
                        <button type="submit" class="btn btn-primary">Post</button>
                    </div>

                </form>
            </div>


            <div class="container">
                <div class="row col-md-10">

                    @if($posts->count())

                    @foreach($posts as $post)
                            <div class="m-2 border rounded border-dark mx-auto">
                                <a href="{{ route('users.posts', $post->user) }}" class="font-bold">{{ $post->user->name }}</a>
                                    <span>{{ $post->created_at->diffForHumans() }}</span>
                                         <h3 class="text-center">{{ $post->title }}</h3>
                                             <p>{{ $post->body }}</p>
                            </div>

                           @auth
                               @can('delete', $post)
                                    <div class="btn-group pb-4">
                                        <form action="{{ route('posts.destroy', $post) }}" method="post">
                                            @csrf
                                            @method('DELETE')
                                            <button type="submit" class="btn btn-primary">Delete</button>
                                        </form>
                                </div>
                                @endcan

                        <div class="btn-group pb-4">

                            @if(!$post->likedBy(auth()->user()))
                                <form action="{{ route('posts.likes', $post) }}" method="post" class="pr-2">
                                    @csrf
                                        <button type="submit" class="inline btn btn-primary">Like</button>
                                </form>
                            @else

                            <form action="{{ route('posts.likes', $post) }}" method="post">
                                @csrf
                                    @method('DELETE')
                                        <button type="submit" class="btn btn-primary">Dislike</button>
                            </form>
                            @endif
                        </div>
                            @endauth
                            <span class="pl-3"><strong>{{ $post->like->count() }}</strong> {{ Str::plural('like', $post->like->count()) }}</span>

                        @endforeach

                        {{ $posts->links() }}

                    @else
                        <p>There are no posts yet.</p>
                    @endif


                </div>
            </div>
        </div>
    </div>
    @endsection
