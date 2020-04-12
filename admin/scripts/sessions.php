<?php

session_start();

function confirm_logged_in() {
// if user id exists
  if (!isset($_SESSION['user_id'])) {
    echo "Not Logged In";
  }
}

function logged_out() {
    session_destroy();
    redirect_to('../admin_login.php');
}

?>
