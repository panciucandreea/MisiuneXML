<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : admin.xsl
    Created on : May 16, 2019, 4:08 PM
    Author     : olari
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Admin</title>
                

 
            </head>
            <body>
    
    
    <br/><br/> 
   
                <table rules="rows">
                    <tr >
                        <th style="width:100px">Nume</th>
                        <th style="width:100px">Batalii</th>
                        
                        <th style="width:100px">Imagine</th>
                         <th style="width:200px" colspan="3" align="center">Actions</th> 
                    </tr>
                    <xsl:for-each select="root/date">
                        <tr>
                            <td style="width:100px"><xsl:value-of select="Nume"/></td>
                            <td style="width:100px"><xsl:value-of select="Batalii"/></td>
                            
                            <td style="width:100px"><img><xsl:attribute name="src"><xsl:value-of select="Imagine"/></xsl:attribute> <xsl:attribute name="height">
                 100
              </xsl:attribute >
              <xsl:attribute name="width">
                 100
              </xsl:attribute ></img></td>
                           <td style="width:100px">
                                <xsl:element name="a">
                                <xsl:attribute name="href">
                                    <xsl:value-of select="view"/>
                                </xsl:attribute>
                                <span>View</span>
                                </xsl:element>
</td>
<td style="width:100px">
                                <xsl:element name="a">
                                <xsl:attribute name="href">
                                    <xsl:value-of select="edit"/>
                                </xsl:attribute>
                                <span>Edit</span>
                                </xsl:element>
</td>
 <td style="width:100px">
                                <xsl:element name="a">
                                <xsl:attribute name="href">
                                    <xsl:value-of select="delete"/>
                                </xsl:attribute>
                                <xsl:attribute name="onclick">
                                    <xsl:value-of select="confirm"/>
                                </xsl:attribute>
                                <span>Delete</span>
                                </xsl:element>
</td> 
</tr>
                        </xsl:for-each>
                </table><br/>
              

            </body>
        </html>
    </xsl:template>
    
    
</xsl:stylesheet>
