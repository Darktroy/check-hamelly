<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateRequestTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('request', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('user_id');
            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');
            $table->string('pickup_latitude', 100);
            $table->string('pickup_longitude', 100);
            $table->string('drop_latitude', 100);
            $table->string('drop_longitude', 100);
            $table->string('pickup_location', 255);
            $table->string('drop_location', 255);
            $table->unsignedBigInteger('car_id');
            $table->foreign('car_id')->references('id')->on('car_type')->onDelete('cascade');
            $table->integer('group_id')->nullable();
            $table->unsignedBigInteger('driver_id');
            $table->foreign('driver_id')->references('id')->on('users')->onDelete('cascade');
            $table->enum('payment_mode', ['PayPal', 'Stripe', 'Cash', 'PayPal & Wallet', 'Stripe & Wallet', 'Cash & Wallet', 'Wallet'])->default('PayPal');
            $table->string('schedule_id', 100)->default('Null');
            $table->unsignedBigInteger('location_id');
            $table->enum('additional_fare', ['Peak']);
            $table->string('peak_fare', 100);
            $table->string('timezone', 100);
            $table->string('status', 100)->default('Null');
            $table->nullableTimestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('request');
    }
}
