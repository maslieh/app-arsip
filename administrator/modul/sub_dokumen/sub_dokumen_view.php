<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        Manage Data Sub Dokumen
    </h1>
    <ol class="breadcrumb">
        <li><a href="<?= base_index() ?>"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="<?= base_index() ?>sub_dokumen">Sub Dokumen</a></li>
        <li class="active">Sub Dokumen List</li>
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
                            <span class="input-group-btn">
                                <button class="btn btn-default" type="button">Pencarian !</button>
                            </span>
                            <input type="text" name="q" class="form-control" placeholder="Search..." />
                            <span class="input-group-btn">
                                <button type="submit" id="search-btn" class="btn btn-flat"><i
                                        class="fa fa-search"></i></button>
                            </span>
                        </div>
                    </form>
                </div><!-- /.box-header -->
                <div class="box-body table-responsive">
                    <table class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th style="width:25px" align="center">No</th>
                                <th>Dokumen</th>
                                <th>Sub Dokumen</th>
                                <th>Action</th>

                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $limit = 10;
                            $search = '';
                            if (isset($_GET['q'])) {
                                $search_condition = $db->getRawWhereFilterForColumns(
                                    $_GET['q'],
                                    ['sub_bidang']
                                );
                                $search = "and $search_condition ";
                            }

                            $dtb = $pg->myquery(
                                "select m.id,m.sub_bidang,s.bidang  from sys_sub_bidang as m, sys_bidang as s where m.id_bidang=s.id $search ",
                                $limit
                            );
                            $no = $pg->Num($limit);
                            $count = $pg->Num($limit);
                            if ($dtb->rowCount() < 1) {
                                echo "<tr><td colspan='4'>No matching records found</td></tr>";
                            }
                            foreach (
                                $dtb
                                as $isi
                            ) { ?><tr id="line_<?= $isi->id ?>">
                                <td align="center"><?= $no ?></td>
                                <td><?= $isi->bidang ?></td>
                                <td><?= $isi->sub_bidang ?></td>
                                <td> <a href="<?= base_index() ?>sub_dokumen/edit/<?= $isi->id ?>"
                                        class="btn btn-primary btn-flat"><i class="fa fa-pencil"></i></a> <button
                                        class="btn btn-danger btn-flat hapus"
                                        data-uri="<?= base_admin() ?>modul/sub_dokumen/sub_dokumen_action.php"
                                        data-id="<?= $isi->id ?>"><i class="fa fa-trash-o"></i> </button> </td>
                            </tr>
                            <?php $no++;}
                            ?>
                        </tbody>
                    </table>
                    <div class="col-xs-6" style="margin-top:10px">
                        Showing <?= $count ?> to <?= $no - 1 ?> of
                        <?= $pg->total_record ?> entries

                    </div>

                    <div class="col-xs-6">

                        <?php
                        if (isset($_GET['q'])) {
                            $pg->url =
                                base_index() .
                                'group-user?q=' .
                                $_GET['q'] .
                                '&page=';
                        }
                        $pg->setParameter([
                            'range' => $limit,
                        ]);
                        ?>

                        <div class="dataTables_paginate paging_bootstrap">
                            <ul class="pagination">
                                <?= $pg->create() ?>
                            </ul>
                        </div>
                    </div>
                </div><!-- /.box-body -->
            </div><!-- /.box -->
        </div>
    </div>
    <a href="<?= base_index() ?>sub_dokumen/tambah" class="btn btn-primary"><i class="fa fa-plus"></i> Tambah</a>

</section><!-- /.content -->