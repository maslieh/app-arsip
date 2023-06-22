<?php
session_start();
include '../../inc/config.php';
session_check_adm();
switch ($_GET['act']) {
    case 'in':
        $data = [
            'id_menu' => $_POST['id_sub'],
            'nama_file' => $_POST['nama_file'],
            'deskripsi' => $_POST['no_surat'],
            'tahun' => $_POST['tahun'],
            'tgl' => date('Y-m-d'),
        ];
        if (
            !preg_match(
                '/.(xls|xlsx|doc|docx|pdf|zip|rar)$/i',
                $_FILES['foto_user']['name']
            )
        ) {
            echo 'pastikan file yang anda pilih xls|xlsx';
            exit();
        } else {
            move_uploaded_file(
                $_FILES['foto_user']['tmp_name'],
                '../../../upload/dokumen/' . $_FILES['foto_user']['name']
            );
            $foto_user = ['file' => $_FILES['foto_user']['name']];
            $data = array_merge($data, $foto_user);
        }

        $in = $db->insert('sys_file', $data);
        if ($in = true) {
            echo 'good';
        } else {
            return false;
        }
        break;
    case 'delete':
        $db->delete('sys_file', 'id', $_GET['id']);

        break;

    default:
        # code...

        break;
}

?>
