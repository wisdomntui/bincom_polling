<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateLgasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('lgas', function (Blueprint $table) {
            $table->id();
            $table->integer('lga_id');
            $table->string('lga_name');
            $table->foreignId('state_id')->constrained();
            $table->text('lga_description');
            $table->string('entered_by_user')->nullable();
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
        Schema::dropIfExists('lgas');
    }
}
