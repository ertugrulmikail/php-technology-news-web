<?php
session_start();
include("ayar.php");

if ($_SESSION["giris"] != sha1(md5("var")) || $_COOKIE["kullanici"] != "msb") {
    header("Location: cikis.php");
    exit();
}

$islem = isset($_GET["islem"]) ? $_GET["islem"] : "listele";

if ($islem == "sil") {
    $id = $_GET["id"];
    
    
    $sorguLogo = $baglan->query("SELECT logo FROM logo WHERE id='$id'");
    $logoRow = $sorguLogo->fetch_object();

    if ($logoRow) {
        $logo = $logoRow->logo;

      
        $sorgu = $baglan->query("DELETE FROM logo WHERE id='$id'");
        
        if (file_exists($logo)) {
            unlink($logo);
        }
    }

    header("Location: logo.php");
    exit();
}


if ($islem == "ekle") {
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        
        $sorguMevcutLogolar = $baglan->query("SELECT * FROM logo");
        while ($eskiLogo = $sorguMevcutLogolar->fetch_object()) {
            unlink($eskiLogo->logo);
        }
        
        
        $sorguSil = $baglan->query("DELETE FROM logo");

  
        $logo_adi = $_FILES["logoDosyasi"]["name"];
        $logo_uzanti = pathinfo($logo_adi, PATHINFO_EXTENSION);
        $logo_yeni_adi = "img/logo.png"; 
        move_uploaded_file($_FILES["logoDosyasi"]["tmp_name"], $logo_yeni_adi);

    
        $sorgu = $baglan->query("INSERT INTO logo (logo) VALUES ('$logo_yeni_adi')");
        header("Location: logo.php");
        exit();
    }
}



?>

<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>Yönetim Paneli Logo</title>
    <style>
        body {
            text-align: center;
        }

        div.logo-container {
            background-color: #3498db; /* logonun göründüğü kısmın arkaplanını mavi yapıyoruz logo beyaz oldğu içn */
            display: inline-block;
            padding: 20px;
            border-radius: 10px;
            margin-top: 20px;
        }

        div.logo-container img {
            width: 100%;
            height: 100%;
        }
    </style>
</head>
<body>

<div>
    <a href="anasayfa.php">ANA SAYFA</a> - <a href="haberler.php">HABERLER</a> - <a href="logo.php">LOGO</a> -<a
            href="hakkimizda.php">HAKKIMIZDA</a> - <a
            href="cikis.php" onclick="if (!confirm('Çıkış Yapmak İstediğinize Emin misiniz?')) return false;">ÇIKIŞ</a>
    <br><hr><br><br>
</div>

<div class="logo-container">
    <?php
    $logoPath = 'img/logo.png';
    if (file_exists($logoPath) && pathinfo($logoPath, PATHINFO_EXTENSION) == 'png'): ?>
        <img src='<?php echo $logoPath; ?>' alt='Logo'>
    <?php else: ?>
        <p>Logo Yok</p>
    <?php endif; ?>
</div>



<br>

<form action="logo.php?islem=ekle" enctype="multipart/form-data" method="post">
    <b>Logo:</b><input type="file" name="logoDosyasi"> <br>
    <input type="submit" value="Yükle">
</form>

<br><br>

<table width="30%" border="1" align="center">
    <tr align="center">

       
        
    </tr>
    <?php
    $sirano = 0;
    $sorgu = $baglan->query("SELECT * FROM logo");
    while ($satir = $sorgu->fetch_object()) {
        $sirano++;
        echo "<tr align='center'>
              
                
                <td><a href='logo.php?islem=sil&id=$satir->id'>Sil</td>
            </tr>";
    }
    ?>
</table>

</body>
</html>
