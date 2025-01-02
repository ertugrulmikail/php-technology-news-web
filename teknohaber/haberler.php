<?php
include("ayar.php");

$haberlerPerSayfa = 5; // Her sayfada gösterilecek haber sayısı
$mevcutSayfa = isset($_GET['sayfa']) ? (int)$_GET['sayfa'] : 1; // Mevcut sayfa numarası

$sqlCount = "SELECT COUNT(id) as toplamHaber FROM haberler";
$resultCount = $baglan->query($sqlCount);
$rowCount = $resultCount->fetch_assoc();
$toplamHaber = $rowCount['toplamHaber'];

$toplamSayfa = ceil($toplamHaber / $haberlerPerSayfa);

$limitBaslangic = ($mevcutSayfa - 1) * $haberlerPerSayfa;

if (isset($_GET['arama'])) {
    $aramaKelimesi = $_GET['arama'];
    $sql = "SELECT id, baslik, resim, icerik FROM haberler WHERE baslik LIKE '%$aramaKelimesi%' ORDER BY id DESC LIMIT $limitBaslangic, $haberlerPerSayfa";
    $result = $baglan->query($sql);
} else {
    $sql = "SELECT id, baslik, resim, icerik FROM haberler ORDER BY id DESC LIMIT $limitBaslangic, $haberlerPerSayfa";
    $result = $baglan->query($sql);
}


echo '<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TeknoHaber</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Futura:wght@700&display=swap">
    <link rel="icon" href="logo.ico" type="image/x-icon">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200&display=swap" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
    body {
        background-color: #101414;
        color: #ffffff; 
    }
    .header {
        background-color: #533a9e;
    }
    h1 a {
        font-family: \'Futura\', sans-serif;
        text-decoration: none;
        color: #dfe4ea;
    }
    h1 a p {
        margin: 0;
        padding: 0;
    }
    .haber {
        max-width: 75%;
        height: auto;
        margin-bottom: 20px;
        padding: 5px;
        border: 1px solid #444;
        background-color: #333;
        width: 100%; 
        margin: auto;
        padding-left: 100px; 
        padding-right: 100px; 
    }
    .haber a {
        width: 100%;
        color: #dfe4ea;
        text-decoration: none;
        
    }
    .haber a:hover {
        width: 100%;
        text-decoration: underline;
        border-bottom: none; 
        
    }
    
    .haber img {
        width: 100%;
        max-height: 400px; 
        object-fit: cover;
    }
    .haber p {
        font-family: "Poppins", sans-serif; 
        margin: 0; 
        border-bottom:none;
        text-decoration: none;
        
    }
    .haber p a:hover {
        text-decoration: none; 
        border-bottom: none; 
    }
    
    .sayfa-butonlari {
        margin-top: 20px;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .sayfa-butonlari a {
        display: inline-block;
        padding: 10px 15px; 
        margin: 0 5px;
        border: 2px solid #533a9e;
        border-radius: 5px;
        color: #dfe4ea;
        text-decoration: none;
        transition: background-color 0.3s ease-in-out;
    }

    .sayfa-butonlari a:hover {
        background-color: #533a9e;
    }
    
    </style>
</head>
<body>
    <center>
    <table width=width: 100%;>
    <nav class="navbar" >
    <h2><a href="index.php">
    <img src="yonetim/img/logo.png" alt="logo" width="330" height="" /></a></h2>
    <a href="index.php">ANASAYFA</a>
    <a href="haberler.php">HABERLER</a>
    <br>
    <br>
    <a Arama kutusu ve butonu >
        <form method="get" action="haberler.php">
        <input type="text" name="arama" placeholder="Haber ARA">
        <button type="submit">Ara</button>
    </form> </a>
    <a href="hakkimizda.php">Hakkımzda</a>
    
    </nav >
            <tr>
                <td>';

                echo '<div class="sayfa-butonlari" >';
                    if ($mevcutSayfa > 1) {
                    echo '<a href="?sayfa=' . ($mevcutSayfa - 1) . '">« Önceki</a>';
                    }

                    for ($i = 1; $i <= $toplamSayfa; $i++) {
                        echo '<a href="?sayfa=' . $i . '">' . $i . '</a>';
                        }

                    if ($mevcutSayfa < $toplamSayfa) {
                        echo '<a href="?sayfa=' . ($mevcutSayfa + 1) . '">Sonraki »</a>';
                        }

                echo '</div>';

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        echo "<br>";
        echo '<div class="haber">';
        echo '<a href="haber_detay.php?id=' . $row['id'] . '">';
        echo '<h1>' . $row['baslik'] . '</h1>';
        echo '<img src="yonetim/' . $row['resim'] . '" alt="' . $row['baslik'] . '" >';
        echo "<br>";

        
        $contentLines = explode("\n", $row['icerik']);
        $shortContent = implode('<br>', array_slice($contentLines, 0, 3));
        echo '<p>' . $shortContent . '<a href="haber_detay.php?id=' . $row['id'] . '"> <br>İçeriğin devamını görmek için tıklayınız</a></p>';

        echo '</a>';
        echo '</div>';
    }
} else {
    echo 'Henüz haber bulunmuyor.';
}

echo '<div class="sayfa-butonlari" >';
                    if ($mevcutSayfa > 1) {
                    echo '<a href="?sayfa=' . ($mevcutSayfa - 1) . '">« Önceki</a>';
                    }

                    for ($i = 1; $i <= $toplamSayfa; $i++) {
                        echo '<a href="?sayfa=' . $i . '">' . $i . '</a>';
                        }

                    if ($mevcutSayfa < $toplamSayfa) {
                        echo '<a href="?sayfa=' . ($mevcutSayfa + 1) . '">Sonraki »</a>';
                        }

                echo '</div>';



echo '</td>
    </tr>
    <tr>
        <td colspan="2" style="color:white;"> 
            TeknoHaber. &copy; 2024
        </td>
    </tr>
</center>
</table>
</body>
</html>';


$baglan->close();
?>
