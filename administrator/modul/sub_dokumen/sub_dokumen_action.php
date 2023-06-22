<?php
session_start();
include '../../inc/config.php';
session_check_adm();
switch ($_GET['act']) {
    case 'in':
        $date = date('yyyy-mm-dd');
        $data = [
            'sub_bidang' => $_POST['page_name'],
            'id_bidang' => $_POST['parent'],
            'date' => $date,
        ];
        $in = $db->insert('sys_sub_bidang', $data);

        if ($in = true) {
            echo 'good';
        } else {
            return false;
        }
        break;

    case 'delete':
        $db->delete('sys_sub_bidang', 'id', $_GET['id']);
        break;

    case 'up':
        $data = [
            'sub_bidang' => $_POST['page_name'],
        ];

        $up = $db->update('sys_sub_bidang', $data, 'id', $_POST['id']);
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