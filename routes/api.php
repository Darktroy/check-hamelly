<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });

// cron request for schedule ride
Route::post('testtime','RiderController@testtime');


//TokenAuthController

Route::post('register', 'TokenAuthController@register');
Route::get('language_list', 'TokenAuthController@language_list');
Route::get('test', 'TokenAuthController@test');

Route::post('authenticate-to-get-token', 'TokenAuthController@authenticate');
Route::post('rest-password', 'ResetPasswordController@require_rest_link');

//Route::get('signup', 'TokenAuthController@signup');#error function not found


Route::post('login', 'TokenAuthController@login');

Route::post('numbervalidation', 'TokenAuthController@numbervalidation');

Route::post('emailvalidation', 'TokenAuthController@emailvalidation');

Route::post('forgotpassword', 'TokenAuthController@forgotpassword');#$NOTE logical error  sol. send SMS

Route::post('paypal-currency-conversion', 'TokenAuthController@paypal_currency_conversion');
Route::get('currency-list', 'TokenAuthController@currency_list');
Route::post('socialsignup', 'TokenAuthController@socialsignup');#$Note fucking logical error what does what

//TokenAuthController


// for Login check

Route::group(['middleware' => 'jwt.auth'], function () {

Route::get('cron_request_car', 'RiderController@cron_request_car');
Route::get('check_version', 'RiderController@check_version');
    Route::post('language-update','TokenAuthController@language');
    Route::post('device-update', 'TokenAuthController@update_device');

    Route::get('logout', 'TokenAuthController@logout');
//    Route::post('check-login','TokenAuthController@check_login');#error function not found
    Route::post('refresh-token', 'TokenAuthController@token'); #Full Refactored
    Route::post('authenticate/user', 'TokenAuthController@getAuthenticatedUser');

//DriverController

Route::post('driver-update-location', 'DriverController@updatelocation');
Route::get('driver-stripe-supported-country-list', 'DriverController@stripe_supported_country_list');
Route::get('driver-country-list', 'DriverController@country_list');
Route::post('driver-accept-request', 'DriverController@accept_request');
Route::post('driver-check-status', 'DriverController@check_status');
Route::post('driver-cash-collected', 'DriverController@cash_collected');

Route::get('driver-payout-details', 'DriverController@payout_details');
Route::post('driver-payout-changes', 'DriverController@payout_changes');
Route::post('driver-bank-details','DriverController@driver_bank_details');
Route::post('add-payout-preference','DriverController@add_payout_preference');#logical error done






//get Incomplete trips
Route::post('incomplete-trip-details', 'TripController@incomplete_trips');#$Notice logical error only get one done trip done but no test


//DriverController

//RiderController
Route::post('schedule-ride-cancel', 'RiderController@schedule_ride_cancel');
Route::post('list-trucks-type', 'RiderController@car_types');
Route::post('search-cars', 'RiderController@search_cars');#$Notice no data ava. to test
Route::post('request-cars', 'RiderController@request_cars');#done but logically it has a lot of paramterms to work with sch and imm + no data ava
Route::post('driver-details', 'RiderController@driver_details');
Route::post('track-driver', 'RiderController@track_driver');
Route::post('update-rider-location', 'RiderController@updateriderlocation');
Route::post('promo-details','RiderController@promo_details');
Route::post('sos','RiderController@sos');#@logical review done
Route::post('sosalert','RiderController@sosalert');
Route::post('save-schedule-ride', 'RiderController@save_schedule_ride');
Route::post('get-schedule-rides', 'RiderController@get_schedule_rides');
/*
eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYXBpL3JlZ2lzdGVyIiwiaWF0IjoxNTc0MjM4MTY5LCJleHAiOjE1NzY4MzAxNjksIm5iZiI6MTU3NDIzODE2OSwianRpIjoiUTMyaGpla25lRzZrR0szZiIsInN1YiI6MSwicHJ2IjoiMjNiZDVjODk0OWY2MDBhZGIzOWU3MDFjNDAwODcyZGI3YTU5NzZmNyJ9.GrURAA0fywA_DkRTK4w25wJLHEwpcJ7fZvetmC-8pqI
 */
//RiderController

//TripController

Route::post('arrive-now', 'TripController@arive_now');
Route::post('begin-trip', 'TripController@begin_trip');#@note validation error solved 

Route::post('get-rider-trips', 'TripController@get_rider_trips');#error in Done
Route::post('driver-trips-history', 'TripController@driver_trips_history');
Route::post('cancel-trip', 'TripController@cancel_trip');
Route::post('map-upload','TripController@map_upload');
Route::post('end-trip','TripController@end_trip');


//TripController

//EarningController

Route::post('earning-chart', 'EarningController@earning_chart');
Route::post('add-payout', 'EarningController@add_payout');
Route::post('after_payment', 'EarningController@after_payment');
Route::post('add-wallet', 'EarningController@add_wallet');
Route::post('add-promo-code', 'EarningController@add_promo_code');



//EarningController

//RatingController

Route::post('driver-rating', 'RatingController@driver_rating');
Route::post('rider-feedback', 'RatingController@rider_feedback');
Route::post('trip-rating', 'RatingController@trip_rating');
Route::post('get-invoice', 'RatingController@getinvoice');

//RatingController

//profileController
Route::post('update-rider-profile', 'ProfileController@update_rider_profile');#logicall error where the photo
Route::post('get-rider-profile', 'ProfileController@get_rider_profile');
Route::post('get-driver-profile', 'ProfileController@get_driver_profile');
Route::post('update-driver-profile', 'ProfileController@update_driver_profile');#error code and logically
Route::post('vehicle-details', 'ProfileController@vehicle_details');
Route::post('update-rider-location', 'ProfileController@update_rider_location');
Route::post('update-user-currency', 'ProfileController@update_user_currency');
Route::post('upload_profile_image','ProfileController@upload_profile_image');
Route::post('document-upload','ProfileController@document_upload');
Route::post('Asking-for-rest-link','ProfileController@sendResetMyPassword');

Route::post('add-card-details', 'ProfileController@add_card_details');#error code
Route::post('get-card-details', 'ProfileController@get_card_details');#not found

//ProfileController

});


//Route::match(array('GET', 'POST'), 'upload_profile_image','ProfileController@upload_profile_image');
//Route::match(array('GET', 'POST'), 'document-upload','ProfileController@document_upload');
//Route::match(array('GET', 'POST'), 'map_upload','TripController@map_upload');
//Route::match(array('GET', 'POST'), 'end_trip','TripController@end_trip');
//Route::match(array('GET', 'POST'), 'add_payout_preference','DriverController@add_payout_preference');
//Route::match(array('GET', 'POST'), 'driver_bank_details','DriverController@driver_bank_details');
