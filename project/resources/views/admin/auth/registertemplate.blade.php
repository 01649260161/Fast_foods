@extends('admin.layouts.admin')

@section('content')

    <div class="w3layouts-main">
        <h2>{{ __('Tạo mới quản lý') }}</h2>
        <form action="{{ route('admin.register.store') }}" method="post">
            @csrf

            <input id="name" type="text" placeholder="TÊN" class="ggg {{ $errors->has('name') ? ' is-invalid' : '' }}" name="name" value="{{ old('name') }}" required autofocus>

            @if ($errors->has('name'))
                <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('name') }}</strong>
                                    </span>
            @endif


            <input id="email" type="email" placeholder="E-MAIL" class="ggg{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ old('email') }}" required>

            @if ($errors->has('email'))
                <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
            @endif



            <input id="password" type="password"  placeholder="MẬT KHẨU" class="ggg {{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" required>

            @if ($errors->has('password'))
                <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
            @endif



                <input id="password-confirm" type="password" placeholder="NHẬP LẠI MẬT KHẨU" class="ggg" name="password_confirmation" required>



            <h4><input type="checkbox">Tôi đồng ý với điều khoản dịch vụ và chính sách bảo mật</h4>

            <div class="clearfix"></div>
            <input type="submit" value="Gửi" name="register">
        </form>
        <p>Đã đăng ký.<a href="{{route('admin.auth.login')}}">Đăng nhập</a></p>
    </div>

@endsection
