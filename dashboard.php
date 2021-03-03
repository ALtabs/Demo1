<?php include('header.php'); ?>
    
       <div id="all">
      <div id="content">
        <div class="container">
          <div class="row">
            <div class="col-lg-3">
              <!--
              *** CUSTOMER MENU ***
              _________________________________________________________
              -->
              <div class="card sidebar-menu">
                <div class="card-header">
                  <h3 class="h4 card-title">Customer section</h3>
                </div>
                <div class="card-body">
                  <ul class="nav nav-pills flex-column"><a href="dashboard.php" class="nav-link active"><i class="fa fa-list"></i> My orders</a><a href="customer-account.php" class="nav-link"><i class="fa fa-user"></i> My account</a><a href="index.html" class="nav-link"><i class="fa fa-sign-out"></i> Logout</a></ul>
                </div>
              </div>
              <!-- /.col-lg-3-->
              <!-- *** CUSTOMER MENU END ***-->
            </div>
            <div id="customer-order" class="col-lg-9">
              <div class="box">

                <div class="table-responsive mb-4" >
                  <div class="alert alert-success" id="DeleteSuccess" style="display:none">Item Deleted.</div>
                  <div class="alert alert-success" id="CartVoidSuccess" style="display:none">Cart successfully void.</div>
                  <div class="DADA"></div>


                  <table class="table" style="display:None">
                    <tfoot>
                      <tr>
                        <th colspan="5" class="text-right">Order subtotal</th>
                        <th><label id="Lbl_subtotal"></label></th>
                      </tr>
                      <tr>
                        <th colspan="5" class="text-right">Shipping Fee</th>
                        <th><label id="Lbl_shippingfee"></label></th>
                      </tr>
                      <tr>
                        <th colspan="5" class="text-right">Total</th>
                        <th><label id="Lbl_total"></label></th>
                      </tr>
                    </tfoot>
                  </table>
                </div>
                <!-- /.table-responsive-->
                <div class="row addresses">
                  <div class="col-lg-6">
                    <h2>Invoice address</h2>
                    
                  </div>
                  <div class="col-lg-6">
                    <h2>Shipping address</h2>
                    <?php
                    $guest=$pdo->prepare('SELECT * FROM tbl_user i LEFT JOIN cust_guest ii ON i.id = ii.g_code LEFT JOIN provinces iii ON iii.province_id = ii.muni LEFT JOIN cities iiii ON iiii.city_id = ii.cities WHERE i.id = ?');
                    $guest->execute(array($id));
                    $res=$guest->fetchAll(PDO::FETCH_ASSOC);
                    foreach ($res as $row)
                    echo '<p>'.$row['first_name'].' '.$row['last_name'].'</br>';
                    echo $row['add1'].'</br>';
                    echo $row['city_name'].', '.$row['province_name'];
                    ?>
                    
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="modal" id="ModalLogin" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h3 class="modal-title">Confirmation</h3>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="alert alert-danger" id="NoPass" style="display:none">Please input password.</div>
        <div class="alert alert-warning" id="WrongPass" style="display:none">Incorrect password.</div>
        <p>To confirm that it's you, you must login again to continue.</p>
        <input type="password" id="TxtPass" class="form-control" placeholder="Password">
        <label id="LblID" style="display:none"></label>
      </div>
      <div class="modal-footer">
        <button type="button" id="Btn_Login" class="btn btn-primary">Log in</button>
      </div>
    </div>
  </div>
</div>


<div class="modal" id="ModalOrder" tabindex="-1" role="dialog">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h3 class="modal-title">Order Details</h3>
      </div>
      <div class="modal-body">
        <h4>OR # <label id="OR" style="text-decoration: underline"></label> </h4>
        <div class="DIV">
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" id="BtnVoidOrder" class="btn btn-danger">Void Order</button>
        <button type="button" class="btn btn-primary" id="BtnClose">Close</button>
      </div>
    </div>
  </div>
</div>

    <!--
    *** FOOTER ***
    _________________________________________________________
    -->
 <?php include('footer.php');?>

 
     <script type="text/javascript">
      
      var subtotal = document.getElementById("Table_Cart"), sumval = 0;
      for (var i = 1; i < subtotal.rows.length; i++)
      {
        sumval = sumval + parseInt(subtotal.rows[i].cells[1].innerHTML);
      }
      $("#Lbl_subtotal").html('$'+sumval);
      var subtotal = $('#Lbl_subtotal').html();
      var shipping = $('#Lbl_shippingfee').html();
      price = subtotal;
      sum = subtotal + shipping;
      $('#Lbl_total').html(sum);
    </script>

    <script type="text/javascript">
        fetch_data();
        function fetch_data()
        {
          var id = <?php echo $id;?>;
          var operation = "fetching_the_data";
          $.ajax({
            type: 'POST',
            url:'tables.php',
            data:
            {
              carts:operation,
              cart_id:id
            },
            success:function(s)
            {
              $('.DADA').html(s);
            },
          });
        }
    </script>

    <script type="text/javascript">
      
      $(document).ready(function()
        {
          $('#BtnVoidOrder').click(function()
            {
              var id = $('#OR').html();
              $.ajax(
                {
                  url: 'Queries.php',
                  method:'POST',
                  data:
                  {
                    id:id,
                    source:'DeleteCart'
                  },
                  success:function(data)
                  {
                    fetch_data();
                    $('#CartVoidSuccess').show();
                    $('#ModalOrder').modal('hide');
                  },
                  error:function()
                  {
                    alert('Error voiding cart.');
                  }
                });
            });

          $(document).on('click','#BtnClose',function()
          {
            $('#ModalOrder').modal('hide');
          });

          $(document).on('click','#BtnViewCart',function()
            {
              var or = $(this).closest('tr').find('#BtnViewCart').attr('cart_id');
              $('#ModalOrder').modal('show');
              $('#OR').html(or);
              var operation = "fetch";
              $.ajax(
                {
                  url:'tables.php',
                  method:'POST',
                  data:
                  {
                    orders:operation,
                    cart_id:or
                  },
                  success:function(data)
                  {
                    $('.DIV').html(data);
                  },
                  error:function()
                  {}
                });
            });

          $(document).on('click','#BtnDeleteOrder',function()
            {
              $('#ModalLogin').modal('show');
              var id = $(this).closest('tr').find('#BtnDeleteOrder').attr('order_id');
              $('#LblID').html(id);

            });

          $('#Btn_Login').click(function()
            {
              var password = $('#TxtPass').val();
              var orderID = $("#LblID").html();
              if(password == "")
              {
                $('#NoPass').show();
                $('#WrongPass').hide();
              }
              else
              {
                $('#NoPass').hide();
                var id = <?php echo $id;?>;
                
                $.ajax(
                  {
                    url:'PassQuery.php',
                    method:'POST',
                    data:
                    {
                      Logid:id,
                      pass:password,
                      source: 'ConfirmPass'
                    },
                    success:function(data)
                    {
                      if(data=="exist")
                      {
                        var id = 
                        $.ajax(
                          {
                            url:'Queries.php',
                            method:'POST',
                            data:
                            {
                              id:orderID,
                              source:'DeleteOrder'
                            },
                            success:function(data)
                            {
                              $('#DeleteSuccess').show();
                              $('#ModalLogin').modal('hide');
                              setTimeout(function()
                              {
                                location.reload();
                              }, 2000);
                            },
                            error:function()
                            {}
                          });
                      }
                      else
                      {
                        $('#NoPass').hide();
                        $('#WrongPass').show();
                      }
                    },
                    error:function()
                    {
                      alert('Error login.');
                    }
                  });
              }
            });
        });
    </script>