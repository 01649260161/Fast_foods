@extends('admin.layouts.glance')
@section('title')
    Quản Trị Menu
@endsection
@section('content')
    <h1 style="padding-top: 100px">Thêm Mới Menu</h1>
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
            <form class="form-horizontal" name="menu" action="{{ url('admin/menu') }}" method="post">
                @csrf
                <div class="form-group">
                    <label for="focusedinput" class="col-sm-2 control-label">Tên</label>
                    <div class="col-sm-8">
                        <input type="text" name="name" class="form-control" value ="{{old("name")}}" id="focusedinput" placeholder="Default Input">
                    </div>

                </div>
                <div class="form-group">
                    <label for="focusedinput" class="col-sm-2 control-label">Đường dẫn tĩnh</label>
                    <div class="col-sm-8">
                        <input type="text" name="slug" class="form-control" value ="{{old("slug")}}" id="focusedinput" placeholder="Default Input">
                    </div>

                </div>

                <div class="form-group">
                    <label for="focusedinput" class="col-sm-2 control-label">Vị trí</label>
                    <div class="col-sm-8">
                        <select name="location">
                            <option value="0">Không Hiện</option>
                            @foreach($locations as $key_location => $location)
                                <option value="{{$key_location}}">{{$location}}</option>
                            @endforeach
                        </select>
                    </div>
                </div>



                <div class="form-group">
                    <label for="txtarea1" class="col-sm-2 control-label textarea.mytinymce">Mô Tả Ngắn</label>
                    <div class="col-sm-8"><textarea name="desc" id="txtarea1" cols="50" rows="4" class="form-control1 mytinymce">{{old("desc")}}</textarea></div>
                </div>




                <div class="col-sm-offset-2">
                    <button type="submit" class="btn btn-success">Lưu</button>
                </div>
            </form>
        </div>
    </div>

@endsection
