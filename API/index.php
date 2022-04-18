<?php
    $server = "localhost";
    $user = "root";
    $password = "";
    $nama_database = "tourismlist";
    $koneksi = mysqli_connect($server, $user, $password, $nama_database);
    if( !$koneksi ){
        die("Gagal terhubung dengan database: " . mysqli_connect_error());
    }
    $sql = "SELECT * FROM `tourismlistplace`";
    $query = mysqli_query($koneksi, $sql);
    $rowcount = mysqli_num_rows($query);
    header('Content-Type: application/json');
    header("Access-Control-Allow-Origin: *");

    echo '{"status":"ok","totalResults":'.$rowcount.',"tourismPlaces":';
    while($user = mysqli_fetch_assoc($query)){
        $rows[] = $user;
    }                   
    print str_replace("\\\\n", "\\n", json_encode($rows));                  
    echo '}';
