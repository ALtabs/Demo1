<?php require_once('header.php'); ?>

<section class="content-header">
	<div class="content-header-left">
		<h1>View Customers</h1>
	</div>
</section>

<section class="content">
	<div class="row">
		<div class="col-md-12">
			<div class="box box-info">
				<div class="alert alert-success" id="AlrtRestore" style="display:none"><label id="AlertNameRestore"></label>'s account successfully restored.</div>
				<div class="alert alert-danger" id="AlrtBlock" style="display:none"><label id="AlertNameBan"></label>'s account successfully blocked.</div>
				<div class="alert alert-success" id="SentSuccess" style="display:none">Message Successfuly Send</div>
				<div class="box-body table-responsive">
					<div class="DGVCustomer"></div>
				</div>
			</div>
		</div>
	</div>

</section>

<div class="modal fade" id="ModalConfirm" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Confirm</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        Are you sure you want to block <label id="ID" style="display:none"> </label> <label id="namee"> </label>?
      </div>
      <div class="modal-footer">
        <button type="button" id="BtnBan" class="btn btn-danger">CONFIRM</button>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="ModalSMS" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
      	<button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
        <h1 class="modal-title"><center> Send SMS </center></h1>
        
      </div>
      <div class="modal-body">

        <label> Phone#: </label> 
        <input type="text" name="phone" id="phone" class="form-control" readonly>
        	<br>
        <label> Messages: </label> <br>
       
         <textarea name="message" id="message" class="form-control" cols="30" rows="10" style="width:100%;height: 200px;">
                                                        Azureh Jewelry Trend



         
         	NOTE: Do not reply this number if you have any concern, Please don't hesitate to notify us through this email azureh.info@azureh.com or phone# +639228585547.
         	CONFIDENTIAL:This message is , including attached files, may contain confidential information and is intended only for the use of the individual and/or entity to which it is addressed and not intended to any means/harmful by our valued customer. 
         	
         </textarea>
         
      </div>
      <div class="modal-footer">
        <button type="button" id="sendsms" class="btn btn-danger">SEND SMS</button>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="ModalConfirm2" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Confirm</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        Are you sure you want to restore <label id="ID2" style="display:none"> </label> <label id="namee2"> </label>?
      </div>
      <div class="modal-footer">
        <button type="button" id="BtnRestore" class="btn btn-success">Unlock</button>
      </div>
    </div>
  </div>
</div>


<?php require_once('footer.php'); ?>

<script type="text/javascript">
	fetch_data();
	function fetch_data()
	{
		var operation = "fetching_the_data";
		$.ajax({
			type: 'POST',
			url:'../tables.php',
			data:{customer:operation},
			success:function(s)
			{
				$('.DGVCustomer').html(s);
			},
		});
	}

	$(document).ready(function()
		{
			$(document).on('click',"#BtnLock",function()
				{
					var id = $(this).closest('tr').find('#BtnLock').attr('user_id');
					var name = $(this).closest('tr').find('#BtnLock').attr('user_fullname');
					$("#ID").html(id);
					$("#namee").html(name);
					$("#AlertNameBan").html(name);
					$("#ModalConfirm").modal('show');
				});
			$(document).on('click','#BtnUnlock',function()
				{
					var id = $(this).closest('tr').find('#BtnUnlock').attr('user_id');
					var name = $(this).closest('tr').find('#BtnUnlock').attr('user_fullname');
					$("#ID2").html(id);
					$("#namee2").html(name);
					$("#AlertNameRestore").html(name);
					$("#ModalConfirm2").modal('show');
				});

			$(document).on('click','#BtnSmS',function()
				{
					var name = $(this).closest('tr').find('#BtnSmS').attr('user_phone');
					$('#phone').val(name);
					$("#ModalSMS").modal('show');
					
				});

			$(document).on('click','#sendsms',function()
				{
					var to = $("#phone").val();
					var message =$("#message").val();
					$.ajax(
						{
							url:'script.php',
							method:'POST',
							data:
							{
								to:to,
								message:message,
								source:'SMSModem'
							},
							success:function(data)
							{
								fetch_data();
								$("#ModalSMS").modal('hide');
								$("#AlrtRestore").hide();
								$("#AlrtBlock").hide();
								$("#SentSuccess").show();
							},
							error:function()
							{
								alert("Can't connect to GSM modem.");
							}
						});
				});

			$(document).on('click','#BtnBan',function()
				{
					var id = $("#ID").html();
					$.ajax(
						{
							url:'../Queries.php',
							method:'POST',
							data:
							{
								id:id,
								source:'Ban'
							},
							success:function(data)
							{
								fetch_data();
								$("#ModalConfirm").modal('hide');
								$("#AlrtRestore").hide();
								$("#AlrtBlock").show();
							},
							error:function()
							{
								alert('Error blocking account.');
							}
						});
				});

			$(document).on('click','#BtnRestore',function()
				{
					var id = $("#ID2").html();
					$.ajax(
						{
							url:'../Queries.php',
							method:'POST',
							data:
							{
								id:id,
								source:'Restore'
							},
							success:function(data)
							{
								fetch_data();
								$("#ModalConfirm2").modal('hide');
								$("#AlrtRestore").show();
								$("#AlrtBlock").hide();
							},
							error:function()
							{
								alert('Error restoring account.');
							}
						});
				});
		});
</script>