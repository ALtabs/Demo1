<?php require_once('header.php'); ?>

<section class="content-header">
	<div class="content-header-left">
		<h1>View Sliders</h1>
	</div>
	<div class="content-header-right">
		<a href="slidervideo-add.php" class="btn btn-primary btn-sm">Add Slider</a>
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
								<th>SL</th>
								<th>Photo</th>
								<th>Heading</th>
								<th>Content</th>
								<th>Button Text</th>
								<th>Position</th>
								<th width="140">Action</th>
							</tr>
						</thead>
						<tbody>
							<?php
							$i=0;
							$statement = $pdo->prepare("SELECT	* FROM tbl_slidervid ");
							$statement->execute();
							$result = $statement->fetchAll(PDO::FETCH_ASSOC);							
							foreach ($result as $row) {
								$i++;
								
								?>
								<tr>
									<td><?php echo $i; ?></td>
									<td style="width:150px;">
										<video width='150' height= '80' controls>
                                                  
                                           <source src="../assets/uploads/videos/<?php echo $row['file'];  ?>" type="video/mp4"/>

                                         </video>
									</td>
									<td><?php echo $row['heading']; ?></td>
									<td><?php echo $row['content']; ?></td>
									<td><?php echo $row['button']; ?></td>
									<td><?php echo $row['position']; ?></td>
									<td>										
										<a href="slidervideo-edit.php?id=<?php echo $row['sv_id']; ?>" class="btn btn-primary btn-xs">Edit</a>
										<a href="#" class="btn btn-danger btn-xs" data-href="slidervideo-delete.php?id=<?php echo $row['sv_id']; ?>" data-toggle="modal" data-target="#confirm-delete">Delete</a>  
									</td>
								</tr>
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
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                <a class="btn btn-danger btn-ok">Delete</a>
            </div>
        </div>
    </div>
</div>

<?php require_once('footer.php'); ?>