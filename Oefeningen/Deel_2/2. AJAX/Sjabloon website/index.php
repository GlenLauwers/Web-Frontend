<?php

  header("Content-Type: application/json");

  $var1 = $_POST['var1'];

  $var2 = $_POST['var2'];


  $jsonObj = '{ "obj1" : { "eigenschapA" : "'.$var1.'" , "eigenschapB" : "'.$var2.'"} }';

  echo $jsonObj;

?>
