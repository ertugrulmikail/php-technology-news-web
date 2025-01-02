<?php
include("ayar.php");


if (isset($_GET['id'])) {
    $haberId = $_GET['id'];

    
    $sql = "SELECT id, baslik, resim, icerik FROM haberler WHERE id = $haberId";
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
            body {
            background-color: #101414;
            color: #ffffff;
                }
            .header {
            background-color: #533a9e;
            }
            h1 a {
            font-family: "Futura", sans-serif;
            text-decoration: none;
            color: #dfe4ea;
                }
            h1 a p {
            margin: 0;
            padding: 0;
            }
            .haber {
            max-width: 95%;
            height: auto;
            margin-bottom: 20px;
            padding: 10px; 
            border: 1px solid #444;
            background-color: #333;
            width: 100%;
            
            }
            .haber-icerik {
                margin-left: 80px;
                margin-right: 150px;
                font-family: "Poppins", sans-serif;
            }
            
            .haber h1 {
            margin-left: 75px;
            margin-right: 150px;
            }
            .haber img {
            margin-left: 75px; 
            margin-right: 150px;
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
        <a Arama kutusu ve butonu >
            <form method="get" action="haberler.php">
            <input type="text" name="arama" placeholder="Haber ARA">
            <button type="submit">Ara</button>
        </form> </a>
        <a href="hakkimizda.php">Hakkımzda</a>
        
        </nav>
                <tr>
                    <td colspan="3">';

    if ($sonuc->num_rows > 0) {
        while ($row = $sonuc->fetch_assoc()) {
            echo '<div class="haber">';
            echo '<h1>' . $row['baslik'] . '</h1>';
            echo '<img src="yonetim/' . $row['resim'] . '" alt="' . $row['baslik'] . '" width="80%" >';
            echo "<br><br>";
            echo '<div class="haber-icerik">' . nl2br($row['icerik']) . '</div>';

            echo '</div>';
        }
    } else {
        echo 'Haber bulunamadı.';
    }
    // son haberler kısmı
    echo '</td>
                <td style="width: 30%; vertical-align: top;">
                    <div class="sidebar">';
    
    $sql_yanbar = "SELECT id, baslik, resim FROM haberler WHERE id != $haberId ORDER BY id DESC LIMIT 6";
    $sonuc_yanbar = $baglan->query($sql_yanbar);

    if ($sonuc_yanbar->num_rows > 0) {
        echo "<br>";
        echo '<h2><a href="haberler.php">SON HABERLER</a></h2>';
        echo '<ul>';
        while ($row_yanbar = $sonuc_yanbar->fetch_assoc()) {
            echo '<a href="haber_detay.php?id=' . $row_yanbar['id'] . '">';
            echo '<div style="display: flex; align-items: center;">';
            echo '<img src="yonetim/' . $row_yanbar['resim'] . '" alt="' . $row_yanbar['baslik'] . '" width="45%">';  
            echo '<p style="margin-left: 10px;">' . $row_yanbar['baslik'] . '</p>';
            echo '</div>';
            echo '</a>';
            
        }
        echo '</ul>';
    } else {
        echo 'Son haber bulunamadı.';
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
} else {
    echo 'Haber ID belirtilmedi.';
}
?>
