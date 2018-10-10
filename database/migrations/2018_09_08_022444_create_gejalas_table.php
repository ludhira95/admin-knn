<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateGejalasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('gejalas', function (Blueprint $table) {
            $table->increments('id');
            $table->string('nama');
            $table->integer('sesak_aktifitas');
            $table->integer('sesak_istirahat');
            $table->integer('nyeri_dada');
            $table->integer('nyeri_leher');
            $table->integer('kepala_pusing');
            $table->integer('badan_lemas');
            $table->integer('jantung_berdebar');
            $table->integer('mudah_cape');
            $table->integer('kaki_bengkak');
            $table->integer('batuk');
            $table->integer('riwayat_darahtinggi');
            $table->integer('riwayat_kencingmanis');
            $table->string('hasil');
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
        Schema::dropIfExists('gejalas');
    }
}
