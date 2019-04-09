<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="chapter">
        <chapter> Pictures: 
            <xsl:for-each select="descendant::figure">
                <xsl:value-of select="title"/>
                <xsl:text>
                </xsl:text>
            </xsl:for-each>
            <xsl:apply-templates/>
        </chapter>
    </xsl:template>
    <xsl:template match="node()|@*">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
        </xsl:copy>
    </xsl:template>
</xsl:stylesheet>