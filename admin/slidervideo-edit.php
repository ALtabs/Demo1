<?php require_once('header.php'); ?>

<?php
if(isset($_POST['form1'])) {
	$valid = 1;

	
    $path = $_FILES['photo']['name'];
    $path_tmp = $_FILES['photo']['tmp_name'];

    if($path!='') {
        $ext = pathinfo( $path, PATHINFO_EXTENSION );
        $file_name = basename( $path, '.' . $ext );
        if( $ext!='mp4' && $ext!='MP4' && $ext!='gif' && $ext!='GIF' && $ext!='mpeg-4' && $ext!='MPEG-4' && $ext!='' && $ext!='MKV') {
            $valid = 0;
            $error_message .= 'You must have to upload video file<br>';
        }
    }

	if($valid == 1) {

		if($path == '') {
			$statement = $pdo->prepare("UPDATE tbl_slidervid SET heading=?, content=?, button=?,position=? WHERE sv_id=?");
    		$statement->execute(array($_POST['heading'],$_POST['content'],$_POST['button_text'],$_POST['position'],$_REQUEST['id']));
		} else {

			unlink('../assets/uploads/videos/'.$_POST['current_photo']);
			$code=rand(0,9879797987978979);
			$final_name = $code.'.'.$ext;
        	move_uploaded_file( $path_tmp, '../assets/uploads/videos/'.$final_name );

        	$statement = $pdo->prepare("UPDATE tbl_slidervid SET file=?, heading=?, content=?, button=?, position=? WHERE sv_id=?");
    		$statement->execute(array($final_name,$_POST['heading'],$_POST['content'],$_POST['button_text'],$_POST['position'],$_REQUEST['id']));
		}	   

	    $success_message = 'Slider is updated successfully!';
	}
}
?>

<?php
if(!isset($_REQUEST['id'])) {
	header('location: logout.php');
	exit;
} else {
	// Check the id is valid or not
	$statement = $pdo->prepare("SELECT * FROM tbl_slidervid WHERE sv_id=?");
	$statement->execute(array($_REQUEST['id']));
	$total = $statement->rowCount();
	$result = $statement->fetchAll(PDO::FETCH_ASSOC);
	if( $total == 0 ) {
		header('location: logout.php');
		exit;
	}
}
?>

<section class="content-header">
	<div class="content-header-left">
		<h1>Edit Slider</h1>
	</div>
	<div class="content-header-right">
		<a href="slidervideo.php" class="btn btn-primary btn-sm">View All</a>
	</div>
</section>

<?php
$statement = $pdo->prepare("SELECT * FROM tbl_slidervid WHERE sv_id=?");
$statement->execute(array($_REQUEST['id']));
$result = $statement->fetchAll(PDO::FETCH_ASSOC);
foreach ($result as $row) {
	$photo       = $row['file'];
	$heading     = $row['heading'];
	$content     = $row['content'];
	$button_text = $row['button'];
	$position    = $row['position'];
}
?>

<section class="content">

	<div class="row">
		<div class="col-md-12">

			<?php if($error_message): ?>
			<div class="callout callout-danger">
				<p>
				<?php echo $error_message; ?>
				</p>
			</div>
			<?php endif; ?>

			<?php if($success_message): ?>
			<div class="callout callout-success">
				<p><?php echo $success_message; ?></p>
			</div>
			<?php endif; ?>

			<form class="form-horizontal" action="" method="post" enctype="multipart/form-data">
				<input type="hidden" name="current_photo" value="<?php echo $photo; ?>">
				<div class="box box-info">
					<div class="box-body">
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">Existing Photo</label>
							<div class="col-sm-9" style="padding-top:5px">
										<video width='150' height= '80' controls>
                                                  
                                           <source src="../assets/uploads/videos/<?php echo $row['file'];  ?>" type="video/mp4"/>

                                         </video>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">Photo </label>
							<div class="col-sm-6" style="padding-top:5px">
								<input type="file" name="photo">(Only MP4 and MKV are allowed)
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">Heading </label>
							<div class="col-sm-6">
								<input type="text" autocomplete="off" class="form-control" name="heading" value="<?php echo $heading; ?>">
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">Content </label>
							<div class="col-sm-6">
								<textarea class="form-control" name="content" style="height:140px;"><?php echo $content; ?></textarea>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">Button Text </label>
							<div class="col-sm-6">
								<input type="text" autocomplete="off" class="form-control" name="button_text" value="<?php echo $button_text; ?>">
							</div>
						</div>
						
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">Position </label>
							<div class="col-sm-6">
								<select name="position" class="form-control">
									<option value="Left" <?php if($position == 'Left') {echo 'selected';} ?>>Left</option>
									<option value="Center" <?php if($position == 'Center') {echo 'selected';} ?>>Center</option>
									<option value="Right" <?php if($position == 'Right') {echo 'selected';} ?>>Right</option>
								</select>
							</div>
						</div>				
						<div class="form-group">
							<label for="" class="col-sm-2 control-label"></label>
							<div class="col-sm-6">
								<button type="submit" class="btn btn-success pull-left" name="form1">Submit</button>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>

</section>

<?php require_once('footer.php'); ?>