<?php 

 ini_set('max_execution_time',300);
 date_default_timezone_set("Asia/Kolkata");
 $_SESSION["PROJECT_MODE"]='DEBUG';
 /* Logger Declaration in JSON */ 
	 include('../log4php/Logger.php'); 
	 Logger::configure('../config/log-config.xml'); 
	
 /* Database Credentials */
if($_SESSION["PROJECT_MODE"]=='DEBUG'){
 $DB_KV_SERVERNAME="localhost:3306";
 $DB_KV_NAME="kv_users";
 $DB_KV_USER="root";
 $DB_KV_PASSWORD="";
}
else {
 $DB_KV_SERVERNAME="148.66.138.151";
 $DB_KV_NAME="kalyanaveena";
 $DB_KV_USER="kalyanaveena";
 $DB_KV_PASSWORD="@ANUPanup123";
}
