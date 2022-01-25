<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBannersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('banners', function (Blueprint $table) {
            $table->bigIncrements('ban_id');
            $table->string('ban_title',150);
            $table->text('ban_subtitle')->nullable();
            $table->integer('sallary')->nullable();
            $table->string('ban_btn',20)->nullable();
            $table->string('ban_url',190)->nullable();
            $table->integer('ban_creator');
            $table->string('ban_slug',50)->nullable();
            $table->integer('ban_status')->default(1);


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
        Schema::dropIfExists('banners');
    }
}
