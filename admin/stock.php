<?php require_once('header.php');?>

<section class="content-header">
	<div class="content-header-left">
		<h1>Stocks</h1>
	</div>
	<div class="content-header-right">
		<button type="button" style="background-color:#333333;border-color:#333333;color:white"class="btn" id="BtnSize">Add Size</button>
	</div>
</section>
<section class="content">
	<div class="alert alert-success" id="AddSuccess" style="display:none">Product size successfully added!.</div>
	<div class="row" id="rowTable">
		<div class="col-md-12">
			<div class="box box-info">
				<div class="box-body table-responsive Table_Data">
				</div>
			</div>
		</div>
	</div>
</section>

<div class="modal fade" id="ModalAdd" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Add Quantity</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      	<label id="deid" style="display:none"></label>
      	<div class="row">
      		<div class="col-sm-7">
      			<div class="form-group">
      				<label>Product name</label>
		        	<input type="text" class="form-control" id="Prod" readonly>
		    	</div>
		    </div>
		    <div class="col-sm-2">
		    	<div class="form-group">
		    		<label>Size</label>
			        <input type="text" class="form-control" id="size" readonly>
			        <input type="hidden" class="form-control" id="current" readonly>
		    	</div>
		    </div>
		    <div class="col-sm-3">
		    	<div class="form-group">
		    		<label>Quantity</label>
		    		<input type="text" class="form-control" id="Txt_Qty" onkeypress="return isNumberKey(event)">
		    	</div>
		    </div>
    	</div>
      </div>
      <div class="modal-footer">
        <button type="button" id="Btn_UpdateQty" class="btn btn-success"><span class="fa fa-plus"></span> Add Quantity</button>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="ModalSize" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Add Size</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      	<div class="alert alert-danger" id="ExistSize" style="display:none">This product size already exist.</div>
      	<div class="row">
      		<div class="col-sm-8">
      			<div class="form-group">
      				<label>Product name</label>
		        	<select class="form-control" id="CMBProds">
		        		<option>Select Product</option>
		        		   <?php $query = $pdo->prepare("SELECT * FROM tbl_product");
		        		   		$query->execute();
		        		   		$result=$query->fetchAll(PDO::FETCH_ASSOC);
		        		   		foreach($result as $row){ ?>
		        		   			<option value="<?php echo $row['p_id'];?>"><?php echo $row['p_name'];?></option> 
		        		   		<?php }?>
		        	</select>
		    	</div>
		    </div>
		    <div class="col-sm-3">
		    	<div class="form-group">
		    		<label>Sizes</label>
		    		<select class="form-control" id="CMBSize">
		    			<option>Select Size</option>
                    <?php $query = $pdo->prepare("SELECT * FROM tbl_size");
		        		   		$query->execute();
		        		   		$result=$query->fetchAll(PDO::FETCH_ASSOC);
		        		   		foreach($result as $row){ ?>
		        		   			<option value="<?php echo $row['size_id'];?>"><?php echo $row['size_name'];?></option> 
		        		   		<?php }?>
		        	</select>
		    	</div>
		    </div>
    	</div>
      </div>
      <div class="modal-footer">
        <button type="button" id="Btn_AddSize" class="btn btn-success"><span class="fa fa-plus"></span> Add Size</button>
      </div>
    </div>
  </div>
</div>
<?php include('footer.php');?>
<script type="text/javascript">

	fetch_data();
	function fetch_data()
	{
		var operation = "fetching_the_data";
		$.ajax({
			type: 'POST',
			url:'../tables.php',
			data:{stocks:operation},
			success:function(s)
			{
				$('.Table_Data').html(s);
			},
		});
	}
</script>
<script type="text/javascript">
	

	function isNumberKey(evt)
	{
	    var charCode = (evt.which) ? evt.which : event.keyCode
	    if (charCode > 31 && (charCode < 48 || charCode > 57))
	        return false;
	    return true;
	}

	$("#Txt_Qty").attr('maxlength','3');


	$(document).ready(function()
	{

		$(document).on('click','#Btn_AddSize',function()
			{
				var prods = $("#CMBProds").val();
				var sizeList = $("#CMBSize").val();
				if(prods == "Select Product")
				{
					$("#CMBProds").css('border-color','red');
				}
				if(prods != "Select Product")
				{
					$("#CMBProds").css('border-color','grey');
				}
				if(sizeList == "Select Size")
				{
					$("#CMBSize").css('border-color','red');
				}
				if(sizeList != "Select Size")
				{
					$("#CMBSize").css('border-color','grey');
				}
				if(prods != "Select Product" && sizeList != "Select Size")
				{
					$.ajax(
						{
							url:'../Queries.php',
							method:'POST',
							data:
							{
								p_id:prods,
								size_id:sizeList,
								source:'ValidateExistingProdSize'
							},
							success:function(result)
							{
								if(result == "exist")
								{
									$("#ExistSize").show();
								}
								else if (result == "notexist")
								{
									var b = $("#CMBSize").val();
									var a = $("#CMBProds").val();
									var s = 0;
									$.ajax(
										{
											url:'../Queries.php',
											method:'POST',
											data:
											{
												size_id:b,
												p_id:a,
												stock:s,
												source:'AddSize'
											},
											success:function(res)
											{
												fetch_data();
												$("#ExistSize").hide();
												$("#AddSuccess").show();
												$("#ModalSize").modal('hide');
												$("#CMBSize").val('Select Size');
												$("#CMBProds").val('Select Product');
											},
											error:function()
											{
												alert('Error adding product size.');
											}
										});
								}
							},
							error:function()
							{
								alert('Error validating sizes');
							}
						}); 
				}
			});

		$(document).on('click','#BtnAdd',function()
			{
				var prod = $(this).closest('tr').find('#BtnAdd').attr('de_id');
				var name = $(this).closest('tr').find('#BtnAdd').attr('de_name');
				var size = $(this).closest('tr').find('#BtnAdd').attr('de_size');
				var currentQty = $(this).closest('tr').find('#BtnAdd').attr('de_Qty');
				$("#deid").html(prod);
				$("#Prod").val(name);
				$("#size").val(size);
				$("#current").val(currentQty);
				$('#ModalAdd').modal('show');	
			});

		$(document).on('click','#Btn_UpdateQty',function()
			{
				var id = $("#deid").html();
				var Qty1 = $("#current").val();
				var Qty2 = $("#Txt_Qty").val();
				var Total = parseInt(Qty1) + parseInt(Qty2);
				
				
				if(Qty2 == "")
				{
					$("#Txt_Qty").css('border-color','red');
				}
				else
				{
					$.ajax(
						{
							url:'../Queries.php',
							method:'POST',
							data:
							{
								stock:Total,
								id:id,
								source:'UpdateSizeQty'
							},
							success:function(data)
							{
								fetch_data();
								$("#Txt_Qty").val('');
								$('#ModalAdd').modal('hide');
							},
							error:function(){}
						});
				}

			});

		$("#BtnSize").click(function()
			{
				$("#ModalSize").modal('show');
			});
	});
</script>