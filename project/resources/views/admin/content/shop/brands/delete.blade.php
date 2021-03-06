@extends('admin.layouts.glance')
@section('title')
    Xoá Nhãn Hiệu
@endsection
@section('content')
    <h1 style="padding-top: 100px">Xóa Nhãn Hiệu {{$brand->id .' : '.$brand->name}}</h1>
    <div class="row">
        <div class="form-three widget-shadow">
            <form class="form-horizontal" name="post" action="{{ url('admin/shop/brands/'.$brand->id.'/delete') }}" method="post">
                @csrf

                <div class="col-sm-offset-2">
                    <button type="submit" class="btn btn-success">Delete</button>
                </div>
            </form>
        </div>
    </div>

@endsection