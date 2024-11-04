<?php
	$host ="localhost";			 //berisi ip address dari server atau bisa di isi 127.0.0.1
	$user ="root";				//username masuk MySQL dari web hosting
	$pass ="";					//password masuk MySQL dari web hosting
	$db ="db_onlineshop";		//nama database yang diakses
	
	$kon = mysqli_connect($host,$user,$pass,$db);
?>