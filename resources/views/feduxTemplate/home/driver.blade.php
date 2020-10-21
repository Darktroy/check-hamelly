@extends('feduxTemplate.mainTemplate')
@section('main')﻿
            <!-- start div -->
            <div class="about-section">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-7">
                            <div class="contact-details main-text">
                                <h3>Work that puts you first</h3>
                                <p>Drive when you want, earn what you need</p>
                                <a href="sign-up.html" class="the-btn6">Sign up Now<i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
                            </div>
                        </div>
                        <div class="col-md-5">
                            <img src="{{ url('newDesign/img/page1-bg.png')}}">
                        </div>
                    </div>
                </div>
            </div>
            <!-- end div -->
            <!-- start section -->
            <div class="section">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-4 col-md-6">
                            <div class="col-xs-12">
                                <div class="details details-new">
                                    <div class="details-icon">
                                        <img src="{{ url('newDesign/img/icon6.png')}}"> 
                                    </div>
                                    <div class="details-text">
                                        <span></span>
                                        <p>Set your own schedule</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12">
                                <p class="text1"> Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</p>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="col-xs-12">
                                <div class="details details-new">
                                    <div class="details-icon">
                                        <img src="{{ url('newDesign/img/icon7.png')}}"> 
                                    </div>
                                    <div class="details-text">
                                        <span></span>
                                        <p>Earn more at every turn</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12">
                                <p class="text1"> Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type </p>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="col-xs-12">
                                <div class="details details-new">
                                    <div class="details-icon">
                                        <img src="{{ url('newDesign/img/icon5.png')}}"> 
                                    </div>
                                    <div class="details-text">
                                        <span></span>
                                        <p>Let the app lead the way</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12">
                                <p class="text1"> Lorem Ipsum has been the industry's standard dummy text </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end section -->
            <!-- start app -->
            <div class="app how-work how-work2">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="contact-details">
                                <div class="details-text m-0">
                                    <span></span>
                                    <p class="bold">About the Driver app</p>
                                </div>
                                <p class="text2 text3">When you want to make money, just open the app and you’ll start to receive trip requests. You’ll get information about your rider and directions to their location and destination. When the trip is over, you’ll receive another nearby request. And if you're ready to get off the road, you can sign off at any time.</p>
                            </div>
                        </div>
                        <div class="col-md-6 text-center">
                            <img src="{{ url('newDesign/img/app3.png')}}" class="app-img">
                        </div>
                    </div>
                </div>
            </div>
            <!-- end app -->
            <!-- start vehicle -->
            <div class="container mb-50">
                <div class="row">
                    <div class="col-sm-12 text-center">
                        <div class="details-text details-text3 mb-25 details-text-center">
                            <span></span>
                            <p class="bold">It’s easy to get started</p>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6">
                        <div class="vehicle vehicle2">
                            <div class="v-img"><img src="{{ url('newDesign/img/pic4.png')}}"></div>
                            <div class="one"><span class="num2">1</span>Sign up online</div>
                            <div class="three">Tell us a little about yourself and your car. Vehicle requirements vary by region, so we’ll show you what’s needed for your city.</div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6">
                        <div class="vehicle vehicle2">
                            <div class="v-img"><img src="{{ url('newDesign/img/pic5.png')}}"></div>
                            <div class="one"><span class="num2">2</span>Share some documents</div>
                            <div class="three">Just upload your license, registration, proof of insurance, and the necessary information to start a driver screening.</div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6">
                        <div class="vehicle vehicle2">
                            <div class="v-img"><img src="{{ url('newDesign/img/pic6.png')}}"></div>
                            <div class="one"><span class="num2">3</span>Get the app and go</div>
                            <div class="three">Once you’re approved to drive with Rydetogo as an independent contractor, we’ll provide everything you need to be a success on the road.</div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end vehicle -->
@stop