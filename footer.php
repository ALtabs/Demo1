 <?php 

 $statement = $pdo->prepare("SELECT * FROM tbl_settings WHERE id=1");
$statement->execute();
$result = $statement->fetchAll(PDO::FETCH_ASSOC);
foreach ($result as $row)
{
   $footer=$row['footer_about'];
   $copyright=$row['footer_copyright'];
   $address=$row['contact_address'];
   $email=$row['contact_email'];
   $contact=$row['contact_phone'];
   $map_iframe=$row['contact_map_iframe'];
   $theme=$row['color'];
}
  ?>

  <style>
    .font-lightgreen
    {
      color:#4fbfa8;
    }
    
    .subs:hover{
        transform:scale(.99);
    }
  </style>
    <div style="background-color:#f8f9fa">
      <div class="container-fluid" style="padding:20px">
        <div class="row">
           <div class="col-lg-4" style="padding:20px">
            <h4 class="font-lightgreen">About Us</h4>
           <small><?php echo$footer; ?></small>
          </div>

          <div class="col-lg-4" style="padding:20px">
            <h4 class="font-lightgreen">Where to find us?</h4>
            <small><?php echo $address?><br></small><a href="contact.php">Go to contact page</a>
            <hr class="d-block d-md-none">
          </div>

          <div class="col-lg-4" style="padding:20px">
            <h4 class="font-lightgreen">Contact Us!</h4>
            <ul class="list-unstyled">
              <li><small><?php echo $contact; ?> <br> <?php echo $email?></small></li>
            </ul>
            <p class="social">
            <?php  $statement = $pdo->prepare("SELECT * FROM tbl_social");
                   $statement->execute();
                   $result = $statement->fetchAll(PDO::FETCH_ASSOC);
                    foreach ($result as $row) {?>
                    <?php if($row['social_url'] != ''): ?>
              <a href="<?php echo $row['social_url']; ?>" class="facebook external fa-2x"><i class="<?php echo $row['social_icon']; ?>"></i></a>
                
              <?php endif; ?>
              <?php }
                   ?>
                 </p>
          </div>
        </div>

        <hr>
<center>
          <div class="row">
            <div class="col-lg-3"></div>
          <div class="col-lg-6" style="border:1px solid silver;padding:10px; background:url(images/news.png);background-size:cover;">
            <h4 class="mb-3">Stay in Touch!</h4>
            <p class="text-muted">Get the latest updates by subcribing to our newsletter!</p>
            <label id="Notice" style="display:none" class="text-success">You are now subscribed to our page!</label>
              <div class="input-group" id="Subsss">
                <input type="text" id="TxtSubs" class="form-control"><span class="input-group-append">
                  <button type="button" id="BtnSubscribe" class="btn btn-outline-secondary subs" style="width:140px; background:url(images/subcribes.png); background-size:cover;" ></button></span>
              </div>
          </div>
          <div class="col-lg-3"></div>
        </div>
      </center>
      </div>
    </div>


    <div id="copyright">
      <div class="container">
       <marquee>
        <p class="text-center text-lg-left"><?php echo $copyright; ?></p> 
        </marquee>
      </div>
    </div>
    <!-- *** COPYRIGHT END ***-->
    <!-- JavaScript files-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="vendor/jquery.cookie/jquery.cookie.js"> </script>
    <script src="js/jquery.flexslider.js"></script>

    <script type="text/javascript">
      $(document).ready(function()
        {
          $("#BtnSubscribe").click(function()
            {
              var subscribe = $("#TxtSubs").val();
              if(subscribe == "")
              {
                $("#TxtSubs").css('border-color','red');
              }
              else
              {
                $("#TxtSubs").css('border-color','silver');
                $.ajax(
                  {
                    url:'Queries.php',
                    method:'POST',
                    data:
                    {
                      email:subscribe,
                      source: 'Subscribe'
                    },
                    success:function(data)
                    {
                      $("#Notice").show();
                      $("#Subsss").hide();
                    },
                    error:function()
                    {
                      alert('Error subscribing.');
                    }
                  });
              }
            });
        });
    </script>
    
    <script>
'undefined'=== typeof _trfq || (window._trfq = []);'undefined'=== typeof _trfd &&
(window._trfd=[]),_trfd.push(

{'tccl.baseHost':'$BASEHOST'}),_trfd.push(

{'ap':'$AP'},{'server':'$HOSTNAME'},{'id':'$ID'})
// Monitoring performance to make your website faster. If you want to opt-out, please contact web hosting support.
</script>
<script src='https://img1.wsimg.com/tcc/tcc_l.combined.1.0.6.min.js'></script>
   
  </body>
</html> 