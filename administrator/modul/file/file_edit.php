<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        Data file
    </h1>
    <ol class="breadcrumb">
        <li><a href="<?= base_index() ?>"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="<?= base_index() ?>file">Data file</a></li>
        <li class="active">Tambah Data file</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">
    <div class="row">
        <div class="col-lg-12">
            <div class="box box-solid box-primary">
                <div class="box-header">
                    <h3 class="box-title">Tambah Data file</h3>
                    <div class="box-tools pull-right">
                        <button class="btn btn-info btn-sm" data-widget="collapse"><i class="fa fa-minus"></i></button>
                        <button class="btn btn-info btn-sm" data-widget="remove"><i class="fa fa-times"></i></button>
                    </div>
                </div>

                <div class="box-body">
                    <div class="alert alert-danger user_exist" style="display:none">
                        <button type="button" class="close" data-dismiss="alert">&times;</button>
                        <strong>Maaf Username Sudah Terdaftar</strong>
                    </div>
                    <form id="input_user" method="post" class="form-horizontal" enctype="multipart/form-data"
                        action="<?= base_admin() ?>modul/file/file_action.php?act=in">

                        <div class="form-group">
                            <label for="Sub dokumen" required class="control-label col-lg-2">Sub dokumen</label>
                            <div class="col-lg-10">
                                <select name="id_sub" required data-placeholder="Sub dokumen ..."
                                    class="form-control chzn-select" tabindex="2">
                                    <option value=""></option>
                                    <?php foreach (
                                        $db->query(
                                            "select * from sys_sub_bidang where id_bidang='$path_id'"
                                        )
                                        as $isi
                                    ) {
                                        echo "<option value='$isi->id'>$isi->sub_bidang</option>";
                                    } ?>
                                </select>
                            </div>
                        </div><!-- /.form-group -->

                        <div class="form-group">
                            <label for="First Name" class="control-label col-lg-2">Nama Dokumen</label>
                            <div class="col-lg-10">
                                <input type="text" id="nama_file" name="nama_file" placeholder="nama Dokumen"
                                    class="form-control" required>
                            </div>
                        </div><!-- /.form-group -->

                        <div class="form-group">
                            <label for="First Name" class="control-label col-lg-2">No Surat</label>
                            <div class="col-lg-10">
                                <input type="text" id="no_surat" name="no_surat" placeholder="nomor surat"
                                    class="form-control" required>
                            </div>
                        </div><!-- /.form-group -->


                        <div class="form-group">
                            <label for="First Name" class="control-label col-lg-2">tahun</label>
                            <div class="col-lg-10">
                                <input type="number" id="tahun" name="tahun" placeholder="tahun" class="form-control"
                                    required>
                            </div>
                        </div><!-- /.form-group -->

                        <div class="form-group">
                            <label class="control-label col-lg-2">File</label>
                            <div class="col-lg-10">
                                <div class="fileinput fileinput-new" data-provides="fileinput">
                                    <input class="form-control" type="file" name="foto_user" required>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="aktif" class="control-label col-lg-2">Publish</label>
                            <div class="col-lg-10">
                                <input name="aktif" class="make-switch" type="checkbox" checked>
                            </div>
                        </div><!-- /.form-group -->
                </div>




                <div class="form-group">
                    <label for="tags" class="control-label col-lg-2">&nbsp;</label>
                    <div class="col-lg-10">
                        <input type="submit" class="btn btn-primary" value="submit">
                    </div>
                </div><!-- /.form-group -->
                </form>
                <a href="<?= base_index() ?>file/choose/<?= $path_id ?>" class="btn btn-success">Kembali</a>

            </div>
        </div>
    </div>
    </div>

</section><!-- /.content -->