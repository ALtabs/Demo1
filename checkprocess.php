<?php 
ob_start();
session_start();
include("admin/inc/config.php");
include("admin/inc/functions.php");
include("admin/inc/CSRF_Protect.php");
$csrf = new CSRF_Protect(); 


if(empty($_SESSION['customer']))
{
    if (isset($_POST['checkoutcrt'])) 
    {
        if (isset($_SESSION['wcart'])!='') 
        {
             $i=0;
            foreach($_POST['product_id'] as $val) 
            {
                $i++;
                $prod_id[$i] = $val;
            }
             $i=0;
            foreach($_POST['product_size'] as $val) 
            {
                $i++;
                $size_id[$i] = $val;
            }
            $i=0;
            foreach($_POST['product_qty'] as $val) 
            {
                $i++;
                 $pro_qty[$i] = $val;
            }
            $i=0;
            foreach($_POST['product_price'] as $val) 
            {
                $i++;
                $pro_price[$i] = $val;
            }
            $i=0;
            foreach($_POST['product_total'] as $val) 
            {
                $i++;
                 $pro_total[$i] = $val;
            }
            $i=0;
            foreach($_POST['product_name'] as $val) 
            {
                $i++;
                 $pro_name[$i] = $val;
            }

            $code=rand(0,798198795);
            $payment_id="COD/COP";
            date_default_timezone_set('Asia/Manila');
            $pro_datetime = date('Y-m-d');
            $status='guest';
            $del_status='pending';
            for ($i=1; $i<=count($prod_id) ; $i++):
                $statement = $pdo->prepare("INSERT INTO tbl_order (product_id,product_name,size,cust_id,quantity,unit_price,payment_id,shipping_cost,order_date,status,del_status,cart_id) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)");
                $statement->execute(array($prod_id[$i],$pro_name[$i],$size_id[$i],$code,$pro_qty[$i],$pro_price[$i],$payment_id,$_POST['shipping_cost'],$pro_datetime,$status,$del_status,$code));
            endfor;
           
           $statement = $pdo->prepare("INSERT INTO cust_cart (g_code,total_payment,payment_status,date_purchase,shipping_cost,order_id) VALUES (?,?,?,?,?,?)");
           $statement->execute(array($code,$_POST['total'],$del_status,$pro_datetime,$_POST['shipping_cost'],$code));
                
               
            $statement = $pdo->prepare("INSERT INTO cust_guest (first_name,last_name,add1,add2,muni,cities,phonenum,email,g_date,status,g_code) VALUES (?,?,?,?,?,?,?,?,?,?,?)");
            $statement->execute(array($_POST['firstname'],$_POST['lastname'],$_POST['address1'],$_POST['address2'],$_POST['province'],$_POST['city'],$_POST['phone'],$_POST['email'],$pro_datetime,$status,$code));
                

            
         
            unset($_SESSION['cart_p_id']);
            unset($_SESSION['cart_size_id']);
            unset($_SESSION['cart_size_name']);
            unset($_SESSION['cart_color_id']);
            unset($_SESSION['cart_color_name']);
            unset($_SESSION['cart_p_qty']);
            unset($_SESSION['cart_p_current_price']);
            unset($_SESSION['cart_p_name']);
            unset($_SESSION['cart_p_featured_photo']);
            unset($_SESSION['totaldis']);
            unset($_SESSION['wcart']);
            
               header("location: ".BASE_URL."index.php");
        }
    }
    else
    {
      header("location: ".BASE_URL."index.php?invalid=invalidprocess"); 
    }
}

