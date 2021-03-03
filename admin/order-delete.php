<?php require_once('header.php'); ?>

<?php
if(!isset($_REQUEST['id'])) {
	header('location: logout.php');
	exit;
} else {
	// Check the id is valid or not
	$statement = $pdo->prepare("SELECT * FROM tbl_order WHERE cart_id=?");
	$statement->execute(array($_REQUEST['id']));
	$total = $statement->rowCount();
	if( $total == 0 ) {
		header('location: logout.php');
		exit;
	} else {
		$result = $statement->fetchAll(PDO::FETCH_ASSOC);							
		foreach ($result as $row) {
			$cart_ids = $row['cart_id'];
			$product_ids=$row['product_id'];
			$status=$row['del_status'];
		}
	}
}
?>

<?php
	
	if( ($status =='shipped')):
		// No return to stock

		$statement1 = $pdo->prepare("SELECT * FROM tbl_order WHERE cart_id=?");
		$statement1->execute(array($_REQUEST['id']));
		$result1 = $statement1->fetchAll(PDO::FETCH_ASSOC);		
		foreach( $result1 as $row1 ){

				
			$statement11 = $pdo->prepare("SELECT * FROM tbl_product_size WHERE p_id=? AND size_id=?");
			$statement11->execute(array($row1['product_id'],$row1['size']));
			$result11 = $statement11->fetchAll(PDO::FETCH_ASSOC);							
			foreach ($result11 as $row11) {
				$p_qty=$row11['prod_stock'];
			}

			$final = $p_qty + $row1['quantity'];

			$statement1 = $pdo->prepare("UPDATE tbl_product_size SET prod_stock=? WHERE p_id=? AND size_id=?");
			$statement1->execute(array($final,$row1['product_id'],$row1['size']));


		}
	
		// Return the stock
		
	endif;	

			$statement = $pdo->prepare("DELETE FROM tbl_order WHERE cart_id=?");
			$statement->execute(array($row1['cart_id']));

			$statement = $pdo->prepare("DELETE FROM cust_cart WHERE order_id=?");
			$statement->execute(array($row1['cart_id']));

	// Delete from tbl_payment
	//$statement = $pdo->prepare("DELETE FROM tbl_payment WHERE id=?");
	//$statement->execute(array($_REQUEST['id']));

	header('location: order.php');
?>