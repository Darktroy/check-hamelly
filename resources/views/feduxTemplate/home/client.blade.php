@extends('feduxTemplate.mainTemplate')
@section('main')﻿
            <!-- start div -->
            <div class="about-section">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-7">
                            <div class="contact-details main-text">
                                <h3>When shipping runs better</h3>
                                <p>,the whole world runs better too</p>
                                <a href="sign-up.html" class="the-btn6">Sign up Now<i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
                            </div>
                        </div>
                        <div class="col-md-5">
                            <img src="{{ url('newDesign/img/page2-bg.png')}}">
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
                                        <img src="{{ url('newDesign/img/icon3.png')}}"> 
                                    </div>
                                    <div class="details-text">
                                        <span></span>
                                        <p>transparency</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12">
                                <p class="text1"> With unparalleled pricing and clarity, you always have the information to make the right business decisions.</p>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="col-xs-12">
                                <div class="details details-new">
                                    <div class="details-icon">
                                        <img src="{{ url('newDesign/img/icon4.png')}}"> 
                                    </div>
                                    <div class="details-text">
                                        <span></span>
                                        <p>Freight at your fingertips</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12">
                                <p class="text1"> Simplified workflow and 24/7 support keeps your business running quickly and efficiently.</p>
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
                                        <p>Shipping techniques</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12">
                                <p class="text1"> Most other technologies have revolutionized the way people move. Now, we do the same for the shipping industry.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end section -->
            <!-- start app -->
            <div class="app how-work">
                <div class="container">
                    <div class="row">
                        <div class="col-md-5">
                            <div class="contact-details">
                                <div class="details-text m-0">
                                    <span></span>
                                    <p class="bold">HOW IT WORKS.</p>
                                </div>
                                <p class="text2 text3"><span class="num2">1</span>Using our mobile app or website, enter pickup and drop-off locations, and the vehicle you need. </p>
                                <p class="text2 text3"><span class="num2">2</span>Our professional drivers will pick up your materials and deliver your order to the job site safely and quickly. </p>
                                <p class="text2 text3"><span class="num2">3</span>Get back to your business. We keep you posted by email and SMS updates every step of the way.  It’s that easy.</p>
                            </div>
                        </div>
                        <div class="col-md-7 text-center">
                            <img src="{{ url('newDesign/img/app2.png')}}" class="app-img">
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
                            <p class="bold">THE RIGHT VEHICLE FOR THE JOB.</p>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6">
                        <div class="vehicle">
                            <div class="v-img"><img src="{{ url('newDesign/img/pic1.png')}}"></div>
                            <div class="one">SMALL</div>
                            <div class="two">CAR | SUV</div>
                            <div class="three">Perfect for delivering smaller loads such as hardware, electrical and paint</div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6">
                        <div class="vehicle">
                            <div class="v-img"><img src="{{ url('newDesign/img/pic2.png')}}"></div>
                            <div class="one">MEDIUM</div>
                            <div class="two">PICKUP TRUCK | CARGO VAN</div>
                            <div class="three">For deliveries including lumber, shingles or bulky mechanical equipment </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6">
                        <div class="vehicle">
                            <div class="v-img"><img src="{{ url('newDesign/img/pic3.png')}}"></div>
                            <div class="one">LARGE & SPECIALTY</div>
                            <div class="two">BOX TRUCK | BOOM | MOFFETT</div>
                            <div class="three">For large loads such as drywall, steel beams or palletized goods </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end vehicle -->
            <!-- start section -->
            <div class="container">
                <div class="row">
                    <div class="sign-free">
                        <p>Sign up for free and get started today</p>
                        <a href="#" class="the-btn6">Sign up Now<i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
                    </div>
                </div>
            </div>
            <!-- end section -->
@stop