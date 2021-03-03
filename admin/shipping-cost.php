<?php require_once('header.php'); ?>

<?php

if(isset($_POST['form1'])) {

    $valid = 1;

    if(empty($_POST['country_id'])) {
        $valid = 0;
        $error_message .= 'You must have to select a country.<br>';
    }

    if($_POST['amount'] == '') {
        $valid = 0;
        $error_message .= 'Amount can not be empty.<br>';
    } else {
        if(!is_numeric($_POST['amount'])) {
            $valid = 0;
            $error_message .= 'You must have to enter a valid number.<br>';
        }
    }

    if($valid == 1) {
        $statement = $pdo->prepare("INSERT INTO tbl_shipping_cost (country_id,amount) VALUES (?,?)");
        $statement->execute(array($_POST['country_id'],$_POST['amount']));

        $success_message = 'Shipping cost is added successfully.';
    }

}




if(isset($_POST['form2'])) {
    $valid = 1;

    if($_POST['amount'] == '') {
        $valid = 0;
        $error_message .= 'Amount can not be empty.<br>';
    } else {
        if(!is_numeric($_POST['amount'])) {
            $valid = 0;
            $error_message .= 'You must have to enter a valid number.<br>';
        }
    }

    if($valid == 1) {

        $statement = $pdo->prepare("UPDATE tbl_shipping_cost_all SET amount=? WHERE sca_id=1");
        $statement->execute(array($_POST['amount']));

        $success_message = 'Shipping cost for rest of the world is updated successfully.';

    }
}
?>


<section class="content-header">
    <div class="content-header-left">
        <h1>Add Shipping Cost</h1>
    </div>
</section>

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

            <form class="form-horizontal" action="" method="post">

                <div class="box box-info">
                    <div class="box-body">
                        <div class="alert alert-danger" id="BlankCost" style="display:none">Please input shipping cost.</div>
                        <div class="alert alert-warning" id="BlankRegion" style="display:none">Please input region.</div>
                        <div class="alert alert-success" id="AddSuccess" style="display:none">Shipping cost from added!</div>
                        <div class="alert alert-danger" id="ExistCost" style="display:none">This shipping cost already existed. You can edit it from View shipping cost table!</div>
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">Select Region <span>*</span></label>
                            <div class="col-sm-4">
                                <select name="region_id" id="CMBProvince"class="form-control">
                                    <option value="Select Region">Select Region</option>
                                    <?php
                                        $query = $pdo->prepare("SELECT * FROM provinces");
                                        $query->execute();
                                        $result = $query->fetchAll();
                                        foreach($result as $row)
                                        {
                                          ?>
                                          <option value="<?php echo $row['province_id']; ?> " > <?php echo $row['province_name'];?></option>
                                          <?php
                                        } 
                                        ?>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">Select City/Municipal <span>*</span></label>
                            <div class="col-sm-4">
                                <select name="city_id" id="City" class="form-control select2">
                                    <option value="">Select City/Municipal</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Amount <span>*</span></label>
                            <div class="col-sm-4">
                                <input type="text" id="Txt_Cost" class="form-control" name="amount" onkeypress="return isNumberKey(event)">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label"></label>
                            <div class="col-sm-6">
                                <button type="button" id="Btn_Shippingcost_Add" class="btn btn-success pull-left" name="form1">Add</button>
                            </div>
                        </div>
                    </div>
                </div>

            </form>


        </div>
    </div>
</section>




<section class="content-header">
	<div class="content-header-left">
		<h1>View Shipping Costs</h1>
    </div>
</section>
<section class="content">
    <div class="box box-info">
      <div class="box-body" id="ShippingTable">
      </div>
	</div>
</section>

