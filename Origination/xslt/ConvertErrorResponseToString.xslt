<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output  method="xml"  omit-xml-declaration="yes"/>
        <xsl:template match="OriginationRequest"><OriginationRequest>&lt;?xml version="1.0" encoding="utf-8"?&gt;<xsl:apply-templates/></OriginationRequest>
        </xsl:template>
         <xsl:template match="*">
      <xsl:value-of select="concat('&lt;',name())"/>
      <xsl:apply-templates select="@*"/>
      <xsl:text>&gt;</xsl:text>
      <xsl:apply-templates select="node()"/>
      <xsl:value-of select="concat('&lt;/',name(), '>')"/>
   </xsl:template>

   <xsl:template match="@*">
      <xsl:value-of select="concat(' ', name(),'=','&quot;', ., '&quot;')"/>
   </xsl:template>

   <xsl:template match="text()">
      <xsl:call-template name="wrap">
         <xsl:with-param name="str">
            <xsl:call-template name="wrap">
               <xsl:with-param name="str" select="."/>
               <xsl:with-param name="find" select="'&lt;'"/>
            </xsl:call-template>
         </xsl:with-param>
         <xsl:with-param name="find" select="'&gt;'"/>
      </xsl:call-template>
   </xsl:template>

   <xsl:template name="wrap">
      <xsl:param name="str"/>
      <xsl:param name="find"/>
      <xsl:choose>
         <xsl:when test="contains($str, $find)">
            <xsl:variable name="before" select="substring-before($str, $find)"/>
            <xsl:variable name="after" select="substring-after($str, $find)"/>
            <xsl:value-of select="concat($before, '&quot;', $find, '&quot;')"/>
            <xsl:call-template name="wrap">
               <xsl:with-param name="str" select="$after"/>
               <xsl:with-param name="find" select="$find"/>
            </xsl:call-template>
         </xsl:when>
         <xsl:otherwise>
            <xsl:value-of select="$str"/>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
</xsl:stylesheet>