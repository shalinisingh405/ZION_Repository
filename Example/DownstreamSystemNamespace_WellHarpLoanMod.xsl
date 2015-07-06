<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:esb="http://Radian.Services.Schemas" xmlns="http://Radian.Operations.MortgageIns.Common.MISMOSchemas.APP_MORTGAGE_INSURANCE_APPLICATION_REQUEST_v2_3_1">
    <xsl:template match="/">
        <p:SOAPProperties xsi:schemaLocation="http://www.radian.biz/ClientConnectivity/zion/Origination/SOAPProperties SOAPProperties.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:SOAP="http://schemas.xmlsoap.org/soap/envelope/" xmlns:p="http://www.radian.biz/ClientConnectivity/zion/Origination/SOAPProperties" xmlns:ns="http://schemas.radian.biz/esb/soapheader">
            <p:SOAPEndpoint Level="0">
                <p:SOAPVersion>SOAP1.1</p:SOAPVersion>
                <p:SOAPActionType>SOAPAction</p:SOAPActionType>
                <p:SOAPAction>"ModifyWellsLoan"</p:SOAPAction>
                <p:SOAPContentType>text/xml;charset=UTF-8</p:SOAPContentType>
                <p:SOAPEndpointURL></p:SOAPEndpointURL>
            </p:SOAPEndpoint>
            <p:SOAPResponse Level="0">
                <SOAP:Envelope>
                    <SOAP:Header>
                        <ns:Header></ns:Header>
                    </SOAP:Header>
                    <SOAP:Body>
                        <xsl:apply-templates/> 
                    </SOAP:Body>
                </SOAP:Envelope>
            </p:SOAPResponse>
        </p:SOAPProperties>
    </xsl:template>
    
                    <xsl:template match="*">
                                <xsl:element name="{local-name()}">
                                                <xsl:apply-templates select="@*|node()"/>
                                </xsl:element>
                </xsl:template>
                
                <xsl:template match="@*">
                                <xsl:copy-of select="." />
                </xsl:template>
    
    
</xsl:stylesheet>

