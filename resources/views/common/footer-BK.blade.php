<!-- <div class="container-fluid page-footer-back" style="padding: 0">
	<div class="footer-img1  footercontent"><img src="{{url('images/icon/footer2_2.png')}}"></div>
</div> -->

<footer class="container-fluid" style="background:#000;">

	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 footer-back pull-app-gutter--sides soft-app-gutter--sides">
		<div class="footer-head nt_fot col-lg-12 col-md-12 col-sm-12 col-xs-12">
			<div class="layout">
				@if(!Auth::user())
				<div class="layout_item col-lg-3 col-md-4 col-sm-4 col-xs-6">

					<a href="{{ url('signup_rider') }}" class="btn btn--reverse" style="margin: 0px;
					width: 165px;overflow: hidden;text-overflow: ellipsis;">{{trans('messages.footer.siginup_ride')}}</a>

				</div>
				<div class="layout_item col-lg-3 col-md-4 col-sm-4 col-xs-6 sm-pull-right">
					<a href="{{ url('signup_driver') }}" style="width: 165px;overflow: hidden;text-overflow: ellipsis;" class="btn btn--reverse-outline">{{trans('messages.footer.driver')}}</a>
				</div>
				@if(Auth::guard('company')->user()==null)
				<div class="layout_item col-lg-3 col-md-4 col-sm-4 col-xs-6 sm-pull-right">
					<a href="{{ url('signup_company') }}" style="width: 165px;overflow: hidden;text-overflow: ellipsis;" class="btn btn--reverse-outline">{{trans('messages.home.become_company')}}</a>
				</div>
				@endif
				@endif
				<div class="layout_item col-lg-3 col-md-4 col-sm-4 col-xs-12">
					<a href="{{ url('/') }}"><img class="footer-logo" src="{{ url(PAGE_LOGO_URL)}}"></a>
				</div>
			</div>
		</div>
	</div>

	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 footer-back pull-app-gutter--sides soft-app-gutter--sides" style="padding-top: 35px !important;">
		<div class="footer-head">
			<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12">
				<ul class="nav-list-one " style="padding:0px 15px;">
					<li>
						<a href="{{ url('ride') }}" class="city-link">{{trans('messages.footer.ride')}}
						</a>
					</li>
					<li>
						<a href="{{ url('drive') }}" class="city-link">{{trans('messages.footer.drive')}}
						</a>
					</li>
					<li>
						<a href="{{ url('safety') }}" class="city-link">{{trans('messages.footer.safety')}}
						</a>
					</li>

				</ul>
			</div>
			<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
				<ul class="nav-list-one " id="top-city-footer-small" style="padding:0px 15px;">
					@foreach($company_pages as $company_page)
					<li>
						<a class="_style_2HGMjk" href="{{ url($company_page->url) }}">
							{{ $company_page->name }}
						</a>
					</li>
					@endforeach
					<li>
						<a class="_style_2HGMjk" href="{{ url('how_it_works') }}"> 
							How It Works 
						</a>
					</li> 
				</ul>
			</div>
			<div class="col-lg-4 col-md-3 col-sm-3 col-xs-12">
				<div class="row">
				    
				<div class="col-sm-6 currency_select">
					{!! Form::select('language',$language, (Session::get('language')) ? Session::get('language') : $default_language[0]->value, ['class' => 'select payment-select paysel', 'aria-labelledby' => 'language-selector-label', 'id' => 'js-language-select','style'=>"width: 100%;"]) !!}
				</div>
				<div class="col-sm-6 currency_select">
					<select id="js-currency-select" class="select payment-select paysel" style="width: 100%; ">
						@foreach($currency_select as $code)
						<option value="{{$code}}" @if(session('currency') == $code ) selected="selected" @endif >{{$code}}
						</option>
						@endforeach
					</select>
				</div>
					<div class="col-sm-12 app-links clearfix mobile-links">
						@if($app_links[2]->value !="" || $app_links[0]->value !="" )
							<div class="app-title col-xs-12 p-0">
							{{trans('messages.footer.rider_app')}}
							</div>
						@endif
				@if($app_links[0]->value !="" )
					<a class="googleplay_class" href="{{$app_links[0]->value}}" target="_blank">
							<img src="{{ url('images/appstore.svg') }}" alt="Download on the Appstore" class="CToWUd">
						</a>
					@endif
				@if($app_links[2]->value !="" )
						<a href="{{$app_links[2]->value}}" target="_blank" class="ios_class">
							<img src="{{ url('images/icon/google-play1.png') }}" alt="Get it on Googleplay" class="CToWUd bot_footimg">
						</a>
					@endif
				</div>

				<div class="col-sm-12 app-links clearfix">
				@if($app_links[3]->value !="" || $app_links[1]->value !="" )
					<div class="app-title col-xs-12 p-0">
						{{trans('messages.footer.driver_app')}}
					</div>
					@endif
				@if($app_links[1]->value !="" )
				<a class="googleplay_class" href="{{$app_links[1]->value}}" target="_blank">
						<img src="{{ url('images/appstore.svg') }}" alt="Download on the Appstore" class="CToWUd">
					</a>
					@endif

				@if($app_links[3]->value !="" )

					<a href="{{$app_links[3]->value}}" target="_blank" class="ios_class">
						<img src="{{ url('images/icon/google-play1.png') }}" alt="Get it on Googleplay" class="CToWUd bot_footimg">
					</a>
					@endif
                    </div>
				</div>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 social-icons">
				<div class="foot_soc">
					@for($i=0; $i < count($join_us); $i++)
					@if($join_us[$i]->value)
					<a href="{{ $join_us[$i]->value }}" target="_blank"> 
						<span class="fa fa-{{ str_replace('_','-',$join_us[$i]->name) }}"></span>
					</a>        
					@endif
					@endfor
				</div>
				<div class="app-links clearfix">
				@if($app_links[2]->value !="" || $app_links[0]->value !="" )
					<div class="app-title col-xs-12 p-0">
						{{trans('messages.footer.rider_app')}}
					</div>
					@endif
					@if($app_links[0]->value !="" )
					<a class="googleplay_class" href="{{$app_links[0]->value}}" target="_blank">
							<img src="{{ url('images/appstore.svg') }}" alt="Download on the Appstore" class="CToWUd">
						</a>
					@endif
				@if($app_links[2]->value !="" )
						<a href="{{$app_links[2]->value}}" target="_blank" class="ios_class">
							<img src="{{ url('images/icon/google-play1.png') }}" alt="Get it on Googleplay" class="CToWUd bot_footimg">
						</a>
					@endif
				</div>
			</div>
			<div class="col-lg-12 col-sm-12 col-md-12 col-xs-12" >
				<div class="text-center footlo">
					<span class="_style_zVjAb" dir="ltr" data-reactid="661">© {{ $site_name }}, Inc.</span>
				</div>
			</div>
		</div>
	</div>
</div>
</div>
</div>
</footer>
<style type="text/css">
	footer .nav-list-one li {
		padding-bottom: 5px;
	}
	#top-city-footer li {
		display: inline-block;
		padding-right: 15px;
	}
	#top-city-footer li a {
		font-size: 13px !important;
	}
</style>