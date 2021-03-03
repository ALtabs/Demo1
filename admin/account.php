<?php require_once('header.php');


if(isset($_POST['formadd'])) 
{
 	$path = $_FILES['image']['name'];
    $path_tmp = $_FILES['image']['tmp_name'];
    $code1 = rand(0,98987787866533499);
    $today = date('Y-m-d');

    if($path!='') 
    {
        $ext = pathinfo( $path, PATHINFO_EXTENSION );
        $file_name = basename( $path, '.' . $ext );
        if ( $ext!='jpg' && $ext!='png' && $ext!='jpeg' && $ext!='gif' && $ext!='JPG' && $ext!='PNG' && $ext!='JPEG' && $ext!='GIF' ) 
        {
            $error_message = 'You must have to upload jpg, jpeg, gif or png file<br><br>';
        }
        else 
        {
			$final_name = $code1.'.'.$ext;
		 	 move_uploaded_file( $path_tmp, '../assets/uploads/users/'.$final_name);

        	$statement = $pdo->prepare("INSERT INTO tbl_user (full_name,email,phone,password,photo,join_date,role,user_status) VALUES (?,?,?,?,?,?,?,?)");
    		$statement->execute(array($_POST['firstname'].' '.$_POST['lastname'],$_POST['email'],$_POST['phone'],md5('12345'),$final_name,$today,$_POST['role'],11));

    		

    		$success_message = 'Account registered successfully.<br><br>';

    		unset($final_name);
    		unset($_POST['firstname']);
    		unset($_POST['lastname']);
    		unset($_POST['email']);
    		unset($_POST['phone']);
    		unset($_POST['role']);
        }
    } 
    else 
    {
        $error_message = 'You must have to select a featured photo<br><br>';
    }
} 


?>

<section class="content-header">
	<div class="content-header-left">
		<h1>Accounts</h1>
	</div>
	<div class="content-header-right">
		<button class="btn btn-primary" id="BtnAddModal"style="border-color:#333333;background-color:#333333;">Add Account</button>
	</div>
</section>

<section class="content">
	<div class="box box-info">
		<div class="box-body">
			<?php
	        if($error_message != '') 
	        {
	        	echo "<label class='text-danger'>".$error_message."</label>";
	        }
	        if($success_message != '') 
	        {
	          echo "<label class='text-success'>".$success_message."</label>";
	        }
	    ?>
	    	<div class="alert alert-success" id="RoleUpdate_Success" style="display:none"><label id="AlrtName"></label>'s role successfully changed to <label id="AlrtRole"></label></div>
	    	<div class="alert alert-danger" id="BlockUser" style="display:none"><label id="Block_Name"></label>'s account successfully BLOCKED</div>
	    	<div class="alert alert-success" id="AlrtRestored" style="display:none"><label id="Restore_Name"></label>'s account successfully RESTORED</div>
			<div class="row">
				<div class="col-md-12">
					<div class="DGVAccounts">
						
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<div class="modal fade" id="AddAccount_Modal" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h3 class="modal-title">Add account</h3>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span class="fa fa-close"></span>
        </button>
      </div>
	  <form method="POST" action="" enctype="multipart/form-data">
	  <div class="modal-body">
	      	<div class="row">
	      		<div class="col-sm-6">
	      			<div class="form-group">
				    	<label for="exampleFormControlFile1">Account photo</label>
				    	<input type="file" class="form-control" name="image">
				  	</div>
	      		</div>
	      	</div>
	      	<div class="row">
	      		<div class="col-sm-6">
			        <div class="form-group">
			        	<label>Firstname</label>
			        	<input type="text" class="form-control" name="firstname" id="firstname">
			        </div>
			    </div>
			    <div class="col-sm-6">
			        <div class="form-group">
			        	<label>Lastname</label>
			        	<input type="text" class="form-control" name="lastname" id="lastname">
			        </div>
			    </div>
			</div>
			<div class="row">
	      		<div class="col-sm-4">
			        <div class="form-group">
			        	<label>Email address</label>
			        	<input type="email" class="form-control" name="email" id="email">
			        </div>
			    </div>
			    <div class="col-sm-4">
			        <div class="form-group">
			        	<label>Phone #</label>
			        	<input type="text" class="form-control" id="Txt_Phone" name="phone" onkeypress="return isNumberKey(event)">
			        </div>
			    </div>
			    <div class="col-sm-4">
			        <div class="form-group">
			        	<label>Role</label>
			        	<select class="form-control" id="role" name="role">
			        		<option></option>
			        		<option>DATADMIN</option>
			        		<option>MARKETING</option>
			        		<option>WAREHOUSE</option>
			        		<option>HRD</option>
			        		<option>PAYROLL</option>
			        		<option>ACCOUNTING</option>
			        		<option>IT</option>
			        	</select>
			        </div>
			    </div>
			</div>
		
		<small class="text-muted">Note: Password is fixed to 12345</small>

	  </div>
	  <div class="modal-footer">
	    <button type="submit" name="formadd" class="btn btn-primary">Add account</button>
	  </div>
	  </form>
    </div>
  </div>
</div>

