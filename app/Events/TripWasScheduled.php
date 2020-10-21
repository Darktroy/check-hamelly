<?php

namespace App\Events;

use Illuminate\Foundation\Events\Dispatchable;
use Illuminate\Queue\SerializesModels;

class TripWasScheduled
{
    use Dispatchable, SerializesModels;
    public $driver;
    public $schTrip;
    public $requestId;
    public $difference;
    /**
     * Create a new event instance.
     *
     * @return void
     */
    public function __construct($driver,$schTrip,$requestId,$difference)
    {
        $this->driver  = $driver;
        $this->schTrip = $schTrip;
        $this->requestId = $requestId;
        $this->difference = $difference;
    }

}
