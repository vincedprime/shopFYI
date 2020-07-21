<?php 

    session_start();
    include("includes/db.php");

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>shopify</title>
    <link rel="stylesheet" href="css/bootstrap-337.min.css">
    <link rel="stylesheet" href="font-awsome/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/login.css">
</head>
<body>
   
   <div class="container"><!-- container begin -->
       <form action="" class="form-login" method="post"><!-- form-login begin -->
           <h2 class="form-login-heading"> Seller Register </h2>
           
           <input type="text" class="form-control" placeholder="Email Address" name="seller_email" required>
           
           <input type="text" class="form-control" placeholder="Name" name="seller_name" required>
           
           <input type="password" class="form-control" placeholder="Your Password" name="seller_pass" required>
           
           <input type="text" class="form-control" placeholder="Confirm Password" name="confirm_pass" required>
           
           <input type="text" class="form-control" placeholder="Country" name="seller_country" required>
           
           <input type="text" class="form-control" placeholder="About" name="seller_about" required>
           
           <input type="text" class="form-control" placeholder="Contact" name="seller_contact" required>
           
           <input type="text" class="form-control" placeholder="Job" name="seller_job" required>
           
           <button type="submit" class="btn btn-lg btn-primary btn-block" name="seller_register"><!-- btn btn-lg btn-primary btn-block begin -->
               
               Register
               
           </button><!-- btn btn-lg btn-primary btn-block finish -->
           
           <a href="login.php">
         
         <h3> Already Have an Account..? Login Here </h3>
         
         </a> 
       </form><!-- form-login finish -->
       
       
   </div><!-- container finish -->
    
</body>
</html>




<?php 

        
    if(isset($_POST['seller_register'])){
        
        $seller_email = $_POST['seller_email'];

        $seller_name = $_POST['seller_name'];

        $seller_pass = $_POST['seller_pass'];

        $confirm_pass = $_POST['confirm_pass'];

        $seller_country = $_POST['seller_country'];

        $seller_about = $_POST['seller_about'];

        $seller_contact = $_POST['seller_contact'];

        $seller_job = $_POST['seller_job'];
        
        if($seller_pass!=$confirm_pass){
        echo "<script>alert('Password not Matched!')</script>";
            
        echo "<script>window.open('register.php','_self')</script>";
        }
        else{
        
        $insert_seller = "INSERT INTO sellers (seller_email,seller_name,seller_pass,seller_country,seller_about,seller_contact,seller_job) VALUES ('$seller_email','$seller_name','$seller_pass','$seller_country','$seller_about','$seller_contact','$seller_job')";
        
        $run_seller = mysqli_query($con,$insert_seller);
        
        if($run_seller){
            
            echo "<script>alert('Registered Successfully...Please Login')</script>";
            
            echo "<script>window.open('login.php','_self')</script>";
            
        }
        }
        
    }

?>