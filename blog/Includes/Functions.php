<?php require_once("Includes/DB.php"); ?>
<?php
function Redirect_to($New_Location){
  header("Location:".$New_Location);
  exit;
}
function CheckUserNameExistsOrNot($UserName){
  global $ConnectingDB;
  $select_admin = "SELECT username FROM admins WHERE username=$UserName";
  $run_admin = mysqli_query($ConnectingDB,$select_admin);
  $Result = $Result = mysqli_num_rows($run_admin);
  if ($Result==1) {
    return true;
  }else {
    return false;
  }
}
function Login_Attempt($UserName,$Password){
  global $ConnectingDB;
  $select_user = "SELECT * FROM admins WHERE username='$UserName' AND password='$Password' LIMIT 1";
    
    $run_user = mysqli_query($ConnectingDB,$select_user);
    $Result = mysqli_num_rows($run_user);
  if ($Result==1) {
    return $Found_Account=mysqli_fetch_array($run_user);
  }else {
    return null;
  }
}
function Confirm_Login(){
if (isset($_SESSION["UserId"])) {
  return true;
}  else {
  $_SESSION["ErrorMessage"]="Login Required !";
  Redirect_to("Login.php");
}
}

function TotalPosts(){
  global $ConnectingDB;
  $sql = "SELECT COUNT(*) FROM posts";
  $stmt = $ConnectingDB->query($sql);
  $TotalRows= $stmt->fetch_array();
  $TotalPosts=array_shift($TotalRows);
  echo $TotalPosts;
}

function TotalCategories(){
  global $ConnectingDB;
  $sql = "SELECT COUNT(*) FROM category";
  $stmt = $ConnectingDB->query($sql);
  $TotalRows= $stmt->fetch_array();
  $TotalCategories=array_shift($TotalRows);
  echo $TotalCategories;
}

function TotalAdmins(){

  global $ConnectingDB;
  $sql = "SELECT COUNT(*) FROM admins";
  $stmt = $ConnectingDB->query($sql);
  $TotalRows= $stmt->fetch_array();
  $TotalAdmins=array_shift($TotalRows);
  echo $TotalAdmins;

}

function TotalComments(){
  global $ConnectingDB;
  $sql = "SELECT COUNT(*) FROM comments";
  $stmt = $ConnectingDB->query($sql);
  $TotalRows= $stmt->fetch_array();
  $TotalComments=array_shift($TotalRows);
  echo $TotalComments;
}

function ApproveCommentsAccordingtoPost($PostId){
  global $ConnectingDB;
  $sqlApprove = "SELECT COUNT(*) FROM comments WHERE post_id='$PostId' AND status='ON'";
  $stmtApprove =$ConnectingDB->query($sqlApprove);
  $RowsTotal = $stmtApprove->fetch_array();
  $Total = array_shift($RowsTotal);
  return $Total;
}

function DisApproveCommentsAccordingtoPost($PostId){
  global $ConnectingDB;
  $sqlDisApprove = "SELECT COUNT(*) FROM comments WHERE post_id='$PostId' AND status='OFF'";
  $stmtDisApprove =$ConnectingDB->query($sqlDisApprove);
  $RowsTotal = $stmtDisApprove->fetch_array();
  $Total = array_shift($RowsTotal);
  return $Total;
}
 ?>
