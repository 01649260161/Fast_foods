@extends('admin.layouts.glance')
@section('title')
    Quản Trị Newsletters
@endsection
@section('content')
    <h1 style="padding-top: 100px">Thêm Mới Newsletters</h1>
    <div class="row">
        <div class="form-three widget-shadow">
            @if ($errors->any())
                <div class="alert alert-danger">
                    <ul>
                        @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
            @endif
            <form class="form-horizontal" name="category" action="{{ url('admin/newletters') }}" method="post">
                @csrf
                <div class="form-group">
                    <label for="focusedinput" class="col-sm-2 control-label">Tên</label>
                    <div class="col-sm-8">
                        <input type="text" name="name" class="form-control" value ="{{old("name")}}" id="focusedinput" placeholder="Default Input">
                    </div>

                </div>

                <div class="form-group">
                    <label for="focusedinput" class="col-sm-2 control-label">Email</label>
                    <div class="col-sm-8">
                        <input type="text" name="email" class="form-control" value ="{{old("email")}}" id="focusedinput" placeholder="Default Input">
                    </div>

                </div>



                <div class="col-sm-offset-2">
                    <button type="submit" class="btn btn-success">Lưu</button>
                </div>
            </form>
        </div>
    </div>
    <script src="{{asset('/vendor/laravel-filemanager/js/lfm.js') }}"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            var domain = "http://foods.local/laravel-filemanager";
            $('.lfm-btn').filemanager('image', {prefix: domain});
        })
    </script>
@endsection
