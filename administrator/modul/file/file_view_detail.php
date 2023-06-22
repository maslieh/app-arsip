<!-- Content Header (Page header) -->


<section class="content-header">
    <h1>
        Manage file <?php echo $db->fetch_single_row(
            'sys_bidang',
            'id',
            $id_jur
        )->bidang; ?>
    </h1>
    <ol class="breadcrumb">
        <li><a href="<?= base_index() ?>"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="<?= base_index() ?>file">file</a></li>
        <li class="active">file List</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-header">

                    <a href="<?= base_index() ?>file/tambah/<?= $id_jur ?>/" class="btn btn-primary"><i
                            class="fa fa-plus"></i>
                        Tambah</a>
                    <div id="hasil_up" style="display:none"></div>


                    <div class="row" id="progress_nya">
                        <br>
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                            <div class="progress hidden" id="script-progress">
                                <div class="progress-bar progress-bar-striped active" id="progress-bar-start"
                                    role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100">

                                </div>
                            </div>
                            <div id=" script-output"><em></em></div>
                        </div>
                    </div>

                    <br>
                    <div class="box box-danger">


                        <div class="box-body table-responsive">
                            <table id="dtb_manual" class="table table-bordered table-striped">
                                <thead>
                                    <tr>
                                        <th width='50px'>No</th>
                                        <th width='300px'>Nama Sub dokumen</th>
                                        <th>Nama Dokumen</th>
                                        <th width='160px'>Nomor Surat / file</th>
                                        <th width='100px'>Tahun dokumen</th>
                                        <th>file</th>
                                        <th width='150px'>Aksi</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $i = 1;
                                    $data = $db->query("
                                    select f.id,f.deskripsi as no_surat, f.tahun, f.nama_file, f.file,
                                    f.tgl,s.sub_bidang from sys_file as f Left join sys_sub_bidang as s on f.id_menu=s.id
                                    where s.id_bidang='$id_jur'                
                                    ");

                                    foreach ($data as $dt) { ?>
                                    <tr>
                                        <td><?= $i ?></td>
                                        <td>
                                            <?= $dt->sub_bidang ?>
                                        </td>
                                        <td><?= $dt->nama_file ?></td>
                                        <td><?= $dt->no_surat ?></td>
                                        <td><?= $dt->tahun ?></td>
                                        <td>
                                            <a href='<?= base_url() ?>upload/dokumen/<?= $dt->file ?>' target="_blank"><?= $dt->file ?>
                                            </a>
                                        </td>
                                        <td><a href="<?= base_index() ?>file/view/<?= $dt->id ?>"
                                                class="btn btn-success btn-flat"><i class="fa fa-eye"></i></a>
                                            <a href="<?= base_index() ?>file/edit/<?= $dt->id ?>"
                                                class="btn btn-primary btn-flat"><i class="fa fa-pencil"></i></a>
                                            <button class="btn btn-danger btn-flat hapus"
                                                data-uri="<?= base_admin() ?>modul/file/file_action.php"
                                                data-id="<?= $dt->id ?>"><i class="fa fa-trash-o"></i> </button>
                                        </td>

                                    </tr>
                                    <?php $i++;}
                                    ?>
                                </tbody>
                            </table>
                        </div><!-- /.box-body -->
						
                    </div><!-- /.box -->
					  <a href="javascript:history.back()" class="btn btn-success">Kembali</a>
                </div>
            </div>

</section><!-- /.content -->
<script type="text/javascript">
$(function() {
    $("#dtb_manual").dataTable();
    $('#example2').dataTable({
        "bPaginate": true,
        "bLengthChange": false,
        "bFilter": false,
        "bSort": true,
        "bInfo": true,
        "bAutoWidth": false,

    });
});
</script>