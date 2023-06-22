<?php
session_check_adm();
switch ($path_act) {
    case 'tambah':
        include 'menu_management_add.php';

        break;
    default:
        include 'menu_management_view.php';
        break;
}

?>