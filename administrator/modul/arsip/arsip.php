<?php switch ($path_act) {
    case 'tambah':
        $id_jur = $path_four;
        $data_edit = $db->fetch_single_row(
            'sys_sub_bidang',
            'id_bidang',
            $path_id
        );
        foreach ($db->fetch_all('sys_menu') as $isi) {
            if ($path_url == $isi->url && $path_act == 'tambah') {
                if ($role_act['insert_act'] == 'Y') {
                    include 'arsip_add.php';
                } else {
                    echo 'permission denied';
                }
            }
        }
        break;
    case 'edit':
        $id_jur = $path_four;
        $data_edit = $db->fetch_custom_single('select * from mhs where id=?', [
            'mhs.id' => $path_id,
        ]);
        foreach ($db->fetch_all('sys_menu') as $isi) {
            if ($path_url == $isi->url && $path_act == 'edit') {
                if ($role_act['up_act'] == 'Y') {
                    include 'arsip_edit.php';
                } else {
                    echo 'permission denied';
                }
            }
        }

        break;
    case 'choose':
        $id_jur = $path_id;

        include 'arsip_view_detail.php';
        break;

    default:
        include 'arsip_view.php';
        break;
}

?>