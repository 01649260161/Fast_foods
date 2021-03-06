@extends('admin.layouts.glance')
@section('title')
    Quản Trị Bài Viết
@endsection
@section('content')
    <h1 style="padding-top: 100px">Quản Trị Bài Viết</h1>
    <div style="margin: 20px 0">
        <a href="{{  url('admin/content/post/create') }}" class="btn btn-success">Thêm Bài Viết</a>
    </div>
    <div class="tables">
        <div class="table table-hover table-dark">
            <h4>Tổng Số:</h4>
            <table class="table table-hover">
                <thead>
                <tr>
                    <th>#</th>
                    <th>Tên</th>
                    <th>Tác Giả</th>
                    <th>Lượt xem</th>
                    <th>Ảnh</th>
                    <th>Hành động</th>

                </tr>
                </thead>
                <tbody>
                @foreach($posts as $post)
                    <tr>
                        <th scope="row">{{$post->id}}</th>
                        <td>{{$post->name}}</td>
                        <td>{{$post->author_id}}</td>
                        <td>{{$post->view}}</td>
                        <td>
                            <img src="{{ asset($post->images) }}" style="margin-top:15px;max-height:100px;"></td>
                        <td>
                            <a href="{{ url('admin/content/post/'.$post->id.'/edit') }}" class="btn btn-warning">Sửa</a>
                            <a href="{{ url('admin/content/post/'.$post->id.'/delete') }}" class="btn btn-danger">Xóa</a>
                        </td>

                    </tr>
                @endforeach
                </tbody>
            </table>
            {{ $posts->links() }}
        </div>
    </div>


@endsection
