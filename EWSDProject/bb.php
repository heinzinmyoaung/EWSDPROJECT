<script> 
 
 function myFunction(){
   let text= "Are you Download?"
   if(confirm(text) == true){
    <?php
include('connect.php');

$check = "SELECT * FROM idea";
$idea = $conn->prepare($check);
$idea->execute();   

$checkcount=$idea->rowCount();

  $info = array();
    if($checkcount>0){
        
      while (	$fetch=$idea->fetch(PDO::FETCH_ASSOC)) {
      $info[]= $fetch;
      }
        
    }

header('Content-Type: text/csv; charset=utf-8');
header('Content-Disposition: attachment; filename=Users.csv');
$output = fopen('php://output', 'w');
fputcsv($output, array('IdeaId', 'QamId', 'QacId', 'StaffId', 'AdminId', 'CategoryId', 'Idea', 'Document', 'AnonymousStatus', 'UploadDate', 'UploadTime', 'ThumbUp', 'ThumbDown'));


if (count($info) > 0) {
    foreach ($info as $fetch) {
        fputcsv($output, $fetch);
       
        }
}

 ?>
 

   }        
   else {
     location="UserDashboard.php";
   }
 }
   
   
 
 
</script> 
<?php 
include('connect.php');
$sth = $conn->prepare("SELECT closureDate FROM closuredate");
$sth->execute();

$checkcount=$sth->rowCount();

  $info = array();
    if($checkcount>0){
      while ($fetch=$sth->fetch(PDO::FETCH_ASSOC)) {
      $info[]= $fetch;
       $c_date=implode("",$info[0]);
       

       $clousure_date = strtotime($c_date);
       $nowdate = date("Y/m/d");

     

    if($nowdate < $clousure_date || $nowdate == $clousure_date){
    
      echo '
          <script>myFunction();</script>
          
      '; 

      } 
      else{
          echo "ee";
    }
  }
}
  
    ?>