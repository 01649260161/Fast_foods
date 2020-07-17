@extends('layouts.homepages.glance')
@section('title')
    Lịch sử đặt hàng
@endsection
@section('content')
    <h1 style="text-align: center;padding-top: 300px">Danh sách đặt hàng:</h1>
    <div class="container">
        <div class="table-agile-info">
            <div class="panel panel-default">
                <div>
                    <table class="table" ui-jq="footable">
                        <thead>
                        <tr>
                            <th data-breakpoints="xs">ID</th>
                            <th>Tên</th>
                            <th>Email</th>
                            <th>SDT</th>
                            <th >Địa chỉ</th>
                            <th >Tổng tiền</th>
                            <th >Trạng thái</th>
                            <th >Actions</th>
                        </tr>
                        </thead>
                        <tbody>
                        <?php $i=1;?>
                        @foreach($orders as $order)
                            <tr>
                                <td>{{$i}}</td>
                                <td>{{$order->customer_name}}</td>
                                <td>{{$order->customer_email}}</td>
                                <td>{{$order->customer_phone}}</td>
                                <td>{{$order->customer_address}}</td>
                                <td>{{$order->total_price}}</td>
                                <td><?php
                                    if($order->status == 0){
                                        echo "Chưa Thanh Toán";
                                    }elseif($order->status == 1){
                                        echo "Đã Thanh Toán";
                                    }elseif($order->status == 2){
                                        echo "Đang Vận Chuyển";
                                    }elseif($order->status == 3){
                                        echo "Đã Giao Hàng";
                                    }elseif($order->status == 4){
                                        echo "Hủy Đơn";
                                    }else{
                                        echo "Không xác định";
                                    }


                                    ?></td>
                                <td>
                                    <a href="http://foods.local/customer/{{$order->id}}/view" class="btn btn-info">View</a>
                                </td>
                            </tr>
                            <?php $i++?>
                        @endforeach
                        </tbody>
                    </table>
                </div>
                <!---728x90--->
            </div>
        </div>
    </div>
    <div class="container">
        <a href="http://foods.local/" class="btn btn-dark">Back</a>
    </div>

@endsection


