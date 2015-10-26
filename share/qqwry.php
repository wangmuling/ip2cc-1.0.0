<?php
$copywrite = file_get_contents("/tmp/copywrite.rar");
$allKey = unpack("V6", $copywrite);
$key = $allKey[6];

$qqwry = file_get_contents("/tmp/qqwry.rar");
for($i=0; $i<0x200; $i++){
    $key *= 0x805;
    $key ++;
    $key = $key & 0xFF;
    $qqwry[$i] = chr( ord($qqwry[$i]) ^ $key );
}
$qqwry = gzuncompress($qqwry);
$qqwry_local_path="/usr/local/share/QQIP/QQWry.Dat";
echo "open $qqwry_local_path and write in\n";
$fp = fopen("$qqwry_local_path", "wb");
if($fp){
    fwrite($fp, $qqwry);
    echo "write success and close $qqwry_local_path\n";
    fclose($fp);
}
