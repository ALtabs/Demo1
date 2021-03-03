 <?php
                      $i=0;
                        foreach($_SESSION['cart_size_id'] as $key => $value) 
                        {
                            $i++;
                            $arr_cart_size_id[$i] = $value;
                        }
                        $i=0;
                        foreach($_SESSION['cart'] as $key => $value) 
                        {
                            $i++;
                            $arr_cart_p_id[$i] = $value;
                        }

                $total = 0;
                $subtotal = 0;
              if(!empty($_SESSION['cart'])){

                $index = 1;
            if(!isset($_SESSION['cart_p_qty'])){
              $_SESSION['cart_p_qty'] = array_fill(0, count($_SESSION['cart']), 1);
            }
        $statement = $pdo->prepare("SELECT * FROM tbl_product WHERE p_id IN (".implode(",",$_SESSION['cart']).")");
              $statement->execute();
              $result = $statement->fetchAll();
              } ?>
                           <?php 
                foreach ($result as $row) {

                    $discount=$row['p_old_price']-$row['p_current_price'];
                    $percentage=$discount*100;
                    $total=$percentage/$row['p_old_price'];
                  ?>

                      <tbody>
                   

                  <tr>
                          <td><a href="#"><img src="assets/uploads/<?php echo $row['p_featured_photo'];?>" alt="azureh"></a></td>
                          <td><a href="#"><?php echo $row['p_name']?></a></td>
                          <td>
                            <input type="hidden" name="indexes[]" value="<?php echo $index; ?>">
                            <input type="number" value="<?php echo $_SESSION['cart_size_id'][$index]; ?>" class="form-control">
                          </td>
                          <td>
                            <input type="hidden" name="indexes[]" value="<?php echo $index; ?>">
                            <input type="number" value="<?php echo $_SESSION['cart_p_qty'][$index]; ?>" class="form-control">
                          </td>
                          <td>$<?php echo $row['p_current_price']?></td>
                          <td><?php echo $total?>%</td>
                          <td><?php echo number_format($_SESSION['cart_p_qty'][$index]*$row['p_current_price'], 2); ?></td>
                          <td><a href="delete_item.php?id=<?php echo $row['id']; ?>&index=<?php echo $index; ?>" class="btn btn-danger btn-sm"><span class="fa fa-trash"></span></a></a></td>
                          <?php  $subtotal +=$_SESSION['cart_p_qty'][$index]*$row['p_current_price']; ?>
                          <?php  $total2 =$total+$subtotal;?>
                        </tr>
                        
                        
                 <?php $index ++; }
                ?>