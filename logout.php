<?php
session_start();

if(isset($_POST['logout_btn']))
{
    session_destroy();
    unset($_SESSION['username']);
    session_destroy();
    header("location:login.php");
}
?>