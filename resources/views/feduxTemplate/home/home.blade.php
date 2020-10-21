@extends('feduxTemplate.mainTemplate')
@section('main')
 <div class="clearfix"></div>
            <!-- start header3 -->
            <div class="header3">
                <img class="header3-img" src="{{ url('newDesign/img/header4.jpg')}}">
                <div class="header3-content">
                    <div class="container">
                        <h2>First Class Logistics</h2>
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry</p>
                        <div class="search">
<!--                            <form>
                                <div class="form-group origin form-bg">
                                    <input type="text" class="form-control" placeholder="Pickup point">
                                </div>
                                <div class="form-group destination form-bg">
                                    <input type="text" class="form-control" placeholder="Drop-off point">
                                </div>  
                                <div class="form-group form-btn">
                                    <button type="submit" class="the-btn2">Search</button>
                                </div>
                            </form>-->
                        </div>
                    </div>
                </div>
            </div>
            <!-- end header3 -->
            <!-- start section -->
            <div class="section">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12">
                            <h3 class="title">Hamelly! What we Deliver</h3>
                        </div>
                        <div class="col-md-5ths col-xs-6">
                            <div class="deliver">
                                <img src="{{ url('newDesign/img/img5.png')}}">
                                <h4>Industrial Materials</h4>
                            </div>
                        </div>
                        <div class="col-md-5ths col-xs-6">
                            <div class="deliver">
                                <img src="{{ url('newDesign/img/img1.png')}}">
                                <h4>Food and Beverage</h4>
                            </div>
                        </div>
                        <div class="col-md-5ths col-xs-6">
                            <div class="deliver">
                                <img src="{{ url('newDesign/img/img2.png')}}">
                                <h4>Retail Goods</h4>
                            </div>
                        </div>
                        <div class="col-md-5ths col-xs-6">
                            <div class="deliver">
                                <img src="{{ url('newDesign/img/img3.png')}}">
                                <h4>Consumer Packaged</h4>
                            </div>
                        </div>
                        <div class="col-md-5ths col-xs-6">
                            <div class="deliver">
                                <img src="{{ url('newDesign/img/img4.png')}}">
                                <h4>Energy, Oil and Gas</h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end section -->
            <!-- start app -->
            <div class="app">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8">
                            <h3>Improve your Move</h3>
                            <p>We're here to make your life easier</p>
                            <div class="download">
                                <a href="#"><img src="{{ url('newDesign/img/apple.png')}}"></a>
                                <a href="#"><img src="{{ url('newDesign/img/android.png')}}"></a>
                            </div>
                        </div>
                        <div class="col-sm-4 app-img">
                            <img src="{{ url('newDesign/img/app.png')}}">
                        </div>
                    </div>
                </div>
            </div>
            <!-- end app -->
            <!-- start section -->
            <div class="section">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="col-xs-12">
                                <div class="details">
                                    <div class="details-icon">
                                        <img src="{{ url('newDesign/img/icon1.png')}}"> 
                                    </div>
                                    <div class="details-text">
                                        <span></span>
                                        <p>WE ARE WORKING FOR YOU</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12">
                                <p class="text1">Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book</p>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="col-xs-12">
                                <div class="details">
                                    <div class="details-icon">
                                        <img src="{{ url('newDesign/img/icon2.png')}}"> 
                                    </div>
                                    <div class="details-text">
                                        <span></span>
                                        <p>THE BEST JUST FOR YOU</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12">
                                <p class="text1">Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end section -->
@stop