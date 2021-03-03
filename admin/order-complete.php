<?php require_once('header.php'); ?>

<?php
if(!isset($_REQUEST['changeid'])) {
	//header('location: logout.php');
	exit;
} else {
	
	// Check the id is valid or not
	$statement = $pdo->prepare("SELECT * FROM tbl_order WHERE cart_id=?");
	$statement->execute(array($_REQUEST['changeid']));
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
		$statement1->execute(array($_REQUEST['changeid']));
		$result1 = $statement1->fetchAll(PDO::FETCH_ASSOC);		
		foreach( $result1 as $row1 ){

		$statement = $pdo->prepare("UPDATE tbl_order SET del_status =? WHERE cart_id=?");
		$statement->execute(array('complete',$row1['cart_id']));

		}

		$statement = $pdo->prepare("UPDATE cust_cart SET payment_status =? WHERE order_id=?");
		$statement->execute(array('complete',$_REQUEST['changeid']));

	
	
		
	endif;	

	// Delete from tbl_order
	//$statement = $pdo->prepare("DELETE FROM tbl_order WHERE payment_id=?");
	//$statement->execute(array($payment_id));

	// Delete from tbl_payment
	//$statement = $pdo->prepare("DELETE FROM tbl_payment WHERE id=?");
	//$statement->execute(array($_REQUEST['id']));

	header('location: order.php');
?>