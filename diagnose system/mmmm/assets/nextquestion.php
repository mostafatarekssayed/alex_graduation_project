<?php
/**
 * Created by PhpStorm.
 * User: Mostafa tarek
 * Date: 2/13/2017
 * Time: 1:35 AM
 */

$ans=$_POST['ans'];
$questionid=$_POST['question'];

if($ans==false)
{
    $sql="SELECT smptm_id from wz_qstn_smptm where wzrd_qstn_id = '$questionid'";
    

}
else
{


}



?>