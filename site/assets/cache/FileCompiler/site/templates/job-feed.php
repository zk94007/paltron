<?php

// ERECRUITER
 require_once(\ProcessWire\wire('files')->compile("libs/Erecruiterfeed.php",array('includes'=>true,'namespace'=>true,'modules'=>true,'skipIfNamespace'=>true)));
$lang = $input->urlSegment1 ? $input->urlSegment1 : "de";
$feed = new \Erecruiterfeed($lang);
echo json_encode(array_values($feed->getData()));

?>



