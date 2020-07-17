@extends('layouts.homepages.glance')
@section('title')
    Chỉnh sửa thông tin
@endsection
@section('content')
    <h1 style="text-align: center;padding-top: 128px">Sửa thông tin: {{$customer->name}}</h1>
    <div class="container">
        <div class="row">
            <div class="col-md-12 form-three widget-shadow">
                @if ($errors->any())
                    <div class="alert alert-danger">
                        <ul>
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                @endif
                <form class="form-horizontal" name="page" action="{{ url('customer/'.$customer->id) }}" method="post">
                        @csrf
                        <div class="form-group">
                            <label for="focusedinput" class="col-sm-2 control-label">Tên </label>
                            <div class="col-sm-12">
                                <input type="text" name="name" class="form-control" id="focusedinput" value="{{$customer->name}}" placeholder="Default Input">
                            </div>

                        </div>

                        <div class="form-group">
                            <label for="focusedinput" class="col-sm-2 control-label">Email </label>
                            <div class="col-sm-12">
                                <input type="text" name="email" class="form-control" id="focusedinput" value="{{$customer->email}}" placeholder="Default Input">
                            </div>

                        </div>

                        <div class="form-group">
                            <label for="focusedinput" class="col-sm-2 control-label">Password </label>
                            <div class="col-sm-12">
                                <input type="text" name="password" class="form-control" id="focusedinput"  placeholder="Default Input">
                            </div>
                        </div>


                        <div class="col-sm-offset-2">
                            <button type="submit" class="btn btn-success">Submit</button>
                        </div>
                    </form>
            </div>
        </div>
    </div>

@endsection


