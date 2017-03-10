<?php
include ("database.php");

$conn=@mysqli_connect(host,USER,password,db) or die("can'y connect to marwa database.......");
$sql="SELECT * from smptm " ;
$res=mysqli_query($conn,$sql);
$arr=mysqli_fetch_all($res);
$length =  sizeof($arr) ."<br>";
$width = sizeof($arr[0]) ;




?>