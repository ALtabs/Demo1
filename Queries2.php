<?php

include('admin/inc/config.php');

if(isset($_POST['id']))
{ 
  $Prov_id = $_POST['id'];

  $query=$pdo->prepare("SELECT * from cities WHERE province_id = ?");
  $query->execute(array($Prov_id));
  $result=$query->fetchAll();
  foreach($result as $row)
  {
    $Prov_id=$row['city_id'];
    $city=$row['city_name'];

    echo "<option value='$Prov_id'>$city</option>";
  }
}

if(isset($_POST['postal']))
{ 
  $city_id = $_POST['postal'];

  $query=$pdo->prepare( "SELECT * from cities WHERE city_id = ?");
  $query->execute(array($city_id));
  $result=$query->fetchAll();
  foreach($result as $row)
  {
    $city_id=$row['city_id'];
    $zip=$row['zipcode'];

    echo "<label class='form-control'>$zip</label>";
  }
}

if(isset($_POST['cityid']))
{ 
  $city_id = $_POST['cityid'];

  $query=$pdo->prepare("SELECT * from cities WHERE city_id = ?");
  $query->execute(array($city_id));
  $result=$query->fetchAll();
  foreach($result as $row)
  {
    $city_id=$row['city_id'];

    echo "$city_id";
  }
}

if(isset($_POST['guest']))
{
  $DisplayGuest = $pdo->prepare(
  "SELECT * FROM cust_guest i INNER JOIN cities ii on ii.city_id = i.cities INNER JOIN provinces iii ON iii.province_id = ii.province_id WHERE g_code = ?'");

  if($DisplayGuest)
   {
      while ($row = mysqli_fetch_array($DisplayGuest)) 
      	{?>
      	<div class="row">
          <div class="col-md-6">
            <div class="form-group">
              <label for="phone">Province</label><br>
              <input type="text"  name="info" class="form-control" value="<?php echo $row['province_name'];?>" readonly>
            </div>
          </div>
          <div class="col-md-6">
            <div class="form-group">
              <label for="email">City/Municipal</label><br>
              <input type="text" name="info" class="form-control" value="<?php echo $row['city_name'];?>" readonly>
            </div>
          </div>

           <label id="LblZip" class="form-control" style="display:none"><?php echo $row['zipcode'];?></label>
        </div>      
<?php
    	}
	}
}



?>