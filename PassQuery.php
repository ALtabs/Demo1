<?php

include('admin/inc/config.php');
if ($_POST['source'] == "ConfirmPass")
{
	$id = $_POST['Logid'];
	$pass = md5($_POST['pass']);

	$passvalidate = $pdo->prepare("SELECT * FROM tbl_user WHERE id = ? && password = ?");
	$passvalidate->execute(array($id,$pass));
	$total = $passvalidate->rowCount();
	$result = $passvalidate->fetchAll(PDO::FETCH_ASSOC);
	
  	if($total > 0)
  	{
  		exit('exist');
  	}
  	else
  	{
  		exit('notexist');
  	}
}

else if ($_POST['source'] == "ChangePass")
{

	$password = md5($_POST['pass']);
	$userid = $_POST['userid'];

	$query=$pdo->prepare("UPDATE tbl_user SET password = ?  WHERE id = ?");
	$query->execute(array($password,$userid));

}
?>