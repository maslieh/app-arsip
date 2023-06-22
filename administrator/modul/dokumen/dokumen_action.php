<?php
session_start();
include '../../inc/config.php';
session_check_adm();
switch ($_GET['act']) {
    case 'in':
        $date = date('yyyy-mm-dd');
        $data = [
            'bidang' => $_POST['page_name'],
            'date' => $date,
        ];
        $in = $db->insert('sys_bidang', $data);

        if ($in = true) {
            echo 'good';
        } else {
            return false;
        }
        break;

    case 'delete':
        $data_edit = $db->fetch_single_row('sys_bidang', 'id', $path_id);
        $db->delete('sys_bidang', 'id', $_GET['id']);
        break;
    case 'up':
        $data = [
            'bidang' => $_POST['page_name'],
        ];

        $up = $db->update('sys_bidang', $data, 'id', $_POST['id']);
        if ($up = true) {
            echo 'good';
        } else {
            return false;
        }
        break;
    default:
        # code...
        break;
}

?>