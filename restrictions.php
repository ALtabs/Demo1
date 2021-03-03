<?php 

$_SESSION['restriction'] = 'invalid';
  if($_SESSION['restriction'] == 'invalid' || empty($_SESSION['restriction']))
  {
    $_SESSION['restriction'] = 'invalid';
  }
  if($_SESSION['restriction'] != 'valid')
  {
      echo "<script>window.location.href ='/azurehtemp/index.php'</script>";
  }
  

  ?>