<div class="modal fade" id="Shipping_Cost_modal" tabindex="-1" role="dialog" data-backdrop="static">
  <div class="modal-dialog modal-md" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Edit Shipping cost</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="row">
          <div class="col-sm-4">
            <div class="form-group">
              <label>Province</label>
              <input type="text" id="Province" class="form-control" readonly>
            </div>
          </div>
          <div class="col-sm-3">
            <div class="form-group">
              <label>City</label>
              <input type="text" id="CityName" class="form-control" readonly>
            </div>
          </div>
          <div class="col-sm-2">
            <div class="form-group">
              <label>Old Amount</label>
              <input type="text" id="OldAMT" class="form-control" readonly>
            </div>
          </div>
          <div class="col-sm-3">
            <div class="form-group">
              <label>New Amount</label>
              <input type="text" id="NewAMT" class="form-control" onkeypress="return isNumberKey(event)">
              <input type="hidden" id="CostID" readonly>
            </div>
          </div>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" id="Btn_EditShippingCost" class="btn btn-success">Save changes</button>
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
      data:{shipping_cost_operation:operation},
      success:function(s)
      {
        $('#ShippingTable').html(s);
      },
    });
  }

  $("#NewAMT").attr('maxlength','3');
    
    function isNumberKey(evt)
      {
         var charCode = (evt.which) ? evt.which : event.keyCode
         if (charCode > 31 && (charCode < 48 || charCode > 57))
            return false;

         return true;
      }

    $(document).ready(function()
        {
            $(document).on('change','#CMBProvince',function()
              {
                var province = $(this).val();
                $.ajax({
                  method:'POST',
                  url:'../Queries2.php',
                  data:
                  {
                    id:province
                  },
                  dataType:"html",
                  success:function(data)
                  {
                    $('#City').html(data);
                    $('#Txt_Zipcode').html('');

                  },
                  error:function()
                  {}
                });
              });

            $(document).on('change', '#City',function(){
           var cities = $(this).val();
            $.ajax({
              method:'POST',
              url:'../Queries2.php',
              data:
              {
                cityid:cities
              },
              dataType:"html",
              success:function(data)
              {
                
              },
              error:function()
              {}
            });
        });

            $('#Btn_Shippingcost_Add').click(function()
                {
                    var region = $('#CMBProvince').val();
                    var city = $("#City").val();
                    var shipping_cost = $('#Txt_Cost').val();

                    if(region == "Select Region")
                    {
                        $("#BlankRegion").show();
                        $("#BlankCost").hide();
                        $("#ExistCost").hide();
                        $("#AddSuccess").hide();
                        $('#CMBProvince').css('border-color','red');
                    }
                    else if(shipping_cost == "")
                    {
                        $("#BlankCost").show();
                        $("#BlankRegion").hide();
                        $("#ExistCost").hide();
                        $("#AddSuccess").hide();
                        $('#Txt_Cost').css('border-color','red');
                        $('#CMBProvince').css('border-color','silver');
                    }
                    else
                    {
                      $.ajax(
                        {
                          url:'../Queries.php',
                          method:'POST',
                          data:
                          {
                            Pid:region,
                            Cid:city,
                            source:'validate_shipping_cost'
                          },
                          success:function(data)
                          {
                            if(data == "exist")
                            {
                              $("#ExistCost").show();
                              $("#BlankCost").hide();
                              $("#BlankRegion").hide();
                              $("#AddSuccess").hide();
                              $('#Txt_Cost').css('border-color','silver');
                              $('#CMBProvince').css('border-color','silver');
                            }
                            else
                            {
                              $.ajax(
                            {
                                url:'../Queries.php',
                                method:'POST',
                                data:
                                {
                                    province_id:region,
                                    city_id:city,
                                    amount:shipping_cost,
                                    source: 'add_shipping_cost'
                                },
                                success:function()
                                {
                                    fetch_data();
                                    $("#ExistCost").hide();
                                    $("#BlankRegion").hide();
                                    $("#BlankCost").hide();
                                    $("#AddSuccess").show();
                                    $('#Txt_Cost').val('');
                                    $('#Txt_Cost').css('border-color','silver');
                                    $('#CMBProvince').css('border-color','silver');
                                },
                                error:function()
                                {
                                    alert('Error adding shipping cost.');
                                }
                            });
                            }
                          },
                          error:function()
                          {
                            alert('Error validating shipping cost.');
                          }
                        });
                        
                    }
                    
                });

            $(document).on('click','#Btn_Edit',function()
              {
                var id = $(this).closest('tr').find('#Btn_Edit').attr('shipping_id');
                var province = $(this).closest('tr').find('#Btn_Edit').attr('province_name');
                var city = $(this).closest('tr').find('#Btn_Edit').attr('city_name');
                var Old_Amount = $(this).closest('tr').find('#Btn_Edit').attr('old_amt');
                $("#CostID").val(id);
                $("#Province").val(province);
                $("#CityName").val(city);
                $("#OldAMT").val(Old_Amount);
                $("#Shipping_Cost_modal").modal('show');

              });

            $('#Btn_EditShippingCost').click(function()
              {
                var amt = $("#NewAMT").val();
                var id = $("#CostID").val();
                if(amt == "")
                {
                  $("#NewAMT").css('border-color','red');
                }
                else
                {
                  $.ajax(
                    {
                      url:'../Queries.php',
                      method:'POST',
                      data:
                      {
                        id:id,
                        amount:amt,
                        source:'update_shipping_cost'
                      },
                      success:function(data)
                      {
                        fetch_data();
                        $("#NewAMT").css('border-color','silver');
                        $("#Shipping_Cost_modal").modal('hide');
                        $("#CostID").val('');
                        $("#Province").val('');
                        $("#CityName").val('');
                        $("#OldAMT").val('');
                        $("#NewAMT").val('');

                      },
                      error:function()
                      {
                        alert('Error updating amount.');
                      }
                    });
                }
              });


        });
</script>