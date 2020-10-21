 <!-- start header2 -->
            <div class="header2">
                <div class="container">
                    <div class="row">
                        <nav class="navbar navbar-inverse">
                          <div class="container-fluid">
                            <div class="navbar-header">
                              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span> 
                              </button>
                              <a class="navbar-brand" href="#"><img src="{{url('newDesign/img/logo.png')}}" alt="Hamelly logo""></a>
                            </div>
                            <div class="collapse navbar-collapse" id="myNavbar">
                              <ul class="nav navbar-nav navbar-right">
                                  @if($client == 'active')
                                <li><a href="sign-up.html" class="the-btn1">Sign Up</a></li>
                                @endif
                              </ul>
                                <ul class="nav navbar-nav navbar-center">
                                <li class="{{$home}}"><a href="{{url('')}}">Home</a></li>
                                <li class="{{$aboutus}}"><a href="{{url('about-us')}}">About</a></li>
                                <li class="{{$contact}}"><a href="{{url('contact-us')}}">Contact</a></li>
                                <li class="{{$client}}"><a href="{{url('client')}}">Client</a></li>
                                <li class="{{$driver}}"><a href="{{url('driver')}}">Driver</a></li>
                              </ul>
                            </div>
                          </div>
                        </nav>
                    </div>
                </div>
            </div>
            <!-- end header2 -->