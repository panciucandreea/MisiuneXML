<?php
$id=$_POST['id'];
$nume=$_POST['image_name'];
$image='./PHP IMAGINI/'.basename($_FILES['image']['name']);
$batalii=$_POST['Batalii'];






$xml= simplexml_load_file('admin.xml');

$date=$xml->addChild('date');

$date->addChild('id',$id);
$date->addChild('Nume',$nume);
$date->addChild('Batalii',$batalii);
$date->addChild('Imagine',$image);




$date->addChild('view','view.php?id='.$id);
$date->addChild('edit','edit.php?id='.$id);
$date->addChild('delete','delete.php?id='.$id);
$date->addChild('confirm','return confirm("Are you sure you want to delete this item?")');
$date->addChild('back','index.php');
file_put_contents('admin.xml', $xml->asXML());
header('location:index.php');
?>