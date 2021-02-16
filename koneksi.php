<?php
$localhost = "localhost";
$dbuser = "root";
$dbpass = "";
$dbname = "dblikedislike";

$koneksi = mysqli_connect($localhost, $dbuser, $dbpass, $dbname);
if(!$koneksi){
    echo "<div class='alert-connection-failed'>Koneksi ke database gagal !!</div>";
}
?>