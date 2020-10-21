<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTripsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('trips', function (Blueprint $table) {
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
            $table->unsignedBigInteger('request_id');
            $table->foreign('request_id')->references('id')->on('request')->onDelete('cascade');
            $table->unsignedBigInteger('driver_id');
            $table->foreign('driver_id')->references('id')->on('users')->onDelete('cascade');
            $table->text('trip_path');
            $table->text('map_image');
            $table->decimal('total_time', 7, 2);
            $table->decimal('total_km', 7, 2);
            $table->decimal('time_fare', 11, 2);
            $table->decimal('distance_fare', 11, 2);
            $table->decimal('base_fare', 11, 2);
            $table->decimal('peak_fare', 11, 2);
            $table->decimal('peak_amount', 11, 2);
            $table->decimal('driver_peak_amount', 11, 2);
            $table->decimal('schedule_fare', 11, 2);
            $table->decimal('access_fee', 11, 2);
            $table->decimal('wallet_amount', 11, 2);
            $table->decimal('promo_amount', 11, 2);
            $table->decimal('subtotal_fare', 11, 2);
            $table->decimal('total_fare', 11, 2);
            $table->decimal('driver_payout', 11, 2);
            $table->decimal('driver_or_company_commission', 11, 2);
            $table->decimal('owe_amount', 11, 2);
            $table->decimal('remaining_owe_amount', 11, 2);
            $table->decimal('applied_owe_amount', 11, 2);
            $table->string('to_trip_id', 100);
            $table->timestamp('begin_trip')->nullable();
            $table->timestamp('end_trip')->nullable();
            $table->text('paykey');
            $table->enum('payment_mode', ['PayPal', 'Stripe', 'Cash', 'PayPal & Wallet', 'Stripe & Wallet', 'Cash & Wallet', 'Wallet'])->default('PayPal');
            $table->enum('payment_status', ['Pending', 'Completed', 'Trip Cancelled'])->default('Pending');
            $table->enum('is_calculation', ['1', '0'])->default('0');
            $table->string('currency_code', 10);
            $table->foreign('currency_code')->references('code')->on('currency');
            $table->enum('status', ['Scheduled', 'Cancelled', 'Begin trip', 'End trip', 'Payment', 'Rating', 'Completed', 'Null'])->default('Null');
            $table->timestamps();
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
        Schema::dropIfExists('trips');
    }
}
