<?php
/**
 * Created by PhpStorm.
 * User: Mostafa tarek
 * Date: 2/8/2017
 * Time: 2:45 PM
 */

include ("database.php");
$reciver=$_POST['reveicerid'];
$sender=$_POST['senerid'];

echo "we got connection b2a ya marwa" ;
$conn=@mysqli_connect(host,USER,password,db) or die("can'y connect to marwa database.......");
$sql="SELECT `msg_txt` FROM `msg`  " ;
$res=@mysqli_query($conn,$sql) ;
while ($field =@mysqli_fetch_assoc($res))
{

    echo "
     <div class=\"chat-widget-left\">
                                        {$field['msg_txt']}
                                    </div>
                                    <div class=\"chat-widget-name-left\">
                                        <h4>username</h4>
                                    </div>
    ";



    



}

$sql3="UPDATE `msg`  set msg_read='1' WHERE  rcvr_id={$_SESSION[loginid]} and msg_read=0 and sndr_id";
@mysqli_query($sql3) ;
?>