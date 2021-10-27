<?php

$ch = curl_init();
curl_setopt_array($ch, [CURLOPT_RETURNTRANSFER => 1,CURLOPT_URL => "https://api.publicapis.org/entries"]);
$result = curl_exec($ch);
$obj = json_decode($result, true);
asort($obj["entries"]);

$enteredCategory = "Calendar";
$limit = 5;
$printLimit = 0;
foreach ($obj["entries"] as $value) {
	if($value["Category"] == $enteredCategory){
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