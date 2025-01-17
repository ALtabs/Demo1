<?php require_once('header.php'); ?>

<section class="content-header">
	<div class="content-header-left">
		<h1>View Products</h1>
	</div>
	<div class="content-header-right">
		<a href="product-add.php" class="btn btn-primary btn-sm">Add Product</a>
	</div>
</section>

<section class="content">
	<div class="row">
		<div class="col-md-12">
			<div class="box box-info">
				<div class="box-body table-responsive">
					<table id="example1" class="table table-bordered table-striped">
						<thead>
							<tr>
								<th width="30">SL</th>
								<th>Photo</th>
								<th width="200">Product Name</th>
								<th width="60">Old Price</th>
								<th width="60">Current Price</th>
								<th>Is Featured?</th>
								<th>Is Active?</th>
								<th>Category</th>
								<th width="80">Action</th>
							</tr>
						</thead>
						<tbody>
							<?php
							$i=0;
							$statement = $pdo->prepare("SELECT * FROM tbl_product ORDER BY p_id DESC ");
							$statement->execute();
							$result = $statement->fetchAll(PDO::FETCH_ASSOC);
							foreach ($result as $row) {
								$i++;

									if ($row['pecat_id'] !=0) { ?>

											<tr>

											<td><?php echo $i; ?></td>
									<td style="width:130px;"><img src="../assets/uploads/<?php echo $row['p_featured_photo']; ?>" alt="<?php echo $row['p_name']; ?>" style="width:100px;"></td>
									<td><?php echo $row['p_name']; ?></td>
									<td><?php echo $row['p_old_price']; ?></td>
									<td><?php echo $row['p_current_price']; ?></td>
									<td>
										<?php if($row['p_is_featured'] == 1) {echo 'Yes';} else {echo 'No';} ?>
									</td>
									<td>
										<?php if($row['p_is_active'] == 1) {echo 'Yes';} else {echo 'No';} ?>
									</td>


									<?php	$statement1 = $pdo->prepare("SELECT 

													t1.ecat_id,
													t1.mcat_id,
										 			t1.ecat_name,
										 			t2.mcat_id,
										 			t2.mcat_name,
										 			t3.tcat_id,
										 			t3.tcat_name 

										 	FROM tbl_end_category t1
										 	JOIN tbl_mid_category t2 ON t1.mcat_id = t2.mcat_id 
										 	JOIN tbl_top_category t3 ON t2.tcat_id = t3.tcat_id 
										 	WHERE t1.ecat_id =".$row['pecat_id']);
										$statement1->execute();
										$result1 = $statement1->fetchAll(PDO::FETCH_ASSOC);

										foreach ($result1 as $cat) { ?> 

											<td>* <?php echo $cat['tcat_name']; ?><br>* <?php echo $cat['mcat_name']; ?><br>* <?php echo $cat['ecat_name']; ?></td>

										<?php }?>

										<td>										
										<a href="product-edit.php?id=<?php echo $row['p_id']; ?>" class="btn btn-primary btn-xs">Edit</a>
										<a href="#" class="btn btn-danger btn-xs" data-href="product-delete.php?id=<?php echo $row['p_id']; ?>" data-toggle="modal" data-target="#confirm-delete">Delete</a>  
									</td>
								</tr>
									<?php }
									elseif ($row['pecat_id'] ==0) 
									{?>

										<tr>
									<td><?php echo $i; ?></td>
									<td style="width:130px;"><img src="../assets/uploads/<?php echo $row['p_featured_photo']; ?>" alt="<?php echo $row['p_name']; ?>" style="width:100px;"></td>
									<td><?php echo $row['p_name']; ?></td>
									<td><?php echo $row['p_old_price']; ?></td>
									<td><?php echo $row['p_current_price']; ?></td>
									<td>
										<?php if($row['p_is_featured'] == 1) {echo 'Yes';} else {echo 'No';} ?>
									</td>
									<td>
										<?php if($row['p_is_active'] == 1) {echo 'Yes';} else {echo 'No';} ?>
									</td>


									<?php	$statement1 = $pdo->prepare("SELECT 
										 			t1.mcat_id,
										 			t1.mcat_name,
										 			t3.tcat_id,
										 			t3.tcat_name 

										 	FROM tbl_mid_category t1
										 	JOIN tbl_top_category t3 ON t1.tcat_id = t3.tcat_id 
										 	WHERE t1.mcat_id =".$row['pmcat_id']);
										$statement1->execute();
										$result1 = $statement1->fetchAll(PDO::FETCH_ASSOC);

										foreach ($result1 as $cat) { ?> 

											<td>* <?php echo $cat['tcat_name']; ?><br>* <?php echo $cat['mcat_name']; ?><br></td>

										<?php }?>

									<td>										
										<a href="product-edit.php?id=<?php echo $row['p_id']; ?>" class="btn btn-primary btn-xs">Edit</a>
										<a href="#" class="btn btn-danger btn-xs" data-href="product-delete.php?id=<?php echo $row['p_id']; ?>" data-toggle="modal" data-target="#confirm-delete">Delete</a>  
									</td>
								</tr>

								<?php	}
								?> 
									
								
									
									
									

								<?php 

								?>
								
								<?php
							}
							?>							
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</section>


<div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">Delete Confirmation</h4>
            </div>
            <div class="modal-body">
                <p>Are you sure want to delete this item?</p>
                <p style="color:red;">Be careful! This product will be deleted from the order table, payment table, size table, color table and rating table also.</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                <a class="btn btn-danger btn-ok">Delete</a>
            </div>
        </div>
    </div>
</div>

<?php require_once('footer.php'); ?>