@extends('adminlte::page')
@section('title', 'Kasus Lama')

@section('content')

<div class="">
  <!-- Button trigger modal -->
  <button type="button" class="btn btn-success" data-toggle="modal" data-target="#masukan">
    Masukan Kasus Lama
  </button>
  <div class="box">
    <div class="box_header">
          <h3 class="box-title text-center">Kasus Lama</h3>
    </div>

    <div class="box_body">
      <h5><font color="red">Total Kasus Ada {{$kasuss->total()}}</font></h5>
          <table class="table table-responsive">
            <thead>
              <tr>
                <th>ID Pasien</th>
                <th>Nama Pasien</th>
                <th>G1</th>
                <th>G2</th>
                <th>G3</th>
                <th>G4</th>
                <th>G5</th>
                <th>G6</th>
                <th>G7</th>
                <th>G8</th>
                <th>G9</th>
                <th>G10</th>
                <th>G11</th>
                <th>G12</th>
                <th>Hasil Diagnosa</th>
                <th>Aksi</th>
              </tr>
            </thead>

            <tbody>
              @foreach ($kasuss as $kas)
                <tr>
                  <td>{{$kas->id}}</td>
                  <td>{{$kas->nama}}</td>
                  <td>{{$kas->sesak_aktifitas}}</td>
                  <td>{{$kas->sesak_istirahat}}</td>
                  <td>{{$kas->nyeri_dada}}</td>
                  <td>{{$kas->nyeri_leher}}</td>
                  <td>{{$kas->kepala_pusing}}</td>
                  <td>{{$kas->badan_lemas}}</td>
                  <td>{{$kas->jantung_berdebar}}</td>
                  <td>{{$kas->mudah_cape}}</td>
                  <td>{{$kas->kaki_bengkak}}</td>
                  <td>{{$kas->batuk}}</td>
                  <td>{{$kas->riwayat_darahtinggi}}</td>
                  <td>{{$kas->riwayat_kencingmanis}}</td>
                  <td>{{$kas->hasil}}</td>
                  <td>
                    <button class="btn btn-warning"
                    data-mynama="{{$kas->nama}}"
                    data-myaktifitas="{{$kas->sesak_aktifitas}}"
                    data-myistirahat="{{$kas->sesak_istirahat}}"
                    data-mydada="{{$kas->nyeri_dada}}"
                    data-myleher="{{$kas->nyeri_leher}}"
                    data-mykepala="{{$kas->kepala_pusing}}"
                    data-mybadan="{{$kas->badan_lemas}}"
                    data-myjantung="{{$kas->jantung_berdebar}}"
                    data-mycape="{{$kas->mudah_cape}}"
                    data-mykaki="{{$kas->kaki_bengkak}}"
                    data-mybatuk="{{$kas->batuk}}"
                    data-mydarah="{{$kas->riwayat_darahtinggi}}"
                    data-mymanis="{{$kas->riwayat_kencingmanis}}"
                    data-myhasil="{{$kas->hasil}}"
                    data-kasid="{{$kas->id}}"
                    data-toggle="modal"
                    data-target="#ubah">
                      Edit
                    </button>

                    <button class="btn btn-danger"
                    data-kasid="{{$kas->id}}"
                    data-toggle="modal"
                    data-target="#hapus">
                      Hapus
                    </button>
                  </td>
                </tr>

              @endforeach

            </tbody>

          </table>
    </div>

    <div class="box-footer clearfix">
      {{$kasuss->links()}}
    </div>
  </div>
</div>

<!-- KETERANGAN -->
<h5><font color="red">Keterangan</font></h5>
<h5><font color="red">1 = Ya</font></h5>
<h5><font color="red">0 = Tidak</font></h5>
<h5><font color="red">G = Gejala</font></h5>
<h5><font color="red">1-12 = No Urut Gejala</font></h5>



<!-- MASUKAN -->
<div class="modal fade" id="masukan" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Kasus Lama</h4>
      </div>
      <form action="{{route('kasus.store')}}" method="post">
        {{csrf_field()}}
        <div class="modal-body">
            @include('kasus.form')
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">Batal</button>
          <button type="submit" class="btn btn-default">Masukan</button>
        </div>

      </form>
    </div>
  </div>
</div>

<!-- UBAH -->
<div class="modal fade" id="ubah" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Ubah Kasus Lama</h4>
      </div>
      <form action="{{route('kasus.update','test')}}" method="post">
        {{method_field('patch')}}
        {{csrf_field()}}
        <div class="modal-body">
            <input type="hidden" name="kasus_id" id="id" value="">
            @include('kasus.form')
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">Batal</button>
          <button type="submit" class="btn btn-default">Selesai</button>
        </div>

      </form>
    </div>
  </div>
</div>

<!-- HAPUS -->
<div class="modal modal-danger fade" id="hapus" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title text-center" id="myModalLabel">Hapus Kasus Lama</h4>
      </div>
      <form action="{{route('kasus.destroy','test')}}" method="post">
        {{method_field('delete')}}
        {{csrf_field()}}
        <div class="modal-body">
            <p class="text-center">
              Apa Anda Yakin Akan Menghapus Kasus Tersebut?
            </p>

            <input type="hidden" name="kasus_id" id="id" value="">

        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Tidak</button>
          <button type="submit" class="btn btn-danger">Ya, HAPUS</button>
        </div>

      </form>
    </div>
  </div>
</div>

@endsection
