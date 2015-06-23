<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://Radian.Services.Schemas" xmlns:ns0="http://www.radian.com/mi/RVP/RequestMessage" xmlns:xsl='http://www.w3.org/1999/XSL/Transform'  xmlns:ns1="http://www.radian.com/mi/RVP/ResponseMessage" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="1.0">
<xsl:output method="xml" encoding="UTF-8" indent="yes" />
 <xsl:param name="MISMORequest" />       

<xsl:template match="@* | node()">
        
<xsl:choose>
    <xsl:when test="local-name()='SERVICES'">
      <xsl:copy-of select="."/>
      <DOCUMENTS>
			<DOCUMENT>
				<VIEWS>
					<VIEW>
						<VIEW_FILES>
							<VIEW_FILE>
								<FOREIGN_OBJECT>
									<EmbeddedContentXML><xsl:value-of select="$MISMORequest"/></EmbeddedContentXML>
								</FOREIGN_OBJECT>
							</VIEW_FILE>
						</VIEW_FILES>
					</VIEW>
				</VIEWS>
			</DOCUMENT>
		</DOCUMENTS> 
    </xsl:when>
    <xsl:otherwise><xsl:copy>
         <xsl:apply-templates select="@* | node()"/>
      </xsl:copy></xsl:otherwise>
</xsl:choose>
     
   </xsl:template>

</xsl:stylesheet>