else
{
    $cust_id=$_SESSION['customer']['id'];
    $statement=$pdo->prepare("SELECT * FROM cust_guest WHERE g_code=?");
    $statement->execute(array($cust_id));
    $total = $statement->rowCount();
    $result=$statement->fetchAll(PDO::FETCH_ASSOC);
    foreach ($result as $key) 
    {
        $custs_id=$key['guest_id'];
    }
    if ($total!=0) 
    {
        if (isset($_POST['checkoutcrt'])) 
        {
        
            if (isset($_SESSION['wcart'])!='') 
            {
                $i=0;
                foreach($_POST['product_id'] as $val)
                {
                    $i++;
                    $prod_id[$i] = $val;
                }
                 $i=0;
                foreach($_POST['product_size'] as $val) {
                    $i++;
                    $size_id[$i] = $val;
            
                }
                $i=0;
                foreach($_POST['product_qty'] as $val) 
                {
                    $i++;
                     $pro_qty[$i] = $val;
                }
                $i=0;
                foreach($_POST['product_price'] as $val) 
                {
                    $i++;
                    $pro_price[$i] = $val;
                }
                $i=0;
                foreach($_POST['product_total'] as $val) 
                {
                    $i++;
                     $pro_total[$i] = $val;
                }
                $i=0;
                foreach($_POST['product_name'] as $val) 
                {
                    $i++;
                     $pro_name[$i] = $val;
                }
                
                $code=rand(0,798198795);
                $payment_id="COD/COP";
                date_default_timezone_set('Asia/Manila');
                $pro_datetime = date('Y-m-d');
                $status='guest';
                $del_status='pending';
                
                for ($i=1; $i<=count($prod_id) ; $i++):
                $statement = $pdo->prepare("INSERT INTO tbl_order (product_id,product_name,size,cust_id,quantity,unit_price,payment_id,shipping_cost,order_date,status,del_status,cart_id) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)");
                $statement->execute(array($prod_id[$i],$pro_name[$i],$size_id[$i],$cust_id,$pro_qty[$i],$pro_price[$i],$payment_id,$_POST['shipping_cost'],$pro_datetime,$status,$del_status, $code));
                endfor;
                $statement = $pdo->prepare("INSERT INTO cust_cart (g_code,total_payment,payment_status,date_purchase,shipping_cost,order_id) VALUES (?,?,?,?,?,?)");
                $statement->execute(array($cust_id,$_POST['total'],$del_status,$pro_datetime,$_POST['shipping_cost'], $code));
                $statement = $pdo->prepare("UPDATE cust_guest SET first_name=?,last_name=?, add1=?, add2=?, muni=?, cities=?, phonenum=?, email=? WHERE g_code=?");
                        $statement->execute(array(
                                    strip_tags( $_POST['firstname']),
                                    strip_tags($_POST['lastname']),
                                    strip_tags( $_POST['address1']),
                                    strip_tags( $_POST['address2']),
                                    strip_tags($_POST['province']),
                                    strip_tags($_POST['city']),
                                    strip_tags($_POST['phone']),
                                    strip_tags($_POST['email']),
                                    $_SESSION['customer']['id']
                                ));  
                    header("location: ".BASE_URL."index.php");
        
        
                unset($_SESSION['cart_p_id']);
                unset($_SESSION['cart_size_id']);
                unset($_SESSION['cart_size_name']);
                unset($_SESSION['cart_color_id']);
                unset($_SESSION['cart_color_name']);
                unset($_SESSION['cart_p_qty']);
                unset($_SESSION['cart_p_current_price']);
                unset($_SESSION['cart_p_name']);
                unset($_SESSION['cart_p_featured_photo']);
                unset($_SESSION['totaldis']);
                unset($_SESSION['wcart']);
            }
        }
    }
    else
    {
        if (isset($_POST['checkoutcrt'])) 
        {
            if (isset($_SESSION['wcart'])!='') 
            {
                $i=0;
                foreach($_POST['product_id'] as $val) 
                {
                    $i++;
                    $prod_id[$i] = $val;
                }
                 $i=0;
                foreach($_POST['product_size'] as $val) 
                {
                    $i++;
                    $size_id[$i] = $val;
                }
                $i=0;
                foreach($_POST['product_qty'] as $val) 
                {
                    $i++;
                     $pro_qty[$i] = $val;
                }
                $i=0;
                foreach($_POST['product_price'] as $val) 
                {
                    $i++;
                    $pro_price[$i] = $val;
                }
            
                $i=0;
                foreach($_POST['product_total'] as $val) {
                    $i++;
                     $pro_total[$i] = $val;
            
                }
                $i=0;
                foreach($_POST['product_name'] as $val) {
                    $i++;
                     $pro_name[$i] = $val;
                }
                $code=rand(0,798198795);
                $payment_id="COD/COP";
                date_default_timezone_set('Asia/Manila');
                $pro_datetime = date('Y-m-d');
                $status='guest';
                $del_status='pending';
                $success=1;
                for ($i=1; $i<=count($prod_id) ; $i++):
                    
                $statement = $pdo->prepare("INSERT INTO tbl_order (product_id,product_name,size,cust_id,quantity,unit_price,payment_id,shipping_cost,order_date,status,del_status,cart_id) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)");
                $statement->execute(array($prod_id[$i],$pro_name[$i],$size_id[$i],$cust_id,$pro_qty[$i],$pro_price[$i],$payment_id,$_POST['shipping_cost'],$pro_datetime,$status,$del_status,$code));
                
                endfor;
                
                $statement = $pdo->prepare("INSERT INTO cust_cart (g_code,total_payment,payment_status,date_purchase,shipping_cost,order_id) VALUES (?,?,?,?,?,?)");
                $statement->execute(array($cust_id,$_POST['total'],$del_status,$pro_datetime,$_POST['shipping_cost'],$code));
                
               
            $statement = $pdo->prepare("INSERT INTO cust_guest (first_name,last_name,add1,add2,muni,cities,phonenum,email,g_date,status,g_code) VALUES (?,?,?,?,?,?,?,?,?,?,?)");
            $statement->execute(array($_POST['firstname'],$_POST['lastname'],$_POST['address1'],$_POST['address2'],$_POST['province'],$_POST['city'],$_POST['phone'],$_POST['email'],$pro_datetime,$status,$cust_id));
                

                
                unset($_SESSION['cart_p_id']);
                unset($_SESSION['cart_size_id']);
                unset($_SESSION['cart_size_name']);
                unset($_SESSION['cart_color_id']);
                unset($_SESSION['cart_color_name']);
                unset($_SESSION['cart_p_qty']);
                unset($_SESSION['cart_p_current_price']);
                unset($_SESSION['cart_p_name']);
                unset($_SESSION['cart_p_featured_photo']);
                unset($_SESSION['totaldis']);
                unset($_SESSION['wcart']);
                
                header("location: ".BASE_URL."index.php");
               
                
                
              
                
                
            }
        }
    }
}

?>