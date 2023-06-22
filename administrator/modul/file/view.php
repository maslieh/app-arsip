<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        Manage Data file
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

                    <form action="" method="get" class="form_cari">
                        <div class="input-group col-lg-6">
                            <a href="javascript:history.back()" class="btn btn-success">Kembali</a>
                        </div>
                    </form>
                </div><!-- /.box-header -->

                <object data="../../../../upload/dokumen/<?= $data_edit->file ?>" width="100%" height="1000px"
                    style="border:1px solid; box-shadow: 2px 2px 8px #000000;">

                </object>



            </div><!-- /.box -->
        </div>
    </div>

</section><!-- /.content -->