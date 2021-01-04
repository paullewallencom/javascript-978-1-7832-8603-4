<?php

$con = mysql_connect('localhost', 'root','admin');

if(!$con){
	die('Database Connection Error');
}

mysql_select_db('students');

$first_name = $_POST['first_name'];
$last_name = $_POST['last_name'];

$addresses = $_POST['addresses'];
$zip_codes = $_POST['zip_codes'];
$classes = $_POST['classes'];

$insert_student_sql = "insert into student_info(first_name, last_name) values('$first_name', '$last_name')";
mysql_query($insert_student_sql);

$student_id = mysql_insert_id();

foreach($addresses as $key=>$address){
	$insert_addresses_sql = "insert into student_addresses values('$student_id','$address', '$zip_codes[$key]')";
	mysql_query($insert_addresses_sql);
}

foreach($classes as $key=>$class){
	$insert_classes_sql = "insert into student_classes values('$student_id','$class')";
	mysql_query($insert_classes_sql);
}

header('Content-type: application/json');
echo json_encode(array("status"=>"success"));
?>
