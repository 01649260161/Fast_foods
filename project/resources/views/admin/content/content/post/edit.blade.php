@extends('admin.layouts.glance')
@section('title')
    Sửa Danh Mục
@endsection
@section('content')
    <h1 style="padding-top: 100px">Sửa Bài Viết {{$post->id .' : '.$post->name}}</h1>
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
            <form class="form-horizontal" name="post" action="{{ url('admin/content/post/'.$post->id) }}" method="post">
                @csrf
                <div class="form-group">
                    <label for="focusedinput" class="col-sm-2 control-label">Tên Bài Viết</label>
                    <div class="col-sm-8">
                        <input type="text" name="name" class="form-control1" id="focusedinput" value="{{$post->name}}" placeholder="Default Input">
                    </div>

                </div>
                <div class="form-group">
                    <label for="focusedinput" class="col-sm-2 control-label">Danh Mục</label>
                    <div class="col-sm-8">
                        <select name="cat_id" id="">
                            <option value="">Không Có Danh Mục</option>
                            @foreach($cats as $cat)
                                <option value="{{ $cat->id }}" <?php echo ($post->cat_id == $cat->id)? 'selected':'' ?>>{{ $cat->name }}</option>
                            @endforeach
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label for="focusedinput" class="col-sm-2 control-label">Tag Danh Mục</label>
                    <div class="col-sm-8">
                        <select name="tag_id" id="">
                            <option value="">Không Có Danh Mục</option>
                            @foreach($tags as $tag)
                                <option value="{{ $tag->id }}" <?php echo ($post->tag_id == $tag->id)? 'selected':'' ?>>{{ $tag->name }}</option>
                            @endforeach
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label for="focusedinput" class="col-sm-2 control-label">Đường dẫn tĩnh</label>
                    <div class="col-sm-8">
                        <input type="text" name="slug" class="form-control1" id="focusedinput" value="{{$post->slug}}" placeholder="Default Input">
                    </div>

                </div>
                <div class="form-group">
                    <label for="focusedinput" class="col-sm-2 control-label">Ảnh</label>
                    <div class="col-sm-8">
                <span class="input-group-btn">
                     <a id="lfm1" data-input="thumbnail1" data-preview="holder1" class="lfm-btn btn btn-primary">
                       <i class="fa fa-picture-o"></i> Chọn
                     </a>
                   </span>
                        <input id="thumbnail1" class="form-control" type="text" name="images" value="{{ $post->images }}" placeholder="Default Input">
                        <img id="holder1" src="{{ asset($post->images) }}" style="margin-top:15px;max-height:100px;">
                    </div>
                </div>




                <div class="form-group">
                    <label for="txtarea1" class="col-sm-2 control-label textarea.mytinymce">Mô Tả Ngắn</label>
                    <div class="col-sm-8"><textarea name="intro" id="txtarea1" cols="50" rows="4"  class="form-control1 mytinymce">{{$post->intro}}</textarea></div>
                </div>

                <div class="form-group">
                    <label for="txtarea1" class="col-sm-2 control-label textarea.mytinymce">Mô Tả</label>
                    <div class="col-sm-8"><textarea name="desc" id="txtarea1" cols="50" rows="4"  class="form-control1 mytinymce">{{$post->desc}}</textarea></div>
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
