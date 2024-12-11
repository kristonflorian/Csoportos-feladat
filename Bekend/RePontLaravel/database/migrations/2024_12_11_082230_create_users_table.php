<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('users', function (Blueprint $table) {
            $table->id('fid');
            $table->string('username')->unique();
            $table->string('pass');
            $table->string('useraddress')->nullable();
            $table->foreignId('zipcode')->references('zipcode')->on('settlements');
            $table->integer('bottlecount');
            $table->string('achievements')->nullable();
        });
    }


    public function down(): void
    {
        Schema::dropIfExists('users');
    }
};
