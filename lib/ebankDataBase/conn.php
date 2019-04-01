<?php

    $connection = new mysqli("localhost", "root", "", "mymobilebank");

    if (!$connection) {
        echo "echec de connexion!";
        exit();
    }
?>