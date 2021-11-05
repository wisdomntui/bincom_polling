<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePollingUnitsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('polling_units', function (Blueprint $table) {
            $table->id();
            $table->integer('polling_unit_id');
            $table->foreignId('ward_id')->constrained();
            $table->foreignId('lga_id')->constrained();
            $table->integer('uniquewardid');
            $table->string('polling_unit_number');
            $table->string('polling_unit_name');
            $table->text('polling_unit_description')->nullable();
            $table->string('lat');
            $table->string('long');
            $table->string('entered_by_user');
            $table->string('date_entered');
            $table->string('user_ip_address');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('polling_units');
    }
}
