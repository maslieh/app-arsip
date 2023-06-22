<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        Manage Arsip
    </h1>
    <ol class="breadcrumb">
        <li><a href="<?= base_index() ?>"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="<?= base_index() ?>arsip">arsip</a></li>
        <li class="active">Arsip List</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-body table-responsive">

                    <table id="dtb_manual" class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Nama dokumen</th>
                                <th>sub dokumen</th>

                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $i = 1;
                            $data = $db->query("
                                select m.id, count(m.id) as jml_folder, s.bidang,m.id_bidang from sys_sub_bidang as m
                                inner join sys_bidang as s on m.id_bidang=s.id group by m.id_bidang;");

                            foreach ($data as $dt) { ?>
                            <tr>
                                <td><?= $i ?></td>
                                <td>
                                    <a
                                        href='<?= base_index() ?>arsip/choose/<?= $dt->id_bidang ?>'><?= $dt->bidang ?></a>
                                </td>
                                <td><?= $dt->jml_folder ?></td>

                            </tr>
                            <?php $i++;}
                            ?>
                        </tbody>
                    </table>
                </div><!-- /.box-body -->
            </div><!-- /.box -->
        </div>
    </div>