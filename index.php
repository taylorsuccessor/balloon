<?php
// Version
define('VERSION', '2.3.0.2');

if(isset($_GET['session_id'])){
	ini_set("session.use_cookies",0);
	ini_set("session.use_trans_sid",1);
	session_id($_GET['session_id']);
	//die(var_dump(44));
}
// Configuration
if (is_file('config.php')) {
	require_once('config.php');
}

// Install
if (!defined('DIR_APPLICATION')) {
	header('Location: install/index.php');
	exit;
}

// Startup
require_once(DIR_SYSTEM . 'startup.php');

start('catalog');