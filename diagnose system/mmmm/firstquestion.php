<?php
/**
 * Created by PhpStorm.
 * User: Mostafa tarek
 * Date: 2/13/2017
 * Time: 12:45 AM
 */


Define('host',"localhost");
header('content-type:application/json');
Define('user',"root");
Define('db',"diagnose");
Define('pass',"12345");
$bodyid=$_POST["body_part"];
$conn=@mysqli_connect(host,user,pass,db) or die("can't connect ");
$sql="SELECT wzrd_qstn.wzrd_qstn_txt , wzrd_qstn.wzrd_qstn_id from wz_qstn_prt , wzrd_qstn where wzrd_qstn.wzrd_qstn_id = wz_qstn_prt.wzrd_qstn_id 
AND  wz_qstn_prt.mdl_part_id ='$bodyid'";

$res=mysqli_query($conn,$sql) ;

$arr=mysqli_fetch_assoc($res);
echo json_encode($arr);









//SELECt wz_qstn_smptm.smptm_id from wz_qstn_smptm where (wz_qstn_smptm.wzrd_qstn_ansr = 'yes') or (wz_qstn_smptm.wzrd_qstn_ansr = 'yes')

//if yes
/*
SELECT  DISTINCT smptm_smptm.related_smptm_id from smptm_smptm , wz_qstn_smptm
WHERE (wz_qstn_smptm.wzrd_qstn_ansr = 'yes') and  smptm_smptm.width =
    (SELECT MAX(width) from wz_qstn_smptm where smptm_smptm.smptm_id = 1 )
*/







?>