<?php
$conn = mysqli_connect ('localhost', 'root', '', 'karyawan');

$query = mysqli_query($conn, "SELECT * FROM teskaryawan");

$data = array();

function selisih($jam_masuk, $jam_keluar){
    list($h, $m, $s) = explode(":", $jam_masuk);
    $dtAwal = mktime($h, $m, $s, "1", "1", "1");
    list($h, $m, $s) = explode(":", $jam_keluar);
    $dtAkhir = mktime($h, $m, $s, "1", "1", "1");
    $dtSelisih = $dtAkhir-$dtAwal;

    $totalmenit = $dtSelisih/60;
    $jam = explode(".", $totalmenit/60);

    return "$jam[0] jam";
}

while ($row = mysqli_fetch_array($query)) {

    if ( $jam = 9 ) {
        $ket = "Normal";
    } else if  ( $jam >= 9 ) {
        $ket = "Overtime";
    } else if  ( $jam <= 9 ){
        $ket = "Minus";
    } else {
        $ket = "Tidak Terdefinisi";
    }

    $jam_masuk = $row['check_in'];
    $jam_keluar = $row['check_out'];

    array_push($data, array(
        'nama' => $row['nama'],
        'jabatan' => $row['jabatan'],
        'check_in' => $row['check_in'],
        'check_out' => $row['check_out'],
        'total' => selisih($jam_masuk, $jam_keluar),
        'keterangan' => $ket
        ));
    }
echo json_encode(array('data' => $data));
?>