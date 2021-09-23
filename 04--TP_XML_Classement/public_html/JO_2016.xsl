<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : JO_2016.xsl
    Created on : 23 septembre 2021, 15:16
    Author     : alecureur
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    
    <xsl:template match="tableau">
        <html>
            <head>
                <link href="style.css" rel="stylesheet" type="text/css"/>
            </head>
            <body>
                <table border="1" style="border-collapse : collapse">
                    <tr>
                        <th>Pays</th>
                        <th>OR</th>
                        <th>Argent</th>
                        <th>Bronze</th>
                    </tr>
                    <xsl:apply-templates />
                </table>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="ligne">
        <tr>
            <xsl:apply-templates />
            
        </tr>
    </xsl:template>
    
    <xsl:template match="pays">
        <!--
        <td>
            <xsl:value-of select="@nomPays" />
        </td>
                -->
        <xsl:choose>
            <xsl:when test="@nomPays = 'USA'">
                <td id="USA"><xsl:value-of select="@nomPays" /></td>
            </xsl:when>
            <xsl:when test="@nomPays = 'GrandeBretagne'">
                <td id="GrandeBretagne"><xsl:value-of select="@nomPays" /></td>
            </xsl:when>
            <xsl:when test="@nomPays = 'Chine'">
                <td id="Chine"><xsl:value-of select="@nomPays" /></td>
            </xsl:when>
            <xsl:when test="@nomPays = 'Russie'">
                <td id="Russie"><xsl:value-of select="@nomPays" /></td>
            </xsl:when>
            <xsl:when test="@nomPays = 'Allemagne'">
                <td id="Allemagne"><xsl:value-of select="@nomPays" /></td>
            </xsl:when>
            <xsl:when test="@nomPays = 'Japon'">
                <td id="Japon"><xsl:value-of select="@nomPays" /></td>
            </xsl:when>
            <xsl:when test="@nomPays = 'France'">
                <td id="France"><xsl:value-of select="@nomPays" /></td>
            </xsl:when>
            <xsl:when test="@nomPays = 'CoreeDuSud'">
                <td id="CoreeDuSud"><xsl:value-of select="@nomPays" /></td>
            </xsl:when>
            <xsl:when test="@nomPays = 'Italie'">
                <td id="Italie"><xsl:value-of select="@nomPays" /></td>
            </xsl:when>
            <xsl:when test="@nomPays = 'Australie'">
                <td id="Australie"><xsl:value-of select="@nomPays" /></td>
            </xsl:when>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template match="medaille">
        <!--
        <td>
            <xsl:value-of select="." />
        </td>
                -->
        <xsl:choose>
            <xsl:when test="@typeMedaille = 'Or'">
                <td id="OR">
                    <xsl:value-of select="." />
                </td>
            </xsl:when>
            <xsl:when test="@typeMedaille = 'Argent'">
                <td id="ARGENT">
                    <xsl:value-of select="." />
                </td>
            </xsl:when>
            <xsl:when test="@typeMedaille = 'Bronze'">
                <td id="BRONZE">
                    <xsl:value-of select="." />
                </td>
            </xsl:when>
        </xsl:choose>
    </xsl:template>

</xsl:stylesheet>
