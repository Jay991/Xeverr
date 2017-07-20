<?php
/*
* code to read from block chain
* by reading a single block.
*/
// api url to call
$url = "https://blockchain.info/latestblock";
// fetch the content from the url and make them as php objects.
$json = json_decode(file_get_contents($url),true);
// set the variable block to be the retrieved object height
$block_index = $json["height"];

// getting the details of a block by block id in json format
$block_url = "https://blockchain.info/block-index/$block_index?format=json";
$json_block = json_decode(file_get_contents($block_url), true);
$total_bits = $json_block["bits"];
echo "getting the total bits from a single block " .  $total_bits . "<br />";
echo "also getting more information of a single block from the json as below <br />";
echo "<pre>";
print_r($json_block);