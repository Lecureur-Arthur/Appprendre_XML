<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : bibliothequeStyle.xsl
    Created on : 16 septembre 2021, 14:58
    Author     : alecureur
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="bibliotheque">
        <html>
            <body>
                <xsl:apply-templates />
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="allee">
        <h1>Allee 
            <xsl:value-of select="@numero" />
        </h1>
        <br/>
        <hr/>
        <br/>
        <xsl:apply-templates />
        
        
    </xsl:template>
    
    <xsl:template match="rayon">
        <br/>
        <span style="font-weight: bold;">Rayon
            <xsl:value-of select="@numero" />
        </span>
        <br/>
        <br/>
        
        <table border="1" style="border-collapse: collapse">
            <tr>
                <th style="font-weight: bold;">Categorie de l'ouvrage</th>
                <th style="font-weight: bold;">Titre</th>
                <th style="font-weight: bold;">Auteur</th>
                <th style="font-weight: bold;">Numero</th>
            </tr>
            
            <xsl:apply-templates />
        </table>
    </xsl:template>
    
    <xsl:template match="ouvrage">
        <tr>
            <xsl:apply-templates />        
            <td style="background-color: #FFCCCC">
                <xsl:value-of select="@titre" />
            </td>
            <xsl:choose>
                <xsl:when test="@auteur">
                    <td style="background-color: #CCFFCC">
                        <xsl:value-of select="@auteur" />
                    </td>
                </xsl:when>
                <xsl:otherwise>
                    <td style="background-color:black;">
                    </td>
                </xsl:otherwise>
            </xsl:choose>
            <xsl:choose>
                <xsl:when test="@numero">
                    <td style="background-color: #CCCCFF">
                        <xsl:value-of select="@numero" />
                    </td>
                </xsl:when>                
                <xsl:otherwise>
                    <td style="background-color:black;">
                    </td>                        
                </xsl:otherwise>
            </xsl:choose>
        </tr>
                
    </xsl:template> 
    
    <xsl:template match="types">
        <td>
            <xsl:value-of select="@typesOuvrage" />
        </td>
                
    </xsl:template>
</xsl:stylesheet>
