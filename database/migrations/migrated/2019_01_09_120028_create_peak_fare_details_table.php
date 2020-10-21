<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePeakFareDetailsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('peak_fare_details', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedInteger('fare_id');
            $table->foreign('fare_id')->references('id')->on('manage_fare');
            $table->enum('type', ['Peak', 'Night']);
            $table->tinyInteger('day')->nullable();
            $table->decimal('price', 10, 2);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('peak_fare_details');
    }
}
