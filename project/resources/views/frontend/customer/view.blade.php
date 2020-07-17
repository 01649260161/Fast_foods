@extends('layouts.homepages.glance')
@section('title')
    Chi tiết đặt hàng
@endsection
@section('content')
    <?php
    use Illuminate\Support\Facades\DB;
    ?>
    <h1 style="text-align: center;padding-top: 300px">Chi tiết đặt hàng:</h1>
    <div class="container">
        <div class="table-agile-info">
            <div class="panel panel-default">
                <div>
                    <table class="table" ui-jq="footable">
                        <thead>
                        <tr>
                            <th data-breakpoints="xs">ID</th>
                            <th>Tên sản phẩm</th>
                            <th>Số lượng</th>
                            <th >Đơn giá</th>
                            <th >Tổng tiền</th>
                        </tr>
                        </thead>
                        <tbody>
                        <?php
                            $i=1;
                        ?>
                        @foreach($orderDetails as $orderDetail)
                            <tr>
                                <td>{{$i}}</td>
                                <td>
                                    <?php
                                        $item = DB::table('shop_product')->where('id', $orderDetail->product_id)->first();
                                        echo $item->name;
                                    ?>
                                </td>
                                <td>{{$orderDetail->quantity}}</td>
                                <td>{{$orderDetail->unit_price}}</td>
                                <td>{{$orderDetail->total_price}}</td>
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
        <a href="http://foods.local/customer/<?php echo Auth::user()->id?>/history" class="btn btn-dark">Back</a>
    </div>
@endsection


