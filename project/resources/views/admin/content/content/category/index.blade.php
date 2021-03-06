@extends('admin.layouts.glance')
@section('title')
    Quản Trị Danh Mục
@endsection
@section('content')
    <h1 style="padding-top: 100px">Quản Trị Danh Mục</h1>
    <div style="margin: 20px 0">
        <a href="{{  url('admin/content/category/create') }}" class="btn btn-success">Thêm Danh Mục</a>
    </div>
    <div class="tables">
        <div class="table table-hover table-dark">
            <h4>Tổng Số:</h4>
            <table class="table table-hover">
                <thead>
                <tr>
                    <th>#</th>
                    <th>Tên</th>
                    <th>Đường dẫn tĩnh</th>
                    <th>Ảnh</th>
                    <th>Hành động</th>

                </tr>
                </thead>
                <tbody>
                @foreach($cats as $cat)
                    <tr>
                        <th scope="row">{{$cat->id}}</th>
                        <td>{{$cat->name}}</td>
                        <td>{{$cat->slug}}</td>
                        <td><img src="{{ asset($cat->images) }}" style="margin-top:15px;max-height:100px;"></td>
                        <td>
                            <a href="{{ url('admin/content/category/'.$cat->id.'/edit') }}" class="btn btn-warning">Sửa</a>
                            <a href="{{ url('admin/content/category/'.$cat->id.'/delete') }}" class="btn btn-danger">Xóa</a>
                        </td>

                    </tr>
                @endforeach
                </tbody>
            </table>
            {{ $cats->links() }}
        </div>
    </div>


@endsection
