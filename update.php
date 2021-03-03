<?php 
ob_start();
session_start();
include("admin/inc/config.php");
include("admin/inc/functions.php");
include("admin/inc/CSRF_Protect.php");
$csrf = new CSRF_Protect(); 

if(isset($_REQUEST['proupdate'])){
    
    if(isset($_POST['sizeupdate'])){
        
        
             $statement = $pdo->prepare("SELECT * FROM tbl_size WHERE size_id=?");
             $statement->execute(array($_POST['sizeupdate']));
             $result = $statement->fetchAll(PDO::FETCH_ASSOC);                            
            foreach ($result as $row) {
                                         $new_size=$row['size_id'];
                                         $size_name = $row['size_name'];
                                         
                                        
                                      }
                                      
     $i=0;
    foreach($_SESSION['cart_size_id'] as $key => $value) 
    {
        $i++;
        $arr_cart_size_id[$i] = $value;
    }

    $i=0;
     foreach($_SESSION['cart_size_name'] as $key => $value) 
    {
        $i++;
        $arr_cart_size_name[$i] = $value;
    }
      $i=0;
     
    foreach($_POST['product_id'] as $val) {
        $i++;
        $arr1[$i] = $val;
    }
    
    $i=0;
     
    foreach($_POST['quantity'] as $val) {
        $i++;
        $arr2[$i] = $val;
    }
   
   
    $inter =  ((int)$arr1[$i]);
    $qty= ((int)$arr2[$i]);
     
     
    $ALLOW=1;
 
    $statement1 = $pdo->prepare("SELECT * FROM tbl_product_size WHERE size_id=? AND p_id=?");
      $statement1->execute(array($_POST['sizeupdate'],$inter));
    $result1 = $statement1->fetchAll(PDO::FETCH_ASSOC);
    foreach ($result1 as $row) {
        
         $table_product_id= $row['p_id']."<br>";
        $table_quantity= $row['prod_stock']."<br>";
    }
   
   if($table_quantity>=$qty){
       
       $new_p_id = $qty;
   }else{
       $ALLOW=0;
       $_SESSION['error12']=$qty;
   }
   
    if($ALLOW==1){
                                                
           $_SESSION['cart_size_id'][$i]=$new_size;
          $_SESSION['cart_size_name'][$i]=$size_name;
               $_SESSION['cart_p_qty'][$i]= $new_p_id;
               
      header('location:basket.php');
                                        
    }else
    {
        $_SESSION['cart_size_id'][$i]=$new_size;
        $_SESSION['cart_size_name'][$i]=$size_name;
       
    header('location:basket.php');
    }
                                    
    }
        
    
}else{
    header('location:index.php?invalidprocess');
}


?>