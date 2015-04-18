<?xml version="1.0" encoding="ISO-8859-1"?>

<!--
TENER EN CUENTA SAKAR DE LALIBRARY LA BIBLIA DE XML
    Document   : mundial2.xsl
    Created on : 24 de marzo de 2015, 03:28 PM
    Author     : dx
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="equipos">
        <html>
            <body>
                <h1>Equipos del Mundial</h1>                
                <table border="1">
                    <tr>
                        <th bgcolor="yellow">Pais</th>
                        <th bgcolor="yellow">Grupo</th>
                        <th bgcolor="yellow">Posicion</th>
                    </tr>
                    <xsl:for-each select="equipo">
                        <tr align="center">
                            <td bgcolor="yellow">
                                <xsl:value-of select="pais"/>
                            </td>
                            <td bgcolor="yellow">
                                <xsl:value-of select="grupo"/>
                            </td>
                            <td bgcolor="yellow">
                                <xsl:value-of select="pais/@posicion"/>
                            </td>                            
                        </tr>                        
                    </xsl:for-each>                    
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
