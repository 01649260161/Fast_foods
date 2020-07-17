<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->



<!DOCTYPE html>

<html lang="">
<title>@yield('title')</title>

<!-- head -->
@include('particals.head')
<!-- head end-->
<body>
<section id="container">
    <!--header start-->
@include('particals.header')
<!--header end-->

    <!--sidebar start-->

<!--sidebar end-->
    <!--main content start-->
    <section id="main-content" style='background-image: url("https://visme.co/blog/wp-content/uploads/2017/07/50-Beautiful-and-Minimalist-Presentation-Backgrounds-05.jpg");background-repeat: no-repeat;background-size:  cover'>
    @yield('content')
    <!-- footer -->
    @include('particals.footer')
    <!-- / footer -->
    </section>
    <!--main content end-->

</section>


<!-- main-js-->
@include('particals.main-js')
<!-- main-js end-->
