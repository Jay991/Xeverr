<?php
/*
* code to read from block chain
* by reading the latest block and getting the height properly.
*/
// api url to call
$url = "https://blockchain.info/latestblock";
// fetch the content from the url and make them as php objects.
$json = json_decode(file_get_contents($url),true);
// set the variable block to be the retrieved object height
$block = $json["height"];
echo "the latest block number is ";
echo $block ."<br/>";
echo "now showing all properties that can be use from the latestblock api";
echo "<pre>";
print_r($json);