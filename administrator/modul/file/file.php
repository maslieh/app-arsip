<?php switch ($path_act) {
    case 'tambah':
        $id_jur = $path_id;
        foreach ($db->fetch_all('sys_menu') as $isi) {
            if ($path_url == $isi->url && $path_act == 'tambah') {
                if ($role_act['insert_act'] == 'Y') {
                    include 'file_add.php';
                } else {
                    echo ' <script>
                                alert("Akses tidak diizinkan");
                            </script>';
                    include 'file_view.php';
                }
            }
        }
        break;
    case 'edit':
        $id_jur = $path_four;
        $data_edit = $db->fetch_single_row('sys_file', 'id', $path_id);
        foreach ($db->fetch_all('sys_menu') as $isi) {
            if ($path_url == $isi->url && $path_act == 'edit') {
                if ($role_act['up_act'] == 'Y') {
                    include 'file_edit.php';
                } else {
                    echo ' <script>
                                alert("Akses tidak diizinkan");
                            </script>';
                    include 'file_view.php';
                }
            }
        }

        break;
    case 'import':
        include 'import.php';
        break;
    case 'detail':
        $data_edit = $db->fetch_single_row('sys_file', 'id', $path_id);
        include 'file_detail.php';
        break;
    case 'choose':
        $id_jur = $path_id;

        include 'file_view_detail.php';
        break;
    case 'view':
        $id_jur = $path_id;
        $data_edit = $db->fetch_single_row('sys_file', 'id', $path_id);
        include 'view.php';
        break;
    default:
        include 'file_view.php';
        break;
}

?>