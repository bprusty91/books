<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="chapter">
        <chapter> Authors ::
           <!-- <xsl:for-each select="descendant-or-self::*/attribute::author">-->
           <!-- <xsl:for-each select="/descendant-or-self::node()/@author">-->
            <xsl:for-each select="//@author">
                <xsl:value-of select="."/><xsl:text>
                </xsl:text>
             </xsl:for-each>
             <xsl:apply-templates/>
        </chapter>
    </xsl:template>
    
</xsl:stylesheet>