<?php
include("ayar.php");


$sql = "SELECT aciklama FROM hakkimizda";
$result = $baglan->query($sql);


echo '<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hakkımızda - TeknoHaber</title>
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
            font-family: \'Futura\', sans-serif;
            text-decoration: none;
            color: #dfe4ea;
        }
        h1 a p {
            margin: 0;
            padding: 0;
        }
        .hakkimizda {
            max-width: 75%;
            height: auto;
            margin-bottom: 20px;
            padding: 5px;
            border: 1px solid #444;
            background-color: #333;
            width: 140%; 
            margin: auto; 
        }
    </style>
</head>
<body>
    <center>
            <table width=width: 100%;>
            <nav class="navbar">
                <h2><a href="index.php"><img src="yonetim/img/logo.png" alt="logo" width="330" height="" /></a></h2>
                <a href="index.php">ANASAYFA</a>
                <a href="haberler.php">HABERLER</a>
                <a href="hakkimizda.php">HAKKIMIZDA</a>
                <br>
                <br>
                <a>
                    <!-- Arama kutusu ve butonu ekleniyor -->
                    <form method="get" action="haberler.php">
                        <input type="text" name="arama" placeholder="Haber ARA">
                        <button type="submit">Ara</button>
                    </form>
                </a>
            </nav>
            <tr>
                <td>';


if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();
    echo '<br><br><div class="hakkimizda"> ';
    
    echo '<h1>Hakkımızda</h1> <br>'; 
    echo '<p>' . nl2br($row['aciklama']) . '</p>';
    echo '</div>';
} else {
    echo 'Hakkımızda bilgisi bulunmuyor.';
}


echo '</td>
            </tr>
            <tr>
                <td colspan="2" style="color:white;"> 
                <br><br><br><br><br><br>
                    TeknoHaber. &copy; 2024
                </td>
            </tr>
        </center>
        </table>
    </body>
    </html>';


$baglan->close();
?>
