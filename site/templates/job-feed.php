<?php

// ERECRUITER
require_once("libs/Erecruiterfeed.php");
$lang = $input->urlSegment1 ? $input->urlSegment1 : "de";
$feed = new \Erecruiterfeed($lang);
echo json_encode(array_values($feed->getData()));

?>



