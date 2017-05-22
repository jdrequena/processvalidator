<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:java="http://schemas.xmlsoap.org/wsdl/java/" xmlns:ns5="http://xmlns.tigo.com/ProcessValidator/Validations" xmlns:bpelpm="http://xmlns.oracle.com/bpel" xmlns:ns6="http://tigo.com/enterprise/resources/parameters/simple/v1/schema" xmlns:gr="http://tigo.com/enterprise/resources/GeneralResponse/v1/schema" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:format="http://schemas.xmlsoap.org/wsdl/formatbinding/" xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:tns="http://xmlns.oracle.com/ValidateRules/ValidateRules_DecisionFunction_DUM" xmlns:ns4="http://tigo.com/enterprise/business/entities/validate/v1/schema" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:rules="http://xmlns.oracle.com/bpel/rules" xmlns:ns0="http://xmlns.tigo.com/AdditionalSchema/V1" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:ns2="http://tigo.com/rules/v1/schema" xmlns:ns1="http://tigo.com/entities/v1/schema" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns3="http://tigo.com/enterprise/business/task/dum/status/v1/schema" xmlns:bpmn="http://schemas.oracle.com/bpm/xpath" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl java bpelpm soap12 format plnk soap wsdl tns ns4 rules ns0 ns2 ns1 xsd ns3 ns5 ns6 gr mime xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref bpmn ldap">
   <xsl:template match="/">
      <ns4:validatedRule>
         <xsl:if test="/tns:callFunctionStatelessDecision/tns:resultList/ns4:validatedRule/ruleID">
            <ruleID>
               <xsl:value-of select="/tns:callFunctionStatelessDecision/tns:resultList/ns4:validatedRule/ruleID"/>
            </ruleID>
         </xsl:if>
         <xsl:if test="/tns:callFunctionStatelessDecision/tns:resultList/ns4:validatedRule/status">
            <status>
               <xsl:value-of select="/tns:callFunctionStatelessDecision/tns:resultList/ns4:validatedRule/status"/>
            </status>
         </xsl:if>
         <xsl:if test="/tns:callFunctionStatelessDecision/tns:resultList/ns4:validatedRule/action">
            <action>
               <xsl:value-of select="/tns:callFunctionStatelessDecision/tns:resultList/ns4:validatedRule/action"/>
            </action>
         </xsl:if>
         <xsl:if test="/tns:callFunctionStatelessDecision/tns:resultList/ns4:validatedRule/comments">
            <comments>
               <xsl:value-of select="/tns:callFunctionStatelessDecision/tns:resultList/ns4:validatedRule/comments"/>
            </comments>
         </xsl:if>
      </ns4:validatedRule>
   </xsl:template>
</xsl:stylesheet>
