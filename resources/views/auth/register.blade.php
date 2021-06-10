@extends('layouts.app')

@section('content')
    <div class="row col-6 mx-auto p-4">
        <div class="border-box">
            <h1>Registration</h1>
            <form method="POST" action="{{ route('register') }}">
                @csrf
                <div class="form-group pb-3">
                    <label for="name">Name:</label>
                    <input type="text" class="form-control border-red" id="name" name="name" value="{{ old('name') }}" placeholder="Your name...">
                    @error('name')
                    <div class="text-red mt-2 text-sm">
                        {{ $message }}
                    </div>
                    @enderror
                </div>

                <div class="form-group pb-3">
                    <label for="username">Username:</label>
                    <input type="text" class="form-control" id="username" name="username" value="{{ old('username') }}" placeholder="Your username...">
                    @error('username')
                    <div class="text-red mt-2 text-sm">
                        {{ $message }}
                    </div>
                    @enderror
                </div>

                <div class="form-group pb-3">
                    <label for="email">Email:</label>
                    <input type="text" class="form-control" id="email" name="email" value="{{ old('email') }}" placeholder="Your email...">
                    @error('email')
                    <div class="text-red mt-2 text-sm">
                        {{ $message }}
                    </div>
                    @enderror
                </div>

                <div class="form-group pb-3">
                    <label for="password">Password:</label>
                    <input type="password" class="form-control" id="password" name="password" value="{{ old('password') }}" placeholder="Your password...">
                    @error('password')
                    <div class="text-red mt-2 text-sm">
                        {{ $message }}
                    </div>
                    @enderror
                </div>

                <div class="form-group pb-3">
                    <label for="password_confirmation">Password confirmation:</label>
                    <input type="password" class="form-control" id="password_confirmation" name="password_confirmation" value="{{ old('password_confirmation') }}" placeholder="Confirm your password...">
                    @error('password_confirmation')
                    <div class="text-red mt-2 text-sm">
                        {{ $message }}
                    </div>
                    @enderror
                </div>

                <button type="submit" class="btn btn-primary">Sign in</button>
            </form>
        </div>
    </div>
@endsection
