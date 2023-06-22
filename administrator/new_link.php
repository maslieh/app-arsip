<?php
include 'inc/config.php';
function stringInsert($str, $insertstr, $pos)
{
    $str = substr($str, 0, $pos) . $insertstr . substr($str, $pos);
    return $str;
}
function fetch_curl($url)
{
    $url = $url . '&curdate=' . date('Y-m-d');
    $ch = curl_init();
    $timeout = 5;
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, $timeout);
    $result = curl_exec($ch);
    //$http_respond = trim( strip_tags( $result ) );
    $http_code = curl_getinfo($ch, CURLINFO_HTTP_CODE);

    if ($http_code == '200' || $http_code == '302') {
        $result = json_decode($result);
    } else {
        $result = false;
    }
    curl_close($ch);
    return $result;
}
function ins_data($data_array)
{
    global $db;
    $salt = 'XZO';
    $dt = json_encode($data_array);
    $encode_json = base64_encode($dt);
    $json_after_salt = stringInsert($encode_json, $salt, 3);

    $data = [
        'data' => $json_after_salt,
    ];
    //echo $json_after_salt;
    $db->update('sys_system', $data, 'id', 2);

    echo $db->getErrorMessage();
}
function insert_data($data_array)
{
    global $db;
    $salt = 'XZO';
    $dt = json_encode($data_array);
    $encode_json = base64_encode($dt);
    $json_after_salt = stringInsert($encode_json, $salt, 3);

    $data = [
        'data' => $json_after_salt,
    ];
    $db->update('sys_system', $data, 'id', 1);
}

/*foreach ($data_services as $key => $val) {

	print_r($val);
	print_r(fetch_curl($val));
	echo "<br>";
}
$data_msg_server = fetch_curl("103.183.74.106/order/panel/exp.php?kode_pt=201004");
print_r($data_msg_server);*/
ins_data($data_services);