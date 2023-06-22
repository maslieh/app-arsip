<?php switch ($path_act) {
    case 'tambah':
        $id_jur = $path_id;
        foreach ($db->fetch_all('sys_menu') as $isi) {
            if ($path_url == $isi->url && $path_act == 'tambah') {
                if ($role_act['insert_act'] == 'Y') {
                    include 'sub_dokumen_add.php';
                } else {
                    echo ' <script>
                                alert("Akses tidak diizinkan");
                            </script>';
                    include 'sub_dokumen_view.php';
                }
            }
        }
        break;
    case 'edit':
        $id_jur = $path_four;
        $data_edit = $db->fetch_single_row('sys_sub_bidang', 'id', $path_id);
        foreach ($db->fetch_all('sys_menu') as $isi) {
            if ($path_url == $isi->url && $path_act == 'edit') {
                if ($role_act['up_act'] == 'Y') {
                    include 'sub_dokumen_edit.php';
                } else {
                    echo ' <script>
                                alert("Akses tidak diizinkan");
                            </script>';
                    include 'sub_dokumen_view.php';
                }
            }
        }

        break;
    case 'import':
        include 'import.php';
        break;
    case 'detail':
        $data_edit = $db->fetch_single_row('sys_sub_bidang', 'id', $path_id);
        include 'sub_dokumen_detail.php';
        break;
    case 'choose':
        $id_jur = $path_id;

        include 'sub_dokumen_view_detail.php';
        break;
    default:
        include 'sub_dokumen_view.php';
        break;
}

?>