<?php

define('ALLOW_ACCESS', TRUE);
include('../config.php');

/*
// Lấy chuỗi nằm giữa 2 dấu [ và ]
$subject = "f/chi-tiet/ronaldo-gianh-chiec-giay-vang-nhung-messi-se-co-qua-bong-vang/4.html";
$pattern = '/[^/\.]+/';
if (preg_match($pattern, $subject, $matches)){
   
    echo '<pre>';
    print_r($matches);
    echo '</pre>';

}
 * 
 */

 $line = "chi-tiet/ronaldo-gianh-chiec-giay-vang-nhung-messi-se-co-qua-bong-vang/4.html";
   // perform a case-Insensitive search for the word "Vi"
   
   if (preg_match("/\//i", $line, $match)) :
      print_r($match);
      endif;