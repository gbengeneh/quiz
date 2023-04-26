<?php
require "db.php";
$request_body = file_get_contents("php://input");
$data = json_decode($request_body);

if($_SERVER['REQUEST_METHOD'] === 'POST'){

 if(!empty($data->fullname)
  && !empty($data->username) 
  && !empty($data->email)
  && !empty($data->password)
  && !empty($data->confirm_password)){

         $fullname = filter_var($data->firstname, FILTER_SANITIZE_FULL_SPECIAL_CHARS);
         $username = filter_var($data->username, FILTER_SANITIZE_FULL_SPECIAL_CHARS);
         $email = filter_var($data->email, FILTER_SANITIZE_EMAIL);
         $password = filter_var($data->password, FILTER_SANITIZE_FULL_SPECIAL_CHARS);
         $confirm_password = filter_var($data->confirm_password, FILTER_SANITIZE_FULL_SPECIAL_CHARS);
         $create_datetime = date("Y-m-d H:i:s");
         
                     if($password !== $confirm_password){
                        $response = ["status"=>"error","message"=>"Password Mis-Match"];
                        echo json_encode($response);
                        return;
                     }
                     }elseif($username>0){
                     $check_username= "SELECT * FROM user WHERE username='$username'";
                     $query=mysqli_query($con,$check_username);
                     if (mysqli_num_rows($query)>0){
                     $response = ["status"=>"error","message"=>"Username Already Exist"];
                        echo json_encode($response);
                        return;

                    }
                   }
                    elseif($email){
                     //check email
                    $check_email= "SELECT * FROM user WHERE email='$email'";
                    $query=mysqli_query($con,$check_email);
                            if (mysqli_num_rows($query)>0){
                               $response = ["status"=>"error","message"=>"Email Already exist"];
                        echo json_encode($response);
                        return;
                    }
                }
                     else{


                    $password = md5($password);

                    $sql = " INSERT INTO user (fullname,username,email,password,date)
                             VALUES ('$fullname', '$username','$email','$password','$date')";
                    $query = mysqli_query($con, $sql);

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
    // else{
    //             $response = ["status"=>"error","message"=>"Invalid request method"];
    // echo json_encode($response);
    // return;
    //}

?>