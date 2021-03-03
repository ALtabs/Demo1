<?php 

session_start();
include('admin/inc/config.php');

if($_POST['source'] == "AddCustomer")
{
	$fname = $_POST['fname'];
	$lname = $_POST['lname'];
	$email = $_POST['email'];
	$phone = $_POST['phone'];
	$password = $_POST['password'];
    $date = date('Y-m-d');
	$role = $_POST['role'];
	$status = $_POST['status'];
	

	$q = $pdo->prepare("INSERT INTO tbl_user (first_name,last_name,email,phone,password,join_date,role,user_status) VALUES (?,?,?,?,?,?,?,?)");
	$q->execute(array($fname,$lname,$email,$phone,md5($password),$date,$role,$status));
}
else if ($_POST['source'] == "Edit")
{
  $name = $_POST['full_name'];
  $add1 = $_POST['add1'];
  $add2 = $_POST['add2'];
  $muni = $_POST['muni'];
  $city = $_POST['cities'];
  $telephone = $_POST['phonenum'];
  $email = $_POST['email'];
  $deID = $_POST['g_code'];


  $q = $pdo->prepare("UPDATE cust_guest SET full_name = :full_name,
                                              add1 = :add1,
                                              add2 = :add2,
                                              muni = :muni,
                                              cities = :cities,
                                              phonenum = :phonenum,
                                              email = :email
                                              WHERE g_code = :g_code");
  
  $q->execute(array(':full_name' => $name, ':add1' => $add1,':add2' => $add2, ':muni' => $muni,':cities' => $city,':phonenum' => $telephone,':email' => $email, ':g_code'=> $deID));
}

else if($_POST['source'] == "AddMsg")
{
  $fullname = $_POST['fullname'];
  $email = $_POST['email'];
  $subject = $_POST['subject'];
  $msg = $_POST['message'];
  

  $q = $pdo->prepare("INSERT INTO tbl_message VALUES (NULL, :msg_fullname, :msg_email, :msg_subject, :msg_message)");
  $q->execute(array(':msg_fullname' => $_POST['fullname'], ':msg_email' => $_POST['email'],':msg_subject' => $_POST['subject'], ':msg_message' => $_POST['message']));
}

else if ($_POST['source']=="AddGuest")
{
    $name = $_POST['first'];
    $name2 = $_POST['last'];
    $add1 = $_POST['add1'];
    $add2 = $_POST['add2'];
    $muni = $_POST['muni'];
    $city = $_POST['cities'];
    $phone = $_POST['phonenum'];
    $email = $_POST['email'];
    $date = date('Y-m-d');
    $status = 1;
    $code = $_POST['g_code'];
    
    $q=$pdo->prepare("INSERT INTO cust_guest (first_name,last_name,add1,add2,muni,cities,phonenum,email,g_date,status,g_code) VALUES (?,?,?,?,?,?,?,?,?,?,?)");
    $q->execute(array($name,$name2,$add1,$add2,$muni,$city,$phone,$email,$date,$status,$code));
}

else if ($_POST['source'] == "validate_shipping_cost")
{
  $prov_id = $_POST['Pid'];
  $city_id = $_POST['Cid'];

  $query = $pdo->prepare("SELECT * FROM tbl_shipping_cost WHERE province_id = ? AND city_id = ?");
  $query->execute(array($prov_id,$city_id));
  $total = $query->rowCount();
  $result = $query->fetchAll(PDO::FETCH_ASSOC);

    if($total > 0)
    {
      exit('exist');
    }
    else
    {
      exit('notexist');
    }
}

else if ($_POST['source'] == "add_shipping_cost")
{
  $province = $_POST['province_id'];
  $city = $_POST['city_id'];
  $amount = $_POST['amount'];

  $q = $pdo->prepare("INSERT INTO tbl_shipping_cost VALUES (NULL,:province_id,:city_id,:amount)");
  $q->execute(array(':province_id' => $province, ':city_id' => $city, ':amount' => $amount));
}

else if ($_POST['source'] == "update_shipping_cost")
{
  $id = $_POST['id'];
  $amt = $_POST['amount'];

  $q = $pdo->prepare("UPDATE tbl_shipping_cost SET amount = :amount WHERE shipping_cost_id = :id");
  $q->execute(array(':amount'=>$amt,':id'=>$id));
}

else if ($_POST['source'] == "DeleteOrder")
{
  $id = $_POST['id'];

  $q = $pdo->prepare("DELETE FROM tbl_order WHERE order_id = :order_id");
  $q->execute(array(':order_id' => $_POST['id']));
}

else if ($_POST['source'] == "DeleteCart")
{
  $id = $_POST['id'];

  $q = $pdo->prepare("DELETE FROM cust_cart WHERE order_id = :order_id");
  $q->execute(array(':order_id' => $_POST['id']));

    $r = $pdo->prepare("DELETE FROM tbl_order WHERE cart_id = :cart_id");
  $r->execute(array(':cart_id' => $_POST['id']));
}

else if ($_POST['source'] == "UpdateSizeQty")
{
  $id = $_POST['id'];
  $stock = $_POST['stock'];

  $q = $pdo->prepare("UPDATE tbl_product_size SET prod_stock = :prod_stock WHERE id=:id");
  $q->execute(array(':prod_stock'=> $stock, ':id'=>$id));  
}

else if ($_POST['source'] == "ValidateExistingProdSize")
{
  $p_id = $_POST['p_id'];
  $size_id = $_POST['size_id'];

  $query = $pdo->prepare("SELECT * FROM  tbl_product_size i INNER JOIN tbl_size ii ON i.size_id = ii.size_id INNER JOIN tbl_product iii ON iii.p_id = i.p_id 
  WHERE ii.size_id = ? AND iii.p_id = ?");
  $query->execute(array($size_id,$p_id));
  $total = $pdo->rowCount();
  $result = $query->fetchAll();

  if($total > 0)
    {
      echo 'exist';
    }
    else
    {
      echo 'notexist';
    }

}

else if ($_POST['source'] == "AddSize")
{
  $size = $_POST['size_id'];
  $product = $_POST['p_id'];
  $stock = $_POST['stock'];

  $q=$pdo->prepare("INSERT INTO tbl_product_size VALUES (NULL,:size_id,:p_id,:prod_stock)");
  $q->execute(array(':size_id'=>$size,':p_id'=>$product,':prod_stock'=>$stock));
}

else if ($_POST['source'] == "Ban")
{
  $id = $_POST['id'];
  $status = 0;

  $q = $pdo->prepare("UPDATE tbl_user SET user_status = :user_status WHERE id = :id");
  $q->execute(array(':user_status'=>$status,':id' => $id));
}

else if ($_POST['source'] == "Restore")
{
  $id = $_POST['id'];
  $status = 1;

  $q = $pdo->prepare("UPDATE tbl_user SET user_status = :user_status WHERE id = :id");
  $q->execute(array(':user_status'=>$status,':id' => $id));
}

else if ($_POST['source'] == "UpdateRole")
{
  $id = $_POST['id'];
  $role = $_POST['role'];

  $q = $pdo->prepare("UPDATE tbl_user SET role = :role WHERE id = :id");
  $q->execute(array(':role'=>$role,':id'=>$id));
}

else if ($_POST['source'] == "BlockAcc")
{
    $id = $_POST['id'];
    $status = 0;

  $q = $pdo->prepare("UPDATE tbl_user SET user_status = :user_status WHERE id = :id");
  $q->execute(array(':user_status'=>$status,':id'=>$id));
}

else if ($_POST['source'] == "RestoreAccount")
{
  $id = $_POST['id'];
    $status = 11;

  $q = $pdo->prepare("UPDATE tbl_user SET user_status = :user_status WHERE id = :id");
  $q->execute(array(':user_status'=>$status,':id'=>$id));
}

else if ($_POST['source'] == "Subscribe")
{
  $email = $_POST['email'];
  $date = date('Y-m-d');
  $active = "Active";

  $q = $pdo->prepare("INSERT INTO tbl_subscriber VALUES (NULL,:subs_email,:subs_date,:subs_active)");
  $q->execute(array(':subs_email'=>$email, ':subs_date'=>$date, ':subs_active'=>$active));
}
?>
