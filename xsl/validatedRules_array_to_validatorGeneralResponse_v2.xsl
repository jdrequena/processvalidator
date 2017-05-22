<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xtcpg="http://xmlns.tigo.com/ProcessValidator/GetValidationRequest" xmlns:ns17="http://xmlns.tigo.com/ProductSchema/V1" xmlns:ns4="http://xmlns.tigo.com/ProcessValidator/ValidatorFaultResponse" xmlns:tns="http://xmlns.tigo.com/ProcessValidator/Validate" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns10="http://xmlns.tigo.com/ProcessValidator/StepSchema/V1" xmlns:ns19="http://xmlns.tigo.com/ProcessValidator/BillingAccountSchema/V1" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns2="http://tigo.com/enterprise/business/entities/validate/v1/schema" xmlns:ns1="http://tigo.com/enterprise/business/entities/rulesDataContainer/v1/schema" xmlns:ns20="http://xmlns.tigo.com/ClientSchema/V1" xmlns:ns0="http://xmlns.tigo.com/AdditionalSchema/V1" xmlns:ns16="http://xmlns.tigo.com/ProcessValidator/ServiceAccountSchema/V1" xmlns:ns6="http://xmlns.tigo.com/ParameterType/V2" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:ns7="http://xmlns.tigo.com/ResponseHeader/V3" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:ns8="http://xmlns.tigo.com/ProcessValidator/StatusSchema/V1" xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns13="http://xmlns.tigo.com/ProcessValidator/RoleSchema/V1" xmlns:ns14="http:/xmlns.tigo.com/ProcessValidator/ProcessDetailsSchema/V1" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:ns18="http://xmlns.tigo.com/RequestHeader/V3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ns3="http://tigo.com/enterprise/resources/GeneralResponse/v1/schema" xmlns:ns9="http://tigo.com/enterprise/resources/parameters/simple/v1/schema" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:xpc="http:/xmlns.tigo.com/ProcessValidator/ConfirmValidationRequest" xmlns:ns5="http://xmlns.tigo.com/ProcessValidator/ValidatorGeneralResponse" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:ns11="http://tigo.com/rules/v1/schema" xmlns:ns12="http://tigo.com/entities/v1/schema" xmlns:xtcpx="http://xmlns.tigo.com/ProcessValidator/ValidateConditionalRequest" xmlns:bpmn="http://schemas.oracle.com/bpm/xpath" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" xmlns:ns15="http://xmlns.tigo.com/ProcessValidator/RuleSchema/V1" exclude-result-prefixes="xsl xsi ns4 tns ns10 ns2 ns1 ns0 ns6 ns7 ns8 plnk xsd ns13 ns14 bpel ns3 ns9 wsdl ns5 ns11 ns12 ns15 xtcpg ns17 ns19 ns20 ns16 ns18 soap12 soap mime xpc xtcpx bpm ora socket mhdr dvm xdk bpws xp20 bpel oraext hwf med ids xref bpmn ldap">
   <xsl:template match="/">
      <ns5:ValidatorGeneralResponse>
         <ns5:responseBody>
            <ns5:token>
               <xsl:text disable-output-escaping="no">4</xsl:text>
            </ns5:token>
            <ns5:processRules>
               <xsl:for-each select="/ns2:validatedRules_array/ns2:validatedRule">
                  <ns15:rule>
                     <ns15:ruleID>
                        <xsl:value-of select="ruleID"/>
                     </ns15:ruleID>
                     <ns15:description>
                        <xsl:value-of select="ruleID"/>
                     </ns15:description>
                     <ns8:status>
                        <ns8:status>
                           <xsl:value-of select="status"/>
                        </ns8:status>
                        <ns8:statusDetails>
                           <xsl:value-of select="comments"/>
                        </ns8:statusDetails>
                     </ns8:status>
                  </ns15:rule>
               </xsl:for-each>
            </ns5:processRules>
            <ns5:result>
               <xsl:choose>
                  <xsl:when test="/ns2:validatedRules_array/ns2:validatedRule[status = &quot;ERROR&quot;]">
                     <ns8:status>
                        <ns8:status>
                           <xsl:text disable-output-escaping="no">REJECT</xsl:text>
                        </ns8:status>
                        <ns8:statusDetails>
                           <xsl:text disable-output-escaping="no">Status ERROR</xsl:text>
                        </ns8:statusDetails>
                     </ns8:status>
                  </xsl:when>
                  <xsl:when test="/ns2:validatedRules_array/ns2:validatedRule[status = &quot;FATAL&quot;]">
                     <ns8:status>
                        <ns8:status>
                           <xsl:text disable-output-escaping="no">REJECT</xsl:text>
                        </ns8:status>
                        <ns8:statusDetails>
                           <xsl:text disable-output-escaping="no">Status FATAL</xsl:text>
                        </ns8:statusDetails>
                     </ns8:status>
                  </xsl:when>
                  <xsl:when test="/ns2:validatedRules_array/ns2:validatedRule[status = &quot;WARNING&quot;]">
                     <ns8:status>
                        <ns8:status>
                           <xsl:text disable-output-escaping="no">WARNING</xsl:text>
                        </ns8:status>
                        <ns8:statusDetails>
                           <xsl:text disable-output-escaping="no">Status WARNING</xsl:text>
                        </ns8:statusDetails>
                     </ns8:status>
                  </xsl:when>
                  <xsl:when test="/ns2:validatedRules_array/ns2:validatedRule[status = &quot;OK&quot;]">
                     <ns8:status>
                        <ns8:status>
                           <xsl:text disable-output-escaping="no">APPROVED</xsl:text>
                        </ns8:status>
                        <ns8:statusDetails>
                           <xsl:text disable-output-escaping="no">Status OK</xsl:text>
                        </ns8:statusDetails>
                     </ns8:status>
                  </xsl:when>
                  <xsl:otherwise>
                     <ns8:status>
                        <ns8:status>
                           <xsl:text disable-output-escaping="no">APPROVED</xsl:text>
                        </ns8:status>
                        <ns8:statusDetails>
                           <xsl:text disable-output-escaping="no">Status OK</xsl:text>
                        </ns8:statusDetails>
                     </ns8:status>
                  </xsl:otherwise>
               </xsl:choose>
               <ns5:expirationDate>
                  <xsl:value-of select="xp20:current-date()"/>
               </ns5:expirationDate>
            </ns5:result>
         </ns5:responseBody>
      </ns5:ValidatorGeneralResponse>
   </xsl:template>
</xsl:stylesheet>
