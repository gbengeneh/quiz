<?php
include "db.php";

<?php
require "db_con.php";
$request_body = file_get_contents("php://input");
$data = json_decode($request_body);

if($_SERVER['REQUEST_METHOD'] === 'POST'){


 $question= filter_var($data->question, FILTER_SANITIZE_FULL_SPECIAL_CHARS);
 $optiona= filter_var($data->optiona, FILTER_SANITIZE_FULL_SPECIAL_CHARS);
 $optionb= filter_var($data->optionb, FILTER_SANITIZE_FULL_SPECIAL_CHARS);
 $optionc= filter_var($data->optionc, FILTER_SANITIZE_FULL_SPECIAL_CHARS);
 $optiond= filter_var($data->optiond, FILTER_SANITIZE_FULL_SPECIAL_CHARS);
 $answer= filter_var($data->answer, FILTER_SANITIZE_FULL_SPECIAL_CHARS);
 $ans_id= aid;
 $date= date("Y-m-d H:i:s");
 
$sql = " INSERT INTO students (question,ans_id, date)
         VALUES ('$firstname', '$lastname','$department','$gender','$age','$email','$phoneno','$password','$date')";
$query = mysqli_query($db_con, $sql);

if($query){
  $response = ["status"=>"success","message"=>"Registration Sucess"];
    echo json_encode($response);
    return;
}else{

$response = ["status"=>"error","message"=>"Registration Failed"];
    echo json_encode($response);
    return;
}

 }
 
}else{
    $response = ["status"=>"error","message"=>"Please fill all the required fields"];
    echo json_encode($response);
    return;
}    
}else{
    $response = ["status"=>"error","message"=>"Invalid request method"];
    echo json_encode($response);
    return;
}




























$query="INSERT INTO questions(question,ans_id) VALUES('What is the full meaning of html',1),
('what is computer',2),
('out put devices includes the following except',3),
('is PHP a programming language',4)";
$result   = mysqli_query($con, $query);
         if($query){
               $response = ["status"=>"success","message"=>"Registration Sucess"];
                echo json_encode($response);
                return;
            }else{

            $response = ["status"=>"error","message"=>"Registration Failed"];
                echo json_encode($response);
                return;
            }
?>