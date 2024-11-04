<?php
session_start();
include "koneksi.php";
$sqlag = mysqli_query($kon,"select * from anggota where email='$_SESSION[userag]' and password='$_SESSION[passag]'");
$rag = mysqli_fetch_array($sqlag);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Oline shope Agil Saputra</title>
</head>
<body>

<div class="container1">
    <div class="grid">
        <div class="dh12">
            Padang,Indonesia | 082288441637 | sales@epwmonlineshope.com
</div>
</div>
</div>

<?php
include"menu.php";
?>

<div class="container3">
    <div class="grid">
        <div class="dh12">
            <form action="<?php "?p=produkterbaru";?>" method="post">
        <input type="text" name="nama" id="cari" placeholder="Ketik Nama Produk yang akan dicari">
        <input type="submit" name="cari" value="Cari">
        </form>
</div>
</div>
</div>

<?php
if($_GET["p"] == "produkterbaru"){
    include "produkterbaru.php";
}else if($_GET["p"] == "produkdetail"){
    include "produkdetail.php";
}else{
    include "home.php";
    include "produkterbaru.php";
}
?>

<div class="container6">
    <div class="grid">
        <div class="dh12">
            Copyright &copy; Agil Saputra 2024
</div>
</div>
</div>
    
</body>
</html>