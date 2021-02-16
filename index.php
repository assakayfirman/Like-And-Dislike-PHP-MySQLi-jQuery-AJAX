<?php // sesi dimulai
session_start();
// include koneksi
require_once "koneksi.php";
// cek dulu apakah user sudah login atau belum
// jika user sudah login > arahkan ke halaman post.php
if(isset($_SESSION['penggunalogin'])){
    header("Location: post.php");
}
if(isset($_POST['masuk'])){
    $username = $_POST['pengguna'];
    $password = md5($_POST['katasandi']);
    $login = mysqli_query($koneksi, "SELECT * FROM user WHERE pengguna='$username' AND katasandi='$password' LIMIT 1");
    $r = mysqli_num_rows($login);
    if($r == 1){
        $_SESSION['penggunalogin'] = $username;
        header("Location: post.php");
    }else{
        echo "<div class='alert-sistem'>gagal</div>";
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans&family=Roboto&family=Source+Sans+Pro&display=swap" rel="stylesheet">
    <script src="ajax/jquery.js" type="text/javascript"></script>
</head>
<body>
    <form action="" class="loginform" method="post">
    <h1>Login</h1>
        <label for="namapengguna">Username</label>
        <input type="text" required placeholder="Pengguna" name="pengguna" id="namapengguna" autocomplete="on" class="input">
        <label for="pass">Password</label>
        <input type="password" required placeholder="Kata Sandi" name="katasandi" id="pass" class="input">
        <button type="submit" name="masuk" class="btn">Login</button>
    </form>
</body>
</html>