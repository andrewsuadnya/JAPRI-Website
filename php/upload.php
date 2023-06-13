<?php
$koneksi = mysqli_connect("localhost", "root", "", "upload");

$file_name =  $_FILES['file']['name'];
$tmp_name = $_FILES['file']['tmp_name'];
$file_up_name = time().$file_name;
move_uploaded_file($tmp_name, "files/".$file_up_name);

mysqli_query($koneksi, "insert into document set file='$file_name'");

?>