<div class="modal fade" id="EditRole_Modal" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h3 class="modal-title">Edit</h3>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span class="fa fa-close"></span>
        </button>
      </div>
	  
	  <div class="modal-body">
	      	<div class="row">
	      		<div class="col-sm-2">
	      			<div class="form-group">
				    	<label>ID #</label>
				    	<input type="text" class="form-control" id="id" readonly>
				  	</div>
	      		</div>
	      		<div class="col-sm-7">
	      			<div class="form-group">
				    	<label for="exampleFormControlFile1">Full name</label>
				    	<input type="text" class="form-control" id="full" readonly>
				  	</div>
	      		</div>
	      		<div class="col-sm-3">
	      			<div class="form-group">
				    	<label for="exampleFormControlFile1">Role</label>
				    	<select class="form-control" id="CMBRole">
				    		<option>ACCOUNTING</option>
				    		<option>DATADMIN</option>
				    		<option>IT</option>
				    		<option>MARKETING</option>
				    		<option>PAYROLL</option>
				    		<option>WAREHOUSE</option>
				    	</select>
				  	</div>
	      		</div>
	      	</div>
	  </div>
	  <div class="modal-footer">
	    <button type="submit" id="BtnRole_Edit" class="btn btn-primary">Edit</button>
	  </div>
	  </form>
    </div>
  </div>
</div>

<div class="modal fade" id="Block_Modal" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h3 class="modal-title">Confirm</h3>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span class="fa fa-close"></span>
        </button>
      </div>
	  <div class="modal-body">
	  	<h5>Are you sure to block <label id="blockname"></label>'s account?</h5>
		<input type="hidden" class="form-control" id="blockid" readonly>
	  </div>
	  <div class="modal-footer">
	    <button type="button" id="BtnBLock" class="btn btn-danger">Confirm</button>
	  </div>
    </div>
  </div>
</div>

<div class="modal fade" id="Restore_Modal" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h3 class="modal-title">Confirm</h3>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span class="fa fa-close"></span>
        </button>
      </div>
	  <div class="modal-body">
	  	<h5>Are you sure to restore <label id="restorename"></label>'s account?</h5>
		<input type="hidden" class="form-control" id="restoreid" readonly>
	  </div>
	  <div class="modal-footer">
	    <button type="button" id="BtnRestore" class="btn btn-success">Confirm</button>
	  </div>
    </div>
  </div>
</div>


<?php require_once('footer.php');?>

<script type="text/javascript">
	fetch_data();

	function fetch_data()
	{
		var operation = "fetching_the_data";
		$.ajax({
			type: 'POST',
			url:'../tables.php',
			data:{accountoperation:operation},
			success:function(s)
			{
				$('.DGVAccounts').html(s);
			},
		});
	}

	function isNumberKey(evt)
	{
    var charCode = (evt.which) ? evt.which : event.keyCode
    if (charCode > 31 && (charCode < 48 || charCode > 57))
        return false;
    return true;
	}

	

	$(document).ready(function()
		{
			$("#Txt_Phone").attr('maxlength','11');

			$("#BtnAddModal").click(function()
				{
					$("#AddAccount_Modal").modal('show');
				});

			$("#formadd").click(function()
				{
					var fname = $("#firstname").val();
					var lname = $("#lastname").val();
					var email = $("#email").val();
					var phone = $("#phone").val();
					var role = $("#role").val();
					var id = $("#id").val();
				});

			$(document).on('click','#Btn_Edit',function()
				{
					var id = $(this).closest('tr').find('#Btn_Edit').attr('user_id');
					var name = $(this).closest('tr').find('#Btn_Edit').attr('user_name');
					var role = $(this).closest('tr').find('#Btn_Edit').attr('user_role');
					$("#id").val(id);
					$("#full").val(name);
					$("#CMBRole").val(role);
					$("#EditRole_Modal").modal('show');
				});

			$("#BtnRole_Edit").click(function()
				{
					var id = $("#id").val();
					var name = $("#full").val();
					var role = $("#CMBRole").val();
					$.ajax(
						{
							url:'../Queries.php',
							method:'POST',
							data:
							{
								id:id,
								role:role,
								source:'UpdateRole'
							},
							success:function(data)
							{
								fetch_data();
								$("#AlrtName").html(name);
								$("#AlrtRole").html(role);
								$("#RoleUpdate_Success").show();
								$("#BlockUser").hide();
								$("#EditRole_Modal").modal('hide');
							},
							error:function()
							{
								alert('Error updating role.');
							}
						});
				});

			$(document).on('click','#Btn_Block',function()
				{
					var id = $(this).closest('tr').find('#Btn_Edit').attr('user_id');
					var name = $(this).closest('tr').find('#Btn_Edit').attr('user_name');
					$("#blockid").val(id);
					$("#blockname").html(name);
					$("#Block_Modal").modal('show');
				});
			$('#BtnBLock').click(function()
				{
					var id = $("#blockid").val();
					var name = $("#blockname").html();
					$.ajax(
						{
							url:'../Queries.php',
							method:'POST',
							data:
							{
								id:id,
								source:'BlockAcc'
							},
							success:function(data)
							{
								fetch_data();
								$("#Block_Name").html(name);
								$("#BlockUser").show();
								$("#AlrtRestored").hide();
								$("#RoleUpdate_Success").hide();
								$("#Block_Modal").modal('hide');
							},
							error:function()
							{
								alert('Error blocking account.');
							}
						});
				});

			$(document).on('click','#Btn_Restore',function()
				{
					var id = $(this).closest('tr').find('#Btn_Edit').attr('user_id');
					var name = $(this).closest('tr').find('#Btn_Edit').attr('user_name');
					$("#restoreid").val(id);
					$("#restorename").html(name);
					$("#Restore_Modal").modal('show');
				});

			$("#BtnRestore").click(function()
				{
					var id = $('#restoreid').val();
					var name = $("#restorename").html();
					$.ajax(
						{
							url:'../Queries.php',
							method:'POST',
							data:
							{
								id:id,
								source:'RestoreAccount'
							},
							success:function(data)
							{
								fetch_data();
								$("#Restore_Name").html(name);
								$("#AlrtRestored").show();
								$("#BlockUser").hide();
								$("#Restore_Modal").modal('hide');
							},
							error:function()
							{
								alert('Error restoring account.');
							}
						});
				});

		});
</script>