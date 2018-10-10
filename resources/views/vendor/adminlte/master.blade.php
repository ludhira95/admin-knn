<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>@yield('title_prefix', config('adminlte.title_prefix', ''))
@yield('title', config('adminlte.title', 'AdminLTE 2'))
@yield('title_postfix', config('adminlte.title_postfix', ''))</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="{{ asset('vendor/adminlte/vendor/bootstrap/dist/css/bootstrap.min.css') }}">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="{{ asset('vendor/adminlte/vendor/font-awesome/css/font-awesome.min.css') }}">
    <!-- Ionicons -->
    <link rel="stylesheet" href="{{ asset('vendor/adminlte/vendor/Ionicons/css/ionicons.min.css') }}">

    @if(config('adminlte.plugins.select2'))
        <!-- Select2 -->
        <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/css/select2.css">
    @endif

    <!-- Theme style -->
    <link rel="stylesheet" href="{{ asset('vendor/adminlte/dist/css/AdminLTE.min.css') }}">

    @if(config('adminlte.plugins.datatables'))
        <!-- DataTables with bootstrap 3 style -->
        <link rel="stylesheet" href="//cdn.datatables.net/v/bs/dt-1.10.18/datatables.min.css">
    @endif

    @yield('adminlte_css')

    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- Google Font -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition @yield('body_class')">

@yield('body')

<script src="{{ asset('vendor/adminlte/vendor/jquery/dist/jquery.min.js') }}"></script>
<script src="{{ asset('vendor/adminlte/vendor/jquery/dist/jquery.slimscroll.min.js') }}"></script>
<script src="{{ asset('vendor/adminlte/vendor/bootstrap/dist/js/bootstrap.min.js') }}"></script>

@if(config('adminlte.plugins.select2'))
    <!-- Select2 -->
    <script src="//cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/js/select2.min.js"></script>
@endif

@if(config('adminlte.plugins.datatables'))
    <!-- DataTables with bootstrap 3 renderer -->
    <script src="//cdn.datatables.net/v/bs/dt-1.10.18/datatables.min.js"></script>
@endif

@if(config('adminlte.plugins.chartjs'))
    <!-- ChartJS -->
    <script src="//cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.0/Chart.bundle.min.js"></script>
@endif

@yield('adminlte_js')


<script>
    $('#ubah').on('show.bs.modal', function (event) {

    var button = $(event.relatedTarget)
    var nama = button.data('mynama')
    var sesak_aktifitas = button.data('myaktifitas')
    var sesak_istirahat = button.data('myistirahat')
    var nyeri_dada = button.data('mydada')
    var nyeri_leher = button.data('myleher')
    var kepala_pusing = button.data('mykepala')
    var badan_lemas = button.data('mybadan')
    var jantung_berdebar = button.data('myjantung')
    var mudah_cape = button.data('mycape')
    var kaki_bengkak = button.data('mykaki')
    var batuk = button.data('mybatuk')
    var riwayat_darahtinggi = button.data('mydarah')
    var riwayat_kencingmanis = button.data('mymanis')
    var hasil = button.data('myhasil')
    var kas_id = button.data('kasid')

    var modal = $(this)

    modal.find('.modal-body #nama').val(nama);
    modal.find('.modal-body #sesak_aktifitas').val(sesak_aktifitas);
    modal.find('.modal-body #sesak_istirahat').val(sesak_istirahat);
    modal.find('.modal-body #nyeri_dada').val(nyeri_dada);
    modal.find('.modal-body #nyeri_leher').val(nyeri_leher);
    modal.find('.modal-body #kepala_pusing').val(kepala_pusing);
    modal.find('.modal-body #badan_lemas').val(badan_lemas);
    modal.find('.modal-body #jantung_berdebar').val(jantung_berdebar);
    modal.find('.modal-body #mudah_cape').val(mudah_cape);
    modal.find('.modal-body #kaki_bengkak').val(kaki_bengkak);
    modal.find('.modal-body #batuk').val(batuk);
    modal.find('.modal-body #riwayat_darahtinggi').val(riwayat_darahtinggi);
    modal.find('.modal-body #riwayat_kencingmanis').val(riwayat_kencingmanis);
    modal.find('.modal-body #hasil').val(hasil);
    modal.find('.modal-body #id').val(kas_id);
})

    $('#hapus').on('show.bs.modal', function (event) {

    var button = $(event.relatedTarget)
    var kas_id = button.data('kasid')
    var modal = $(this)

  
    modal.find('.modal-body #id').val(kas_id);
})
</script>

</body>
</html>
