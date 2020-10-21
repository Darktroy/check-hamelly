<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateCountryTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::dropIfExists('country');

        Schema::create('country', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('short_name', 5)->unique();
            $table->string('long_name', 100);
            $table->string('iso3', 10)->nullable();
            $table->string('num_code', 10)->nullable();
            $table->string('phone_code', 10);
            $table->enum('stripe_country', ['Yes', 'No'])->default('No');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('country');
    }
}
