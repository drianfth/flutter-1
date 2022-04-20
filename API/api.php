<?php
    $server = "localhost";
    $user = "root";
    $password = "";
    $nama_database = "tourismlist";
    $koneksi = mysqli_connect($server, $user, $password, $nama_database);
    if( !$koneksi ){
        die("Gagal terhubung dengan database: " . mysqli_connect_error());
    }
    if(!isset($_POST['action'])) $_POST['action'] = "";

    if($_POST['action'] == 'create'){        
        if( !isset($_POST['title']) ||
            !isset($_POST['description']) ||
            !isset($_POST['openDay']) ||
            !isset($_POST['openTime']) ||
            !isset($_POST['price']) ||
            !isset($_POST['location']) ||
            !isset($_POST['img1'])){
            echo "Data tidak lengkap!";
        }
        else{
            $sql = "INSERT INTO `tourismlistplace` (`id`, `title`, `description`, `openDay`, `openTime`, `price`, `location`, `img`, `img1`, `img2`, `img3`) 
                    VALUES (NULL, '".$_POST['title']."', '".str_replace("'", "\'", $_POST['description'])."', '".$_POST['openDay']."', '".$_POST['openTime']."', '".
                    $_POST['price']."', '".$_POST['location']."', '".$_POST['img']."', '".$_POST['img1']."', '".$_POST['img2']."', '".$_POST['img3']."');";
            echo $sql.'<br><br>';
            $query = mysqli_query($koneksi, $sql);
            if($query) echo 'Create Successfully';
            else echo 'Create Failed!';
        }
    }
    else if($_POST['action'] == 'update'){
        if(!isset($_POST['id'])){
            echo "ID Required!";            
        }
        else{
            $sql = "SELECT * FROM `tourismlistplace` WHERE `tourismlistplace`.`id` = ".$_POST['id'];
            $query = mysqli_query($koneksi, $sql);  
            if($query){
                if($user = mysqli_fetch_array($query)){
                    $data = ['title', 'description', 'openDay', 'openTime', 'price', 'location', 'img', 'img1', 'img2', 'img3'];
                    for($a = 0; $a < 10; $a++){
                        if(isset($_POST[$data[$a]])){
                            $sql = "UPDATE `tourismlistplace` SET `".$data[$a]."` = '".str_replace("'", "\'", $_POST[$data[$a]])."' WHERE `tourismlistplace`.`id` = ".$_POST['id'];
                            $query = mysqli_query($koneksi, $sql);
                            if($query) echo 'Edit '.$data[$a].' Successfully<br>';
                            else echo 'Edit '.$data[$a].' Failed!<br>';
                        }
                    }
                }
                else echo 'ID Not Found!';                
            }          
            else echo "ID Required!";
        }
    }
    else if($_POST['action'] == 'delete'){
        if(!isset($_POST['id'])){
            echo "ID Required!";
        }
        else{
            $sql = "SELECT * FROM `tourismlistplace` WHERE `tourismlistplace`.`id` = ".$_POST['id'];
            $query = mysqli_query($koneksi, $sql);  
            if($query){
                if($user = mysqli_fetch_array($query)){
                    $sql = "DELETE FROM `tourismlistplace` WHERE `tourismlistplace`.`id` = ".$_POST['id'];
                    $query = mysqli_query($koneksi, $sql);
                    if($query) echo 'Delete Successfully';
                    else echo 'Delete Failed!';
                }
                else echo 'ID Not Found!';
            }          
            else echo "ID Required!";
        }
    }   
    else {        
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
    }
