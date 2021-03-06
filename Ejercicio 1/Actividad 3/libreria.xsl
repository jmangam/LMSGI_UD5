<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
    <body>
    <h1>Mi biblioteca personal de Javier Manzano</h1>
        <table>
        <tr bgcolor="#887788">
            <th>título</th>
            <th>autor</th>
            <th>precio</th>
        </tr>
        <xsl:for-each select="libreria/libro[autor='Pedro Martin Rodriguez']">
        <!-- <xsl:if test="precio &gt;10"> -->
            <xsl:if test="precio &gt;12">
        <tr>
            <td><xsl:value-of select="autor"/></td>
            <td><xsl:value-of select="titulo"/></td>
            <td><xsl:value-of select="precio"/></td>
        </tr>
        </xsl:if>
        </xsl:for-each>
    </table>
    </body>
    </html>
</xsl:template>
</xsl:stylesheet>
