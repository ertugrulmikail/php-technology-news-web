<?php
include("ayar.php");

$sql = "SELECT id, baslik, resim, icerik FROM haberler ORDER BY id DESC";
$sonuc = $baglan->query($sql);


echo '<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TeknoHaber</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Futura:wght@700&display=swap">
    <link rel="icon" href="logo.ico" type="image/x-icon">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
    <style>
        body{
            background-color: #101414;
            color: #ffffff; 
        }
        .header{
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
            max-width: 100%;
            height: auto;
            margin-bottom: 20px;
            padding: 5px;
            border: 1px solid #444;
            background-color: #333;
            width: 31%; 
            margin-right: 1%; 
            float: left; 
        }
        .haber a {
            text-decoration: none;
        }
        .haber h1 {
            margin-bottom: 0;
            font-family: "Futura", sans-serif;
            color: #dfe4ea;
            transition: color 0.3s; 
        }
    
        .haber h1:hover {
            color: orange; 
        }
        .haber img {
            width: 100%;
        max-height: 250px; 
        object-fit: cover;
        }
    </style>
</head>
<body>
    <center>
        <table width=width: 100%;>
        <nav class="navbar">
        <h2><a href="index.php">
        <img src="yonetim/img/logo.png" alt="logo" width="330" height="" /></a></h2>
        <a href="index.php">ANASAYFA</a>
        <a href="haberler.php">HABERLER</a>
        <br>
        <br>
        <a <!-- Arama kutusu ve butonu  -->
            <form method="get" action="haberler.php">
            <input type="text" name="arama" placeholder="Haber ARA">
            <button type="submit">Ara</button>
        </form> </a>
        <a href="hakkimizda.php">Hakkımzda</a>
        
        </nav>
            <tr>
                <td colspan="3">';

if ($sonuc->num_rows > 0) {
    $sayac = 0;
    while ($row = $sonuc->fetch_assoc()) {
        if ($sayac % 3 == 0 && $sayac != 0) {
            echo '<div style="clear:both;"></div>'; 
        }

        echo '<div class="haber">';
        echo '<a href="haber_detay.php?id=' . $row['id'] . '">'; 
        echo '<img src="yonetim/' . $row['resim'] . '" alt="' . $row['baslik'] . '" width="100%" >';
        echo '<h1>' . $row['baslik'] . '</h1>';
        echo '</a>';
        echo '</div>';

        $sayac++;
    }
} else {
    echo 'Henüz haber bulunmuyor.';
}

echo '</td>
    </tr>
    <tr>
        <td colspan="3" style="color:white;"> 
            TeknoHaber. &copy; 2024
        </td>
    </tr>
    </table>
    </center>
</body>
</html>';

$baglan->close();
?>
