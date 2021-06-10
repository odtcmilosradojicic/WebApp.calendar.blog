@extends('layouts.app')

@section('content')
<div class="row">
    <div class="mx-auto pl-4">
        <h1 class="pb-5 text-center"><strong>USER=> </strong></h1>
            <h1 class="text-center">Name: <strong>{{ $user->name }}</strong></h1>
                <h1 class="text-center">Username: <strong>{{ $user->username }}</strong></h1>
                    <h1 class="text-center">email: {{ $user->email }}</h1>
                        <p><strong>Posts: </strong>{{ $posts->count() }}</p>
    </div>
</div>
@endsection
