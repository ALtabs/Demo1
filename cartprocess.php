
<?php ob_start();
session_start();
include("admin/inc/config.php");
include("admin/inc/functions.php");
include("admin/inc/CSRF_Protect.php");
$csrf = new CSRF_Protect(); 

if (isset($_POST['formcart'])) {
  # code...

    $statement = $pdo->prepare("SELECT * FROM tbl_product WHERE p_id=?");
    $statement->execute(array($_REQUEST['id']));
    $result = $statement->fetchAll(PDO::FETCH_ASSOC);                           
    foreach ($result as $row) {
        $count = $row['p_name'];
        $old=$row['p_old_price'];
    }

if(empty($_POST['selectsize']) ) {

    
     $_SESSION['error'] = $_REQUEST['id'];

      header('location: details.php?proid='.$_POST['ProID'].'&&count='.$count.'');
      $valid=0;
    }else{


             if(isset($_SESSION['cart_p_id']))
    {
        $arr_cart_p_id = array();
        $arr_cart_size_id = array();
        $arr_cart_p_qty = array();
        $arr_cart_p_current_price = array();
        $arr_cart_p_dis = array();


        $i=0;
        foreach($_SESSION['cart_p_id'] as $key) 
        {
            $i++;
            $arr_cart_p_id[$i] = $key;
        }

        $i=0;
        foreach($_SESSION['cart_size_id'] as $key) 
        {
            $i++;
            $arr_cart_size_id[$i] = $key;
        }

        $i=0;
        


        $added = 0;
        if(!isset($_POST['selectsize'])) {
            $size_id = 0;
        } else {
            $size_id = $_POST['selectsize'];
        }
       
               for($i=1;$i<=count($arr_cart_p_id);$i++) {
            if( ($arr_cart_p_id[$i]==$_REQUEST['id']) && ($arr_cart_size_id[$i]==$size_id)) {
                $added = 1;
                break;
            }
        }

        if($added == 1) {
          
           //echo  $success_message1 = 'Product is added LREADY!';
           header('location: details.php?proid='.$_POST['ProID'].'&&count='.$count.'');
           $_SESSION['error1'] = $_REQUEST['id'];
        } else {

            $i=0;
            foreach($_SESSION['cart_p_id'] as $key => $res) 
            {
                $i++;
            }
            $new_key = $i+1;

            if(isset($_POST['selectsize'])) {

                $size_id = $_POST['selectsize'];

                $statement = $pdo->prepare("SELECT * FROM tbl_size WHERE size_id=?");
                $statement->execute(array($size_id));
                $result = $statement->fetchAll(PDO::FETCH_ASSOC);                            
                foreach ($result as $row) {
                    $size_name = $row['size_name'];

                }
            } else {
                 header('location: details.php?proid='.$_POST['ProID'].'&&count='.$count.'');
                 $_SESSION['error'] = $_REQUEST['id'];
               
            }
            
           



            $_SESSION['cart_p_id'][$new_key] = $_REQUEST['id'];
            $_SESSION['cart_size_id'][$new_key] = $size_id;
            $_SESSION['cart_size_name'][$new_key] = $size_name;
            $_SESSION['cart_p_qty'][$new_key] = $_POST['cart_qty'];
            $_SESSION['cart_p_current_price'][$new_key] = $_POST['pro_price'];
            $_SESSION['cart_p_name'][$new_key] = $_POST['ProName'];
            $_SESSION['cart_p_featured_photo'][$new_key] = $_POST['Prophoto'];
            $_SESSION['totaldis'][$new_key] = $_POST['totaldis'];
            $_SESSION['wcart']=$_REQUEST['id'];

              header('location: details.php?proid='.$_POST['ProID'].'&&count='.$count.'');
            $_SESSION['success'] = $_REQUEST['id'];
           //echo  $success_message1 = 'Product is added to the cart successfully!';
        }
        
    }
    else
    {

        if(isset($_POST['size_id'])) {

            $size_id = $_POST['size_id'];

            $statement = $pdo->prepare("SELECT * FROM tbl_size WHERE size_id=?");
            $statement->execute(array($size_id));
            $result = $statement->fetchAll(PDO::FETCH_ASSOC);                            
            foreach ($result as $row) {
                $size_name = $row['size_name'];
            }
        } else {
            header('location: details.php?proid='.$_POST['ProID'].'&&count='.$count.'');
                 $_SESSION['error'] = $_REQUEST['id'];
        }
        
      
        
            $_SESSION['cart_p_id'][1] = $_REQUEST['id'];
            $_SESSION['cart_size_id'][1] = $size_id;
            $_SESSION['cart_size_name'][1] = $size_name;
            $_SESSION['cart_p_qty'][1] = $_POST['cart_qty'];
            $_SESSION['cart_p_current_price'][1] = $_POST['pro_price'];
            $_SESSION['cart_p_name'][1] = $_POST['ProName'];
            $_SESSION['cart_p_featured_photo'][1] = $_POST['Prophoto'];
            $_SESSION['totaldis'][1] = $_POST['totaldis'];
            $_SESSION['wcart']=$_REQUEST['id'];

           // echo  $success_message1 = 'Product is added to the cart successfully!-11';
        header('location: details.php?proid='.$_POST['ProID'].'&&count='.$count.'');
        $_SESSION['success'] = $_REQUEST['id'];
    }


    }


 


}


?>