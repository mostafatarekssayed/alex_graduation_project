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
$sql="SELECT  distinct msg.msg_txt ,msg.sndr_id , msg.rcvr_id , user.username FROM msg ,user WHERE (user.user_id = msg.sndr_id or user.user_id = msg.rcvr_id )AND (msg.sndr_id='{$_SESSION['loginid']}' or msg.rcvr_id= '{$_SESSION['loginid']}')  order by msg.msg_id desc limit 20 " ;
echo $sql ;
$res=@mysqli_query($conn,$sql)  ;
echo "mawaty";
echo "my id is" . $_SESSION['loginid'];
while ($field =mysqli_fetch_assoc($res))
{

if($field['sndr_id']==$_SESSION['loginid'])

{


    echo "
     <div class=\"chat-widget-left\">
                                        {$field['msg_txt']}
                                    </div>
                                    <div class=\"chat-widget-name-left\">
                                       {$field['username']}
                                    </div>";

}
else
{

    echo "

                                    <div class=\"chat-widget-right\">
                                        {$field['msg_txt']}
                                    </div>
                                    <div class=\"chat-widget-name-right\">
                                       {$field['username']}
                                    </div>
    ";



    
}


}



?>