<?php
    session_start();
    include("ayar.php");

    if ($_SESSION["giris"] != sha1(md5("var")) || $_COOKIE["kullanici"] != "msb") {
        header("Location: cikis.php");
    }

?>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>Yönetim Paneli</title>
</head>
<body style="text-align:center;padding-top:30px;">

    <div style="text-align:center;">
        <hr>
        <a href="anasayfa.php">ANA SAYFA</a> - <a href="haberler.php">HABERLER</a> - <a href="logo.php">LOGO</a> -<a
            href="hakkimizda.php">HAKKIMIZDA</a> - <a
            href="cikis.php" onclick="if (!confirm('Çıkış Yapmak İstediğinize Emin misiniz?')) return false;">ÇIKIŞ</a>
        <br><hr><br><br>
    </div>

    <h2 style="text-align:center;"> Menüden Seçim Yapınız </h2>

    

</body>
</html>