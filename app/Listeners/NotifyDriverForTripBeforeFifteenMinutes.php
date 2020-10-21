<?php

namespace App\Listeners;

use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use App\Http\Helper\RequestHelper;
class NotifyDriverForTripBeforeFifteenMinutes implements ShouldQueue
{
    use InteractsWithQueue;
    /**
     * Create the event listener.
     *
     * @return void
     */
    
    public $delay =0;
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     *
     * @param  object  $event
     * @return void
     */
    public function handle($event)
    {
        $this->delay = $event->difference;
        $requestHelper = new RequestHelper();
//        $driver,$schTrip
         $device_type = $event->driver['device_type'];
                $device_id = $event->driver['device_id'];
                $user_type = $event->driver['user_type'];
                $data = array('ride_request' => array('request_id' => $event->requestId, 
                                                            'pickup_location' => $event->schTrip['pickup_location'], 
                                                            'min_time' => '15', 
                                                            'schedule_id'=>$event->schTrip['id'],
                                                            'pickup_latitude' => $event->schTrip['pickup_latitude'], 
                                                            'pickup_longitude' => $event->schTrip['pickup_longitude']));
                                                        if ($device_type == 1) {
                                                            $requestHelper->push_notification_ios('Sch trip', $data, $user_type, $device_id);
							} else {
							    
								$requestHelper->push_notification_android('Sch trip', $data, $user_type, $device_id);
							
                                                        }   
    }
}
