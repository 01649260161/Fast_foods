@extends('admin.layouts.glance')
@section('title')
    Quản Trị Trang
@endsection
@section('content')
    <h1 style="padding-top: 100px">Thêm Mới ảnh nền</h1>
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
            <form class="form-horizontal" name="category" action="{{ url('admin/banners') }}" method="post">
                @csrf
                <div class="form-group">
                    <label for="focusedinput" class="col-sm-2 control-label">Tên ảnh nền</label>
                    <div class="col-sm-8">
                        <input type="text" name="name" class="form-control" value ="{{old("name")}}" id="focusedinput" placeholder="Default Input">
                    </div>

                </div>
                <div class="form-group">
                    <label for="focusedinput" class="col-sm-2 control-label">Link</label>
                    <div class="col-sm-8">
                        <input type="text" name="link" class="form-control" value ="{{old("link")}}" id="focusedinput" placeholder="Default Input">
                    </div>

                </div>

                <div class="form-group">
                    <label for="focusedinput" class="col-sm-2 control-label">Vị Trí</label>
                    <div class="col-sm-8">
                        <select name="location_id" id="">
                            <option value="0">Không Hiện</option>
                            @foreach($locations as $key => $location)
                                <option value="{{$key}}">{{$location}}</option>

                            @endforeach
                        </select>
                    </div>

                </div>


                <div class="form-group">
                    <label for="focusedinput" class="col-sm-2 control-label">Ảnh</label>
                    <div class="col-sm-8">
                        <span class="input-group-btn">
                             <a id="lfm1" data-input="thumbnail1" data-preview="holder1" class="lfm-btn btn btn-primary">
                               <i class="fa fa-picture-o"></i> Choose
                             </a>
                           </span>
                        <input id="thumbnail1" class="form-control" type="text" name="image" value="{{old('image')}}" placeholder="Default Input">
                        <img id="holder1"  style="margin-top:15px;max-height:100px;">
                    </div>
                </div>




                <div class="form-group">
                    <label for="txtarea1" class="col-sm-2 control-label textarea.mytinymce">Mô Tả Ngắn</label>
                    <div class="col-sm-8"><textarea name="intro" id="txtarea1" cols="50" rows="4" class="form-control1 mytinymce">{{old("intro")}}</textarea></div>
                </div>

                <div class="form-group">
                    <label for="txtarea1" class="col-sm-2 control-label textarea.mytinymce">Mô Tả</label>
                    <div class="col-sm-8"><textarea name="desc" id="txtarea1" cols="50" rows="4" class="form-control1 mytinymce">{{old("desc")}}</textarea></div>
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
