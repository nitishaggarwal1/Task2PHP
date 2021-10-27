<?php

$ch = curl_init();
curl_setopt_array($ch, [CURLOPT_RETURNTRANSFER => 1,CURLOPT_URL => "https://api.publicapis.org/entries"]);
$result = curl_exec($ch);
$obj = json_decode($result, true);
$entries = json_encode($obj["entries"]);


foreach (json_decode($entries, true) as $value) {
  echo '<pre>', print_r(reset($value));
}