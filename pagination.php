<?php
               
        $pagination_statement = $pdo->prepare("SELECT * FROM tbl_product");
         $pagination_statement->execute();
         $row_count = $pagination_statement->rowCount();

         $page_rows = 16;
         $last = ceil($row_count/$page_rows);
         
         if($last < 1){
         $last = 1;
         }
         $pagenum = 1;


  if(isset($_GET['pn'])){
    $pagenum = preg_replace('#[^0-9]#', '', $_GET['pn']);
  }

  if ($pagenum < 1) { 
    $pagenum = 1; 
  } 
  else if ($pagenum > $last) { 
    $pagenum = $last; 
  }
  $limit = 'LIMIT ' .($pagenum - 1) * $page_rows .',' .$page_rows;

   $statement12 = $pdo->prepare("SELECT * FROM tbl_product ORDER BY p_id $limit");
   $statement12->execute();
   $result1 = $statement12->fetchAll();

  $paginationCtrls = '';

  if($last != 1){
    
  if ($pagenum > 1) {
        $previous = $pagenum - 1;
    $paginationCtrls .= '<a href="'.$_SERVER['PHP_SELF'].'?pn='.$previous.'" class="btn btn-danger">Previous</a> &nbsp; &nbsp; ';
    
    for($i = $pagenum-4; $i < $pagenum; $i++){
      if($i > 0){
             $paginationCtrls .= '<a href="'.$_SERVER['PHP_SELF'].'?pn='.$i.'" class="btn btn-dark">'.$i.'</a> &nbsp; ';
      }
      }
    }
  
  $paginationCtrls .= ''.$pagenum.' &nbsp; ';
  
  for($i = $pagenum+1; $i <= $last; $i++){
   $paginationCtrls .= '<a href="'.$_SERVER['PHP_SELF'].'?pn='.$i.'" class="btn btn-dark">'.$i.'</a> &nbsp; ';
    if($i >= $pagenum+4){
      break;
    }
  }

    if ($pagenum != $last) {
        $next = $pagenum + 1;
          $paginationCtrls .= ' &nbsp; &nbsp; <a href="'.$_SERVER['PHP_SELF'].'?pn='.$next.'" class="btn btn-info ">Next</a> ';
    }
  }

         
               

?>