<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : view.xsl
    Created on : May 13, 2019, 8:27 AM
    Author     : olari
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:param name="id"/>
    

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html>
            <head>
                <title>View a item</title>

  
            </head>
            <body>
           
                 <table border="1">
                    <tr bgcolor="red">
                        <th style="width:100px">Nume</th>
                        <th style="width:100px">Batalii</th>
                        
                        <th style="width:100px">Imagine</th>
                    </tr>
                    <xsl:for-each select="root/date[id=$id]">
                        <tr>
                            <td style="width:100px"><xsl:value-of select="Nume"/></td>
                            <td style="width:100px"><xsl:value-of select="Batalii"/></td>
                            
                            <td style="width:100px"><img><xsl:attribute name="src"><xsl:value-of select="Imagine"/></xsl:attribute> <xsl:attribute name="height">
                 100
              </xsl:attribute >
              <xsl:attribute name="width">
                 100
              </xsl:attribute ></img></td>
                            
                        </tr>
                        </xsl:for-each>
                 </table>
                 <xsl:element name="a">
                     <xsl:attribute name="href">
                         <xsl:value-of select="root/date/back"/>
                     </xsl:attribute>
                     <span>Back</span>
                 </xsl:element>
                 

            </body>
        </html>
    </xsl:template>
    <xsl:template match="date|date">
<xsl:element name="img">
            <xsl:attribute name="src">
                <xsl:value-of select="Imagine"/>
            </xsl:attribute>
</xsl:element>
    </xsl:template>
</xsl:stylesheet>
