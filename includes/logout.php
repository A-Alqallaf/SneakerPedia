<?php

session_start();
session_unset();
session_destroy();

heaeder("Location: ../about.php");
exit();
?>