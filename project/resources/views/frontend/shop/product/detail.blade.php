@extends('layouts.homepages.glance')
@section('title')
    Sản Phẩm {{$product->name}}
@endsection
@section('content')

    <style type="text/css">

        .resp-tabs-container,.responsive_tabs{
            width: 100%;
        }
    </style>

    <?php
        $images = (isset($product->images) && $product->images) ? json_decode($product->images) :array();
    ?>
    <section class="banner-bottom py-lg-5 py-3" style="margin-top: 84px">
            <div class="container">
                <div class="inner-sec-shop pt-lg-4 pt-3" >
                    <div class="row">
{{--                        <div class="col-lg-4 single-right-left " style="border-radius: 15px 0 0 15px;;padding: 15px">--}}
{{--                            <div class="grid images_3_of_2">--}}
{{--                                <div class="flexslider1">--}}
{{--                                    <ul class="slides">--}}
{{--                                        @foreach($images as $image)--}}
{{--                                        <li data-thumb="{{$image}}">--}}
{{--                                            <div class="thumb-image"> <img src="{{asset($image)}}" data-imagezoom="true" class="img-fluid" alt=" "> </div>--}}
{{--                                        </li>--}}
{{--                                        @endforeach--}}

{{--                                    </ul>--}}
{{--                                    <div class="clearfix"></div>--}}
{{--                                </div>--}}
{{--                            </div>--}}
{{--                        </div>--}}

                        <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                                <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                                <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img src="{{asset('/source/shop-product/web/images/f2.jpg')}}" class="d-block w-100" alt="...">
                                    <div class="carousel-caption d-none d-md-block">
                                        <h5>First slide label</h5>
                                        <p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <img src="{{asset('/source/shop-product/web/images/f2.jpg')}}" class="d-block w-100" alt="...">
                                    <div class="carousel-caption d-none d-md-block">
                                        <h5>Second slide label</h5>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <img src="{{asset('/source/shop-product/web/images/f2.jpg')}}" class="d-block w-100" alt="...">
                                    <div class="carousel-caption d-none d-md-block">
                                        <h5>Third slide label</h5>
                                        <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
                                    </div>
                                </div>
                            </div>
                            <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>

                        <div class="col-lg-8 single-right-left simpleCart_shelfItem" style=" border-radius: 0 15px 15px 0;padding: 15px">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-6">
                                    <h2 style="color: #ea1d5d">{{$product->name}}</h2>
                            <p><span class="item_price">{{number_format($product->priceSale)}} VND</span>
                                <del>{{number_format($product->priceCore)}} VND</del>
                            </p>
                            <p>Discount : <?php if($product->priceCore > $product->priceSale){
                                    $price = $product->priceCore - $product->priceSale;
                                    echo (int)(($price/($product->priceCore))*100);
                                }else{
                                    echo (int)(($product->priceSale/($product->priceCore))*100);
                                }?>%</p>
                            <?php echo 'Mô Tả Ngắn:' .$product->intro?>

                            <form action="<?php echo url('shop/cart/add')?>" method="get">
                                @csrf
                                <input type="hidden" name="cmd" value="_cart">
                                <input type="hidden" name="add" value="1">
                                <input type="hidden" name="w3ls1_item" value="{{$product->id}}">
                                <input type="hidden" name="amount" value="{{$product->priceSale}}">
                                <button type="submit" class="toys-cart ptoys-cart">
                                    <i class="fas fa-cart-plus"></i>
                                </button>
                            </form>
                            <div class="rating1">
                                <ul class="stars">
                                    <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                </ul>
                            </div>
                            <div class="description">
                                <label for="">Thông tin ship hàng :</label>
                                <?php echo $product->ship_info?>
                            </div>

                            <ul class="footer-social text-left mt-lg-4 mt-3">
                                <li>Chia sẻ trên : </li>
                                <li class="mx-1">
                                    <a href="#">
                                        <span class="fab fa-facebook-f"></span>
                                    </a>
                                </li>
                                <li class="">
                                    <a href="#">
                                        <span class="fab fa-twitter"></span>
                                    </a>
                                </li>
                                <li class="mx-1">
                                    <a href="#">
                                        <span class="fab fa-google-plus-g"></span>
                                    </a>
                                </li>
                                <li class="">
                                    <a href="#">
                                        <span class="fab fa-linkedin-in"></span>
                                    </a>
                                </li>
                                <li class="mx-1">
                                    <a href="#">
                                        <span class="fas fa-rss"></span>
                                    </a>
                                </li>
                            </ul>
                                    </div>
                                    <div class="col-md-6 form-review-customer">
                                    <h3 style="text-align: center;">Đánh giá của khách hàng</h3>
                                        <div class="form-reviews">
                                            <ul>
                                                @if(count($reviews) != 0)
                                                @foreach($reviews as $review)
                                                <li>
                                                    <label style="color: blue;" for="">{{$review->name . " :"}}</label>
                                                    <p>{{$review->content}}</p>
                                                </li>
                                                @endforeach
                                                @else
                                                    <div style="text-align: center;padding-top:25px">Chưa có đánh giá nào</div>
                                                @endif
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="clearfix"> </div>
                        <!--/tabs-->
                        <div class="responsive_tabs">
                            <div id="horizontalTab">
                                <ul class="resp-tabs-list">
                                    <li>Mô tả</li>
                                    <li>Đánh giá</li>
                                    <li>Thông tin</li>
                                    <li>Trợ giúp</li>
                                </ul>
                                <div class="resp-tabs-container">
                                    <!--/tab_one-->
                                    <div class="tab1">
                                        <div class="single_page">
                                            <h6>THÔNG TIN MÔ TẢ:</h6>
                                            <?php echo $product->desc;?>
                                        </div>
                                    </div>
                                    <!--//tab_one-->
                                    <div class="tab2">
                                        <div class="single_page">
                                            <div class="bootstrap-tab-text-grids">
                                                <div class="bootstrap-tab-text-grid">


                                                </div>
                                                <div class="add-review">
                                                    <h4>Thêm mới đánh giá:</h4>
                                                    <form action="{{ url('review/'.$product->id) }}" method="post">
                                                    @csrf
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <input type="text" name="name" required="">
                                                            </div>
                                                            <div class="col-md-6">
                                                                <input type="email" name="email" required="">
                                                            </div>
                                                        </div>
                                                        <textarea name="content" required=""></textarea>
                                                        <input type="submit" value="GỬI">
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab3">
                                        <div class="single_page">
                                            <h6>THÔNG TIN:</h6>
                                            <?php echo $product->infomation?>
                                        </div>
                                    </div>
                                    <div class="tab4">
                                        <div class="single_page">
                                            <h6>TRỢ GIÚP</h6>
                                            <?php echo $product->help?>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--//tabs-->
                    </div>
                </div>
            </div>
        </section>




<style>
    .form-review-customer .form-reviews{
        border: 1px solid #ccc;
        box-sizing: border-box;
        overflow: auto;
        height: 420px;
    }
    .form-review-customer .form-reviews>ul>li{
        border-bottom: 1px solid #ccc;
    }
    .form-review-customer .form-reviews>ul>li p{
        font-size: 12px;
    }
</style>
    <script type="text/javascript">

    </script>
@endsection
