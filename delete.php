<?php
$id=$_GET['id'];
$xml=new DOMDocument();
$xml->load('admin.xml');
$xpath=new DOMXPATH($xml);
foreach($xpath->query("/root/date[id='$id']")as $node){
    $node->parentNode->removeChild($node);
}
$xml->formatoutput=true;
$xml->save('admin.xml');
    header('location:index.php');
?>