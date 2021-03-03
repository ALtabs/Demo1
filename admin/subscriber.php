<?php require_once('header.php'); ?>

<section class="content-header">
	<div class="content-header-left">
		<h1>Subscriber</h1>
	</div>
</section>


<section class="content">
  <div class="row">
    <div class="col-md-12">
      <div class="box box-info">        
        <div class="box-body table-responsive" id="DGVSubsribers">
          
        </div>
      </div>
  

</section>


<?php require_once('footer.php'); ?>

<script type="text/javascript">
    fetch_data();

    function fetch_data()
    {
        var operation = "fetching_the_data";
        $.ajax({
            type: 'POST',
            url:'../tables.php',
            data:{subscribers:operation},
            success:function(s)
            {
                $('#DGVSubsribers').html(s);
            },
        });
    }
</script>