<?php 

if (!isset($_GET['proid'])) {
    unset($_REQUEST['proid']);
      echo "failed";
}else{

	echo "success ".$_GET['proid'];

}
if (!isset($_SESSION['error'])) {
  # code...
    $error_message = "Please select your size number".'<br>';
    unset($_SESSION['error']);

    echo"success";


}


 if($error_message != '') 
 {
    echo "<div class='danger' style='padding: 10px;background:#f1f1f1;margin-bottom:20px; color:red'>".$error_message."</div>";
        }
      if($success_message != '') {
      echo "<div class='success' style='padding: 10px;background:#f1f1f1;margin-bottom:20px;color:green'>".$success_message."</div>";
                }
?>