@extends('layouts.app')

@section('content')
    <div class="row">
        <div class="border-box mx-auto">
            <h1 class="">{{ $user->name }}</h1>
            <p>Posted {{ $posts->count() }} {{ Str::plural('post', $posts->count()) }} and has likes {{ $user->hasLikes->count() }}</p>
        </div>



        @if($posts->count())

            @foreach($posts as $post)

                <div class="m-2 border rounded border-dark mx-auto pl-4">
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
                            <span class="pl-3"><strong>{{ $post->like->count() }}</strong> {{ Str::plural('like', $post->like->count()) }}</span>
                        @endif
                    </div>
                @endauth
            @endforeach

            {{ $posts->links() }}

        @else
            <p>There are no posts yet.</p>
        @endif

    </div>
@endsection
