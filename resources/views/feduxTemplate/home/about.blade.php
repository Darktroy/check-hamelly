@extends('feduxTemplate.mainTemplate')
@section('main')
            <div class="clearfix"></div>
            <!-- start page title -->
            <div class="page-title">
                <div class="container">
                    <div class="row">
                        <h3>About</h3>
                    </div>
                </div>
            </div>
            <!-- end page title -->
            <!-- start internal page -->
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <div class="contact-details">
                            <div class="details-text m-0">
                                <span></span>
                                <p class="bold">WHY CHOOSE US</p>
                            </div>
                            <p class="text2">is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</p>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="col-sm-6">
                            <div class="vision">
                                <div class="vision-bg">
                                    <span>OUR VISION</span>
                                    <p>is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="vision">
                                <div class="vision-bg mission-bg">
                                    <span>OUR MISSION</span>
                                    <p>is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="about-section mt-50">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-6">
                            <img src="{{ url('newDesign/img/about2.png')}}">
                        </div>
                        <div class="col-md-6">
                            <div class="contact-details">
                                <div class="details-text m-0">
                                    <span></span>
                                    <p class="bold">THE TRUCKING BRAND</p>
                                </div>
                                <p class="text2"> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="about-section">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="contact-details">
                                <div class="details-text m-0">
                                    <span></span>
                                    <p class="bold">SAFETY AND SECURITY</p>
                                </div>
                                <p class="text2 text3"><span class="num2">1</span>is simply dummy text of the printing and typesetting industry</p>
                                <p class="text2 text3"><span class="num2">2</span>is simply dummy text of the printing and typesetting industry</p>
                                <p class="text2 text3"><span class="num2">3</span>is simply dummy text of the printing and typesetting industry</p>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <img src="{{ url('newDesign/img/about3.jpg')}}">
                        </div>
                    </div>
                </div>
            </div>
            <!-- end internal page --!>
@stop