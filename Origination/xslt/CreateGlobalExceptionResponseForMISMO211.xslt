<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	 xmlns:dsig="http://www.w3.org/2000/09/xmldsig#"
	xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="dsig xs xsi xsl">

	<xsl:output method="xml" encoding="UTF-8" indent="yes" />
	<xsl:param name="StatusCode" select="'undefined'" />
	<xsl:param name="StatusName" select="'undefined'" />
	<xsl:param name="StatusDescription" select="'undefined'" />
	
	<xsl:template match="/">
<MI_RESPONSE MICompanyName="Radian Guaranty, Inc">
   <BORROWER _FirstName="" _LastName="" _SSN=""/>
	<KEY _Name="MISMOVersion" _Value="2.1.1"/>
   <KEY _Name="System" _Value="Origination"/>
   <KEY _Name="StatusCode">
		<xsl:attribute name="_Value"> 
		<xsl:value-of select="$StatusCode"/> 
		</xsl:attribute> 
		</KEY>
	<KEY _Name="StatusConditionDescription">
		<xsl:attribute name="_Value"> 
		<xsl:value-of select="'Error'"/> 
		</xsl:attribute> 
		</KEY>
		<KEY _Name="StatusDescription">
		<xsl:attribute name="_Value"> 
		<xsl:value-of select="$StatusDescription"/> 
		</xsl:attribute> 
		</KEY>
 <KEY _Name="StatusName">
		<xsl:attribute name="_Value"> 
		<xsl:value-of select="$StatusName"/> 
		</xsl:attribute> 
		</KEY>
   
</MI_RESPONSE>

	</xsl:template>
</xsl:stylesheet>
