<?xml version="1.0" encoding="iso-8859-1"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Mis Libros</title>
            </head>
            <body>
                <h1>Mis Libros</h1>
                <table border="1" style="width:100%">
                    <tr bgcolor="lightblue">
                        <th>Titulo</th>
                        <th>Autor</th>
                        <th>ISBN</th>
                        <th>Año de Publicacion</th>
                    </tr>
                    <xsl:apply-templates/>
                </table>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="libro">
       
            <tr>
                <td align="center">             
                    <xsl:value-of select="titulo"/>           
                </td>
                <td align="center">               
                    <xsl:value-of select="autor"/>          
                </td>
                <td align="center">
                    <xsl:value-of select="isbn"/>
                </td>
                <td align="center">
                    <xsl:value-of select="añopublicacion"/>
                </td>
            </tr>
                  
    </xsl:template>
    
</xsl:stylesheet>
