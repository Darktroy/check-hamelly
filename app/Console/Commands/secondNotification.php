<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Http\Helper\RequestHelper;

class secondNotification extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'sechnotifi';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
        \Log::info("Cron is working fine!");
        $reqHelper = new RequestHelper();
        $reqHelper->sendSchNotification3Hours();   
        $this->info('Demo:Cron Cummand Run successfully!');
    }
}
