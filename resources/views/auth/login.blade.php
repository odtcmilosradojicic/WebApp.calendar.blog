@extends('layouts.app')

@section('content')
    <div class="row col-6 mx-auto p-4">
        <div class="border-box">
            <h1>Login</h1>
            <form method="POST" action="{{ route('login') }}">
                @csrf

                @if(session('status'))
                   <strong> {{ session('status') }} </strong>
                    @endif

                <div class="form-group pb-3">
                    <label for="email">Email:</label>
                    <input type="text" class="form-control" id="email" value="{{ old('email') }}" name="email" placeholder="Your email...">
                    @error('email')
                    <div class="text-red mt-2 text-sm">
                        {{ $message }}
                    </div>
                    @enderror
                </div>

                <div class="form-group pb-3">
                    <label for="password">Password:</label>
                    <input type="password" class="form-control" id="password" value="" name="password" placeholder="Your password...">
                    @error('password')
                    <div class="text-red mt-2 text-sm">
                        {{ $message }}
                    </div>
                    @enderror
                </div>

                <div class="form-check">
                    <input type="checkbox" class="form-check-input" id="remember">
                    <label class="form-check-label" for="remember">Remember me</label>
                </div>

                <button type="submit" class="btn btn-primary">Login</button>
            </form>
        </div>
    </div>
@endsection
