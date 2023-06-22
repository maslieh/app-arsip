<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        Data Sub Dokumen
    </h1>
    <ol class="breadcrumb">
        <li><a href="<?= base_index() ?>"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="<?= base_index() ?>sub_dokumen">Data Sub Dokumen</a></li>
        <li class="active">Tambah Dokumen</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">
    <div class="row">
        <div class="col-lg-12">
            <div class="box box-solid box-primary">
                <div class="box-header">
                    <h3 class="box-title">Tambah Dokumen</h3>
                    <div class="box-tools pull-right">
                        <button class="btn btn-info btn-sm" data-widget="collapse"><i class="fa fa-minus"></i></button>
                        <button class="btn btn-info btn-sm" data-widget="remove"><i class="fa fa-times"></i></button>
                    </div>
                </div>

                <div class="box-body">
                    <form id="input" method="post" class="form-horizontal"
                        action="<?= base_admin() ?>modul/sub_dokumen/sub_dokumen_action.php?act=in">
                        <div class="form-group">
                            <label for="Group User" class="control-label col-lg-2">Folder Dokumen</label>
                            <div class="col-lg-10">
                                <select name="parent" data-placeholder="Pilih Folder Dokumen ..."
                                    class="form-control chzn-select" tabindex="2">
                                    <option value=""></option>
                                    <?php foreach (
                                        $db->query('select * from sys_bidang ')
                                        as $isi
                                    ) {
                                        echo "<option value='$isi->id'>$isi->bidang</option>";
                                    } ?>
                                </select>
                            </div>
                        </div><!-- /.form-group -->
                        <div class="form-group">
                            <label for="Level User" class="control-label col-lg-2">Nama SubDokumen</label>
                            <div class="col-lg-10">
                                <input type="text" id="page_name" name="page_name" placeholder="Nama sub Dokumen"
                                    class="form-control" required>

                            </div>
                        </div><!-- /.form-group -->

                        <div class="form-group">
                            <label for="tags" class="control-label col-lg-2">&nbsp;</label>
                            <div class="col-lg-10">
                                <input type="submit" class="btn btn-primary" value="submit">
                            </div>
                        </div><!-- /.form-group -->
                    </form>
                    <a href="<?= base_index() ?>sub_dokumen" class="btn btn-success">Kembali</a>

                </div>
            </div>
        </div>
    </div>

</section><!-- /.content -->