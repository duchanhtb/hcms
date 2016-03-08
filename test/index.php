<?php

define('ALLOW_ACCESS', TRUE);
include('config.php');

for($i=0,$j=50; $i<100; $i++) {
  while($j--) {
    if($j==17) goto end; 
  }  
}
echo "i = $i";
end:
echo 'j hit 17';


die;
$file = fopen('link.txt', 'w');
for($i = 12; $i <= 30; $i ++) {
    $tap = ($i < 10 ) ? "0".$i : $i;
    $link = 'ffmpeg -i "http://vod.cdn.fptplay.net/ovod/_definst_/mp4:mp4/fplay/720p/tvseries/CauHoiSo5/Cau_Hoi_So_5_HD_VN_V2_Tap'.$tap.'.mp4/playlist.m3u8?token=eyJoYXNoX3ZhbHVlIjogIjgwM2Q0NDMzZDQ0YWY3M2Q0NmQwNDA2Mjc4MmEyYmM4IiwgInZpZGVvX2lkIjogIjU1Y2JmZmNkMTdkYzEzNDRkNDAxMzJhYyIsICJzZXJ2ZXJfdGltZSI6IDE0NTQwMzU3NDQsICJ2YWxpZF9taW51dGVzIjogNzIwfQ" tap_'.$tap.'.mp4';
    fwrite($file, $link . "\n");
}
fclose($file);
echo "done";