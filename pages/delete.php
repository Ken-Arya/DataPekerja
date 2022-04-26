<?php
function count($var) {
	static $var = 3;
	$var = $var + 4;
	return ($var);
	}
	count($temp);
	$var = 3;
	echo 'nilai akhir = ' . count(&$var);
?>