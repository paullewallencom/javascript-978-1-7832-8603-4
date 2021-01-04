<?php

	$students = array(
			array(
					"studentid" => "101",
					"firstname" => "John",
					"lastname"  => "Doe",
					"classes"	=> array("Business Research", "Economics", "Finance")
				),
			array(
					"studentid" => "101",
					"firstname" => "Jane",
					"lastname"  => "Dane",
					"classes"	=> array("Marketing", "Economics", "Finance")
				)
	);
		
  header('Content-Type: application/json');
	echo json_encode($students);

?>
