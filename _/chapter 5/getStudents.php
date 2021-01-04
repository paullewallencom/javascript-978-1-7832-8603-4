<?php

if(isset($_GET['class']) && strlen($_GET['class'])>0){
	$class_name = $_GET['class'];
}

if(isset($_GET['zip_code']) && $_GET['zip_code']>0){
	$zip_code = $_GET['zip_code'];
}

$con = mysql_connect('localhost', 'root','admin');

if(!$con){
	die('Database Connection Error');
}

mysql_select_db('students');

$where = '';

if(isset($class_name) || isset($zip_code)){

	$where = 'where ';

	if(isset($class_name) && isset($zip_code)){
		$where .= "sc.class_name like '%$class_name%' and zip_code='$zip_code'";
	}
	else if (isset($class_name)){
		$where .= "sc.class_name like '%$class_name%'";
	}
	else{
		$where .= "zip_code='$zip_code'";
	}
}

$result = mysql_query("select si.id, si.first_name, si.last_name, 
					sa.address, sa.zip_code, sc.class_name from student_info si 
					inner join student_addresses sa on si.id = sa.student_id 
					inner join student_classes sc on si.id = sc.student_id
					".$where);

$data = array();

while($row = mysql_fetch_assoc($result)){
	$data[$row['id']]['first_name'] = $row['first_name'];
	$data[$row['id']]['last_name'] = $row['last_name'];

	$data[$row['id']]['address'][] = $row['address'];
	$data[$row['id']]['zip_code'][] = $row['zip_code'];
	$data[$row['id']]['class_name'][] = $row['class_name'];
}



foreach($data as $studentId=>$student){
	foreach($student as $key => $value){
		if($key =='address' || $key=='zip_code' || $key=='class_name')
			$data[$studentId][$key] = array_values(array_unique($value)); 
	}

}

header('Content-type: application/json');
echo json_encode(array_values($data));

?>
