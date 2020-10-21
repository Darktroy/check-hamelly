<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('first_name', 100);
            $table->string('last_name', 100);
            $table->string('email', 100);
            $table->string('country_code', 100);
            $table->string('mobile_number', 20);
            $table->string('password');
            $table->enum('user_type', ['Rider', 'Driver'])->nullable();
            $table->unsignedBigInteger('company_id')->nullable();
            $table->foreign('company_id')->references('id')->on('companies');
            $table->rememberToken();
            $table->string('fb_id', 50)->unique()->nullable();
            $table->string('google_id', 50)->unique()->nullable();
            $table->enum('status', ['Active', 'Inactive', 'Pending', 'Car_details', 'Document_details'])->nullable();
            $table->enum('device_type', ['1', '2'])->nullable();
            $table->text('device_id');
            $table->string('currency_code', 10)->nullable();
            $table->string('language', 50);
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
        Schema::dropIfExists('users');
    }
}
