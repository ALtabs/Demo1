<?php require_once('header.php'); ?>

<?php

// Check if the product is valid or not


if( !isset($_REQUEST['cancel'])) {
    header('location: index.php');
    exit;
}

$i=0;
foreach($_SESSION['cart_p_id'] as $key => $value) {
    $i++;
    $arr_cart_p_id[$i] = $value;
}

$i=0;
foreach($_SESSION['cart_size_id'] as $key => $value) {
    $i++;
    $arr_cart_size_id[$i] = $value;
}

$i=0;
foreach($_SESSION['cart_size_name'] as $key => $value) {
    $i++;
    $arr_cart_size_name[$i] = $value;
}

$i=0;
foreach($_SESSION['cart_p_qty'] as $key => $value) {
    $i++;
    $arr_cart_p_qty[$i] = $value;
}

$i=0;
foreach($_SESSION['cart_p_current_price'] as $key => $value) {
    $i++;
    $arr_cart_p_current_price[$i] = $value;
}

$i=0;
foreach($_SESSION['cart_p_name'] as $key => $value) {
    $i++;
    $arr_cart_p_name[$i] = $value;
}

$i=0;
foreach($_SESSION['cart_p_featured_photo'] as $key => $value) {
    $i++;
    $arr_cart_p_featured_photo[$i] = $value;
}
$i=0;
foreach($_SESSION['totaldis'] as $key) 
 {
     $i++;
     $arr_cart_p_dis[$i] = $key;
 }

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

header('location: index.php');
?>