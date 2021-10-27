<?php

$ch = curl_init();
curl_setopt_array($ch, [CURLOPT_RETURNTRANSFER => 1,CURLOPT_URL => "https://api.publicapis.org/entries"]);
$result = curl_exec($ch);
$obj = json_decode($result, true);
asort($obj["entries"]);

unset($argv[0]);
$category = $argv[1];
$limit = $argv[2];
$printLimit = 0;

foreach ($obj["entries"] as $value) {
	if($value["Category"] == $category){
	    echo '<pre>', print_r(reset($value));
		$printLimit++;
		if($printLimit == $limit){
			break;
		}
    }
}
if($printLimit == 0){
	echo "No results";
}