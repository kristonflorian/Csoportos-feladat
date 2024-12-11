<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('machines', function (Blueprint $table) {
            $table->id('gid');
            $table->foreignId('zipcode')->references('zipcode')->on('settlements');
            $table->integer('fillpercentage')->nullable();
            $table->string('machineaddress');
        });
    }
    public function down(): void
    {
        Schema::dropIfExists('machines');
    }
};
