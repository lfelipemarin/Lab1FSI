<?xml version="1.0" encoding="iso-8859-1"?>

<!--
    Document   : alumnos.xsl
    Created on : 24 de marzo de 2015, 02:40 PM
    Author     : lfelipe.marin
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="alumnos">
        <html>
            <head>
                <title>Informacion de Alumnos</title>
            </head>
            <body>
                <h1>Lista de alumnos</h1>
                <table border="1" style="width:100%">
                    <tr>
                        <th>Dni</th>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>Nota</th>
                        <th>Email</th>
                    </tr>
                    <xsl:apply-templates/>
                </table>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="alumno">
       
        <tr>
            <td align="center">             
                <xsl:value-of select="@dni"/>           
            </td>
            <td align="center">               
                <xsl:value-of select="nombre"/>          
            </td>
            <td align="center">
                <xsl:value-of select="apellidos"/>
            </td>
            <td align="center">
                <xsl:value-of select="nota"/>
            </td>
            <td align="center">
                <xsl:value-of select="email"/>
            </td>
        </tr>
                  
    </xsl:template>
    
</xsl:stylesheet>
