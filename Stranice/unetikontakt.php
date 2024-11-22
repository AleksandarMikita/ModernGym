<?php
    $kontakt = mysqli_connect('localhost','root', '');
    mysqli_select_db($kontakt, 'treneri');
    $ime = $_POST['ime'];
    $mail = $_POST['mail'];
    $pitanje = $_POST['pitanje'];
    $ispis = "INSERT INTO kontakt(ime, email, pitanje) VALUES('$ime', '$mail', '$pitanje');";
    if(mysqli_query($kontakt, $ispis)){
        echo "<script>alert ('Kontakt je unet u tabelu')</script>";
    }
    else{
        echo "<script>alert('Pogresno ste uneli podatke!')</script>";
    }

    mysqli_close($kontakt);
    ?>