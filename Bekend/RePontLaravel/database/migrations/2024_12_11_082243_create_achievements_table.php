<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{

    public function up(): void
    {
        //Komikus jelleg fenntartása miatt el lett írva a tábla neve
        Schema::create('achivements', function (Blueprint $table) {
            $table->id('aid');
            $table->string('acname')->nullable();
            $table->integer('requirements');
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('achivements');
    }
};
