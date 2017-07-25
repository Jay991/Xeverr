<?php
/*
* code to read from block chain
* by reading a miner address that found the latest block.
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

// Get the total amount received by that address
$addr_url = "https://blockchain.info/address/$miner_address?format=json";
$json_addr = json_decode(file_get_contents($addr_url), true);
$tot_rec = $json_addr["total_received"];

// Convert to bitcoins
$tot_rec_con = $tot_rec / 100000000;
// format the number and give it 8 decimal places
echo "the amount received as a money transaction but without knowing the money type if $ or LL. etc. is " . $tot_rec . "<br/>";
echo "the amount received converted to bitcoins so divided by 100000000 is " . $tot_rec_con  . "<br/>";
echo "the good formated number of bitcoin that is friendly to read is " . number_format($tot_rec_con, 8);