<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	 xmlns:dsig="http://www.w3.org/2000/09/xmldsig#"
	xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="dsig xs xsi xsl">

	<xsl:output method="xml" encoding="UTF-8" indent="yes" />

	<xsl:param name="MISMOVersion" select="'undefined'" />
	<xsl:param name="VENDORID" select="'undefined'" />
	<xsl:param name="StatusCode" select="'undefined'" />
	<xsl:param name="StatusName" select="'undefined'" />
	<xsl:param name="StatusDescription" select="'undefined'" />
	<xsl:param name="DateTime" select="'undefined'" />
	
	<xsl:template match="/">
	<OriginationRequest>
	<xsl:choose>
	<xsl:when test="$MISMOVersion='MISMO321'">
		<MESSAGE xmlns:xlink="http://www.mismo.org/residential/2009/schemas" MISMOReferenceModelIdentifier="3.2">
<DEAL_SETS>
<DEAL_SET>
<DEALS>
<DEAL>
<SERVICES>
<SERVICE>
<STATUSES>
<STATUS>
<xsl:choose>
	<xsl:when test="$VENDORID='EC'">
		<StatusCode>3</StatusCode>
		<StatusConditionDescription>ERROR</StatusConditionDescription>
		<StatusDescription>System not Available</StatusDescription>		
		<StatusName>COMMUNICATION</StatusName>
	</xsl:when>
	<xsl:when test="$VENDORID!='EC'">
		<StatusCode>6001</StatusCode>
		<StatusConditionDescription>Error</StatusConditionDescription>
		<StatusDescription>System not Available</StatusDescription>		
		<StatusName>COMMUNICATION</StatusName>
	</xsl:when>
	</xsl:choose>
	</STATUS>
</STATUSES>
</SERVICE>
</SERVICES>
</DEAL>
</DEALS>
</DEAL_SET>
</DEAL_SETS>
</MESSAGE>
</xsl:when>
<xsl:when test="$MISMOVersion='MISMO231'">
		<RESPONSE_GROUP>
	<xsl:attribute name="MISMOVersionID">2.3.1</xsl:attribute>
	<RESPONDING_PARTY>
		<xsl:attribute name="_Name">Radian</xsl:attribute>
		<xsl:attribute name="_StreetAddress">1601 Market St.</xsl:attribute>
		<xsl:attribute name="_City">Philadelphia</xsl:attribute>
		<xsl:attribute name="_State">PA</xsl:attribute>
		<xsl:attribute name="_PostalCode">19103</xsl:attribute>
		<xsl:attribute name="_Identifier">16698765</xsl:attribute>
	</RESPONDING_PARTY>
	<RESPONSE>
		<xsl:attribute name="ResponseDateTime"><xsl:value-of select="$DateTime"/></xsl:attribute>
		<KEY _Name="System">
		<xsl:attribute name="_Value"> 
		<xsl:value-of select="'Origination'"/> 
		</xsl:attribute> 
		</KEY>
		<KEY _Name="MIChannel">
		<xsl:attribute name="_Value">
		<xsl:value-of select="'GENB2B'"/>
		</xsl:attribute>
		</KEY>
		<RESPONSE_DATA/>
		<STATUS>
		<xsl:choose>
			<xsl:when test="$VENDORID='EC'">
							<xsl:attribute name="_Condition">ERROR</xsl:attribute>
							<xsl:attribute name="_Code">3</xsl:attribute>
							<xsl:attribute name="_Name">COMMUNICATION</xsl:attribute>
							<xsl:attribute name="_Description">System not Available</xsl:attribute>
			</xsl:when>
			<xsl:when test="$VENDORID!='EC'">
							<xsl:attribute name="_Condition">Error</xsl:attribute>
							<xsl:attribute name="_Code">6001</xsl:attribute>
							<xsl:attribute name="_Name">COMMUNICATION</xsl:attribute>
							<xsl:attribute name="_Description">System not Available</xsl:attribute>
			</xsl:when>
			</xsl:choose>
				</STATUS>
			</RESPONSE>
		</RESPONSE_GROUP>
		</xsl:when>
		<xsl:when test="$MISMOVersion!='MISMO231' or $MISMOVersion!='MISMO321'">
		<RESPONSE_GROUP>
	<xsl:attribute name="MISMOVersionID">2.3.1</xsl:attribute>
	<RESPONDING_PARTY>
		<xsl:attribute name="_Name">Radian</xsl:attribute>
		<xsl:attribute name="_StreetAddress">1601 Market St.</xsl:attribute>
		<xsl:attribute name="_City">Philadelphia</xsl:attribute>
		<xsl:attribute name="_State">PA</xsl:attribute>
		<xsl:attribute name="_PostalCode">19103</xsl:attribute>
		<xsl:attribute name="_Identifier">16698765</xsl:attribute>
	</RESPONDING_PARTY>
	<RESPONSE>
		<xsl:attribute name="ResponseDateTime"><xsl:value-of select="$DateTime"/></xsl:attribute>
		<KEY _Name="System">
		<xsl:attribute name="_Value"> 
		<xsl:value-of select="'Origination'"/> 
		</xsl:attribute> 
		</KEY>
		<KEY _Name="MIChannel">
		<xsl:attribute name="_Value">
		<xsl:value-of select="'GENB2B'"/>
		</xsl:attribute>
		</KEY>
		<RESPONSE_DATA/>
		<STATUS>
							<xsl:attribute name="_Condition">Error</xsl:attribute>
							<xsl:attribute name="_Code">3</xsl:attribute>
							<xsl:attribute name="_Name">COMMUNICATION</xsl:attribute>
							<xsl:attribute name="_Description">System not Available</xsl:attribute>
				</STATUS>
			</RESPONSE>
		</RESPONSE_GROUP>
		</xsl:when>
		</xsl:choose>
		</OriginationRequest>
	</xsl:template>
</xsl:stylesheet>