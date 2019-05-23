<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
    </head>
    <body>
        <?php
        $xslDoc=new DOMDocument();
        $xslDoc->load("admin.xsl");
        $xmlDoc=new DOMDocument();
        $xmlDoc->load("admin.xml");
        
        $proc=new XSLTProcessor();
        $proc->importStylesheet($xslDoc);
        echo $proc->transformToXml($xmlDoc);
        ?>
        <a href="upload.php">Add a new record</a>
    </body>
</html>
