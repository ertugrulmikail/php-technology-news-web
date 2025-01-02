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
        $sorgu = $baglan->query("DELETE FROM haberler WHERE id='$id'");
        header("Location: haberler.php");
        exit();
    }

    if ($islem == "ekle") {
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            $baslik = mysqli_real_escape_string($baglan, $_POST["baslik"]);
            $icerik = mysqli_real_escape_string($baglan, $_POST["icerik"]);
    
            $resim_adi = $_FILES["resim"]["name"];
            $uzanti = pathinfo($resim_adi, PATHINFO_EXTENSION);
            $benzersiz_ad = time() . '_' . mt_rand(1000, 9999);
            $resim_yeni_adi = "img/" . $benzersiz_ad . '.' . $uzanti;
            move_uploaded_file($_FILES["resim"]["tmp_name"], $resim_yeni_adi);
    
            $sorgu = $baglan->query("INSERT INTO haberler (baslik, resim, icerik) VALUES ('$baslik', '$resim_yeni_adi', '$icerik')");
            header("Location: haberler.php");
            exit();
        }
    }

    if ($islem == "duzenle") {
        $id = $_GET["id"];
        $sorgu = $baglan->query("SELECT * FROM haberler WHERE id='$id'");
        
        $satir = $sorgu->fetch_object();
    }

    if ($islem == "guncelle") {
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            $baslik = mysqli_real_escape_string($baglan, $_POST["baslik"]);
            $icerik = mysqli_real_escape_string($baglan, $_POST["icerik"]);
            $id = $_POST["id"];
    
            
            if ($_FILES["resim"]["name"]) {
                $resim_adi = $_FILES["resim"]["name"];
                $uzanti = pathinfo($resim_adi, PATHINFO_EXTENSION);
                $benzersiz_ad = time() . '_' . mt_rand(1000, 9999);
                $resim_yeni_adi = "img/" . $benzersiz_ad . '.' . $uzanti;
                move_uploaded_file($_FILES["resim"]["tmp_name"], $resim_yeni_adi);
    
                
                $sorgu = $baglan->query("UPDATE haberler SET baslik='$baslik', resim='$resim_yeni_adi', icerik='$icerik' WHERE id='$id'");
            } else {
                $sorgu = $baglan->query("UPDATE haberler SET baslik='$baslik', icerik='$icerik' WHERE id='$id'");
            }
    
            header("Location: haberler.php");
            exit();
        }
    }
?>

<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>Yönetim Paneli Haberler</title>
</head>
<body style="text-align:center;">

    <div style="text-align:center;">
    <a href="anasayfa.php">ANA SAYFA</a> - <a href="haberler.php">HABERLER</a> - <a href="logo.php">LOGO</a> -<a
            href="hakkimizda.php">HAKKIMIZDA</a> - <a
            href="cikis.php" onclick="if (!confirm('Çıkış Yapmak İstediğinize Emin misiniz?')) return false;">ÇIKIŞ</a>
        <br><hr><br><br>
    </div>

    <?php if ($islem == "duzenle"): ?>
        <form action="haberler.php?islem=guncelle" enctype="multipart/form-data" method="post">
            <input type="hidden" name="id" value="<?php echo $satir->id; ?>">
            <b>Başlık:</b><input type="text" size="150" name="baslik" value="<?php echo $satir->baslik; ?>"> <br>
            <b>İçerik:</b><textarea name="icerik" rows="30" cols="200"><?php echo $satir->icerik; ?></textarea> <br>
            <b>Resim:</b><input type="file" name="resim"> <br>
            <input type="submit" value="Güncelle">
        </form>
    <?php else: ?>
        <form action="haberler.php?islem=ekle" enctype="multipart/form-data" method="post">
            <b>Başlık: <br></b><input type="text" size="90" name="baslik"> <br>
            <b>İçerik:<br> </b><textarea name="icerik" rows="25" cols="100"></textarea> <br>
            <br>
            <b>Resim: </b><input type="file" name="resim"> <br>
            <br>
            <input type="submit" value="Kaydet">
        </form>
    <?php endif; ?>

    <br><br>

    <table width="100%" border="1">
        <tr align="center">
            <th>S. No</th>
            <th>Başlık</th>
            <th>İçerik</th>
            <th>Resim</th>
            <th>Düzenle</th>
            <th>Sil</th>
        </tr>
        <?php
            $sirano = 0;
            $sorgu = $baglan->query("SELECT * FROM haberler");
            while ($satir = $sorgu->fetch_object()) {
                $sirano++;
                echo "<tr align='center'>
                    <td>$sirano</td>
                    <td>$satir->baslik</td>
                    <td>$satir->icerik</td>
                    <td><img src='$satir->resim' width='50' height='50'></td>
                    <td><a href='haberler.php?islem=duzenle&id=$satir->id'>Düzenle</a></td>
                    <td><a href='haberler.php?islem=sil&id=$satir->id'>Sil</td>
                </tr>";
            }
        ?>
    </table>

</body>
</html>

