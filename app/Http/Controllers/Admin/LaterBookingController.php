<?php

/**
 * Trips Controller
 *
 * @package     Gofer
 * @subpackage  Controller
 * @category    Trips
 * @author      Trioangle Product Team
 * @version     1.7
 * @link        http://trioangle.com
 */

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
// use App\Http\Start\Helpers;
use App\DataTables\LaterBookingDataTables;
use App\Models\ScheduleRide;
use App\Models\ScheduleCancel;
use App\Models\PeakFareDetail;
use App\Models\Trips;
use App\Models\User;
use App\Models\Request as RideRequest;
use Illuminate\Http\Request;
use App\Http\Helper\RequestHelper;
use App\Http\Start\Helpers;
use App\Models\Company;
use App\Models\Country;
use App\Models\CarType;

use Illuminate\Support\Facades\Auth;

use DB;

class LaterBookingController extends Controller
{
    protected $request_helper;  // Global variable for instance of Helpers

    public function __construct(RequestHelper $request)
    {
        $this->helper = new Helpers;
        $this->request_helper = $request;
    }

    /**
     * Load Datatable for LaterBooking
     *
     * @return view file
     */
    public function index(LaterBookingDataTables $dataTable)
    {
        return $dataTable->render('admin.later_booking');
    }
    
    public function pick_ride_to_company(Request $request,LaterBookingDataTables $dataTable) {
                $comp = Auth::guard('company')->user();
                $company_id = (int)$comp->id;
                $driver_id = (int)$request->driver_id;
                $scheduleRideId = (int)$request->scheduleRideId;
                ScheduleRide::where('id',$scheduleRideId) 
                        ->update(['driver_id' => $driver_id,'status'=>'Pending']);
                $schRide = ScheduleRide::where('id',$scheduleRideId)->first()->toArray();
            
                $groupIdData = RideRequest::where('schedule_id',$schRide['id'])->select('group_id')->first();
                $group_id = $groupIdData->group_id;
                $rideRequest = RideRequest::create(
                                    array(
                                            'user_id' => $schRide['user_id'],
                                            'additional_fare' => '',
                                            'group_id' => $group_id,
                                            'driver_id' => $driver_id,
                                            'status' => 'Accepted',
                                            'pickup_latitude' => $schRide['pickup_latitude'],
                                            'pickup_longitude' => $schRide['pickup_longitude'],
                                            'drop_latitude' => $schRide['drop_latitude'],
                                            'drop_longitude' => $schRide['drop_longitude'],
                                            'pickup_location' => $schRide['pickup_location'],
                                            'drop_location' => $schRide['drop_location'],
                                            'car_id' => $schRide['car_id'],
                                            'timezone' => $schRide['timezone'],
                                            'location_id' => $schRide['location_id'],
                                            'payment_mode' => $schRide['payment_method'],
                                            'schedule_id' => $schRide['id'],
                                            'peak_fare'=>$schRide['fare_estimation']
                                        ) 
                );
//                dd(URL('company/later_booking'));
                return redirect(URL('company/later_booking'));
    }
    
    public function cancel(Request $request)
    {
        $schedule = ScheduleRide::find($request->id);
        $schedule->status = 'Cancelled';
        $schedule->save();

        $cancel = new ScheduleCancel;
        $cancel->schedule_ride_id = $request->id;
        $cancel->cancel_reason = $request->reason;
        $cancel->cancel_by = 'Admin';
        $cancel->save();

        if ($schedule->driver_id != 0) {
            $driver_details = @User::where('id', $schedule->driver_id)->firstOrFail();
            $rider = User::find($schedule->user_id);
            $device_type = $driver_details->device_type;
            $device_id = $driver_details->device_id;
            $user_type = $driver_details->user_type;
            $push_tittle = "Schedule canceled";
            $data = array(
                'manual_booking_trip_canceled_info' => array('date' => $schedule->schedule_date, 'time' => $schedule->schedule_time, 'pickup_location' => $schedule->pickup_location, 'pickup_latitude' => $schedule->pickup_latitude, 'pickup_longitude' => $schedule->pickup_longitude, 'rider_first_name' => $rider->first_name, 'rider_last_name' => $rider->last_name, 'rider_mobile_number' => $rider->mobile_number, 'rider_country_code' => $rider->country_code)
            );
            if ($device_type == 1) {
                $this->request_helper->push_notification_ios($push_tittle, $data, $user_type, $device_id);
            } else {
                $this->request_helper->push_notification_android($push_tittle, $data, $user_type, $device_id);
            }
        }

        return 1;
    }

