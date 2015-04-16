<?xml version='1.0' encoding="ISO8859-1" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Formateando con XSLT</title>
                <style>BODY,TD{font-family:verdana;font-size:10px}</style>
            </head>
            <body>
                <table cellspacing="0" cellpadding="10" align="center" width="300">
                    <xsl:for-each select="CONCESIONARIO/AUTO" order-by="+MODELO">
                        <tr>
                            <td bgcolor="cyan" valign="top">
                                <!--aqui va la imagen-->
                                <IMG WIDTH="425" HEIGHT="242">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="IMAGEN"/>
                                    </xsl:attribute>
                                </IMG>
                                <!--fin de la imagen-->
                            </td>
                            <td bgcolor="red" valign="top">
                                <!--aqui va el enlace-->
                                <P>
                                    <B>
                                        <FONT SIZE="2">
                                            <a>
                                                <xsl:attribute name="href">
                                                    <xsl:value-of select="URL"/>
                                                </xsl:attribute>
                                                <xsl:attribute name="title">Pulsa para ver la pagina para mas detalles <xsl:value-of select="MODELO"/></xsl:attribute>
                                                <xsl:value-of select="MODELO"/>
                                            </a>
                                        </FONT>
                                    </B><!--fin del enlace-->
                                </P>
                                <P><b>Tipo de carro
                                    <xsl:value-of select="TIPO"/></b>
                                </P>
                                <P><b>Cilindraje 
                                    <xsl:value-of select="CILINDRAJE"/></b>
                                </P>
                                <P><b>Numero de Cilindros
                                    <xsl:value-of select="NUMEROCILINDROS"/></b>
                                </P>
                                <P><b>Numero de valvulas
                                    <xsl:value-of select="NUMEROVALVULAS"/></b>
                                </P>
                                <P><b>Transmision
                                    <xsl:value-of select="TRANSMISION"/></b>
                                </P>
                                <P><b>Precio $
                                    <xsl:value-of select="PRECIO"/></b>
                                </P>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
