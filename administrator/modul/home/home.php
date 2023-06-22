<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        Welcome, <?= ucwords($_SESSION['nama_lengkap']) ?>

    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">

    <?php  ?>

    <div class="row">


        <!-- ./col -->
        <div class="col-lg-4 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-yellow">
                <div class="inner">
                    <h3>&nbsp;</h3>
                    <h1>
                        <?php echo $db->fetch_custom_single(
                            'select count(id) as jml from sys_bidang '
                        )->jml; ?>
                    </h1>
                    <p>Dokumen</p>
                </div>
                <div class="icon">
                    <i class="fa fa-folder"></i>
                </div>
                <a href="<?= base_index() ?>kelas-kuliah" class="small-box-footer">View Detail <i
                        class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-4 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-red">
                <div class="inner">
                    <h3>&nbsp;</h3>
                    <h1>
                        <?php echo $db->fetch_custom_single(
                            'select count(id) as jml from sys_sub_bidang '
                        )->jml; ?>
                    </h1>
                    <p>Sub Dokumen</p>
                </div>
                <div class="icon">
                    <i class="ion ion-pie-graph"></i>
                </div>
                <a href="<?= base_index() ?>sub_dokumen" class="small-box-footer">View Detail <i
                        class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>
        <div class="col-lg-4 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-aqua">
                <div class="inner">
                    <h3>&nbsp;</h3>
                    <h1>
                        <?php echo $db->fetch_custom_single(
                            'select count(id) as jml from sys_file '
                        )->jml; ?>
                    </h1>
                    <p>File Document</p>
                </div>
                <div class="icon">
                    <i class="fa fa-file"></i>
                </div>
                <a href="<?= base_index() ?>file" class="small-box-footer">View Detail <i
                        class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>


    </div>

</section>