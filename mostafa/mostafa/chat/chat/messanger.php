<?php
/**
 * Created by PhpStorm.
 * User: Mostafa tarek
 * Date: 2/8/2017
 * Time: 2:45 PM
 */
session_start();
include ("database.php");
//$reciver=$_POST['reveicerid'];
//$sender=$_POST['senerid'];

echo "we got connection b2a ya marwa" ;


$conn=@mysqli_connect(host,USER,password,db) or die("can'y connect to marwa database.......");
$sql="SELECT distinct  msg.sndr_id , msg.rcvr_id , user.username FROM msg ,user WHERE (user.user_id = msg.sndr_id or user.user_id = msg.rcvr_id) AND  (msg.rcvr_id= '{$_SESSION['loginid']}')" ;
echo $sql;
//SQL2 all messages read = 0 
$res=@mysqli_query($conn,$sql)  ;
echo "mawaty";
echo "my id is" . $_SESSION['loginid'];
while ($field =mysqli_fetch_assoc($res))
{




    echo "
     <div class=\"chat-widget-left\">
                                        {$field['username']}
                                    </div>";
    
}




?>