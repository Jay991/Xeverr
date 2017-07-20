<?php
/*
* code to read from block chain
* by reading a a miner address that found the latest block.
*/
// api url to call
$url = "https://blockchain.info/latestblock";
// fetch the content from the url and make them as php objects.
$json = json_decode(file_get_contents($url),true);
// set the variable block to be the retrieved object height
$block_index = $json["height"];

// Get the address of the miner who discovered the last block
$block_url = "https://blockchain.info/block-index/$block_index?format=json";
$json_block = json_decode(file_get_contents($block_url), true);
$miner_address = $json_block["tx"][0]["out"][0]["addr"];
echo $miner_address;