    public function immediate_request(Request $request)
    {

        if (
            LOGIN_USER_TYPE == 'company' &&
            Auth::guard('company')->user()->status != 'Active'
        ) {
            abort(404);
        }
        $data['country_code_option'] = Country::select('long_name', 'phone_code')->get();
        $data['country_name_option'] = Country::pluck('long_name', 'short_name');
        $data['company'] = Company::where('status', 'Active')->pluck('name', 'id');
        $data['car_type'] = CarType::where('status', 'Active')->pluck('car_name', 'id');
        // dd($data);
        return view('admin.vehicle.add', $data);
        //###########################################################################################################
        $comp = Auth::guard('company')->user();
        //        return response()->json(['status_message' => $comp->id ,'status_code' => 1]);

        $schedule = ScheduleRide::where('status', 'Car Not Found')->where('id', $request->id)->firstOrFail();

        if ($schedule == null) {
            return response()->json([
                'status_code' => 0
            ]);
        }

        date_default_timezone_set($schedule->timezone);
        $current_date = date('Y-m-d');
        $current_time = date('H:i');
        /*$schedule->schedule_date = $current_date;
        $schedule->schedule_time = $current_time;*/
        $schedule->save();

        $additional_fare = "";
        $peak_price = 0;
        if (isset($schedule->peak_id) != '') {
            $fare = PeakFareDetail::find($schedule->peak_id);
            if ($fare) {
                $peak_price = $fare->price;
                $additional_fare = "Peak";
            }
        }
        $data = [
            'rider_id' => $schedule->user_id,
            'pickup_latitude' => $schedule->pickup_latitude,
            'pickup_longitude' => $schedule->pickup_longitude,
            'drop_latitude' => $schedule->drop_latitude,
            'drop_longitude' => $schedule->drop_longitude,
            'user_type' => 'rider',
            'car_id' => $schedule->car_id,
            'driver_group_id' => null,
            'pickup_location' => $schedule->pickup_location,
            'drop_location' => $schedule->drop_location,
            'payment_method' => $schedule->payment_method,
            'is_wallet' => $schedule->is_wallet,
            'timezone' => $schedule->timezone,
            'schedule_id' => $schedule->id,
            'additional_fare'  => $additional_fare,
            'location_id' => $schedule->location_id,
            'peak_price'  => $peak_price,
            'booking_type'  => $schedule->booking_type,
            'driver_id'  => 0,
        ];
        //        $car_details = $this->request_helper->find_driver($data);
        $car_details = $this->request_helper->sch_trip_find_driver_by_organization($data, $comp->id);

        return response()->json([
            'status_message' => ScheduleRide::find($request->id)->status,
            'status_code' => 1
        ]);
    }

    public function pickThisRequest(int $schRideId)
    {

        if ((LOGIN_USER_TYPE == 'company' &&
                Auth::guard('company')->user()->status != 'Active') || (LOGIN_USER_TYPE != 'company')
        ) {
            abort(404);
        }
        $id = Auth::guard('company')->user()->id;
        $data['drivers'] = User::where('status', 'Active')
            ->where('company_id', $id)
            ->with('vehicle')
            ->get()
            ->toArray();
        $scheduleRide = ScheduleRide::where('id', $schRideId)
            ->where('status', 'Car Not Found')
            ->first();

        if (isset($scheduleRide)) {
            $data['scheduleRide'] = 'Date : ' . $scheduleRide->schedule_date
                . '  <br/> at : ' . $scheduleRide->schedule_time
                . ' <br/> pickup location : ' . $scheduleRide->pickup_location
                . ' <br/> drop location : ' . $scheduleRide->drop_location;
            $data['scheduleRideId'] = $schRideId;
        } else {
            $data['scheduleRide'] = 'The Schedule ride had been token';
            $data['scheduleRideId'] = $schRideId;
        }
        // $data[' country_code_option '] = Country::select(' long_name ', ' phone_code ')->get();
        // $data[' country_name_option '] = Country::pluck(' long_name ', ' short_name ');
        // $data[' company '] = Company::where(' status ', ' Active ')->pluck(' name ', ' id ');
        // $data[' car_type '] = CarType::where(' status ', ' Active ')->pluck(' car_name ', ' id ');
        // dd($data);
        return view('admin.vehicle.pick', $data);
    }
}
