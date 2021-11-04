<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAnnounceLgaResultsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('announced_lga_results', function (Blueprint $table) {
            $table->id();
            $table->foreignId('lga_id')->constrained();
            $table->char('party_abbreviation');
            $table->integer('party_score');
            $table->string('entered_by_user')->nullable();
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
        Schema::dropIfExists('announced_lga_results');
    }
}
