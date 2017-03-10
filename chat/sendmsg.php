<?php
/**
 * Created by PhpStorm.
 * User: Mostafa tarek
 * Date: 2/8/2017
 * Time: 2:13 PM
 */


include ("database.php");
$reciver=$_POST['reveicerid'];
$sender=$_POST['senerid'];
$msg=$_POST['msg'];

$conn=@mysqli_connect(host,USER,password,db) or die("can't connect to marwa database.......");

$sql="INSERT INTO `msg`( `sndr_id`, `rcvr_id`, `msg_txt`, `msg_tm`,`read`) VALUES ('$sender' ,'$reciver' ,'$msg' ,now(),'0')" ;

$res=@mysqli_query($conn,$sql) ;




?>