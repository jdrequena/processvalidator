<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xtcpg="http://xmlns.tigo.com/ProcessValidator/GetValidationRequest" xmlns:ns3="http://xmlns.tigo.com/ProductSchema/V1" xmlns:xtcpv1="http://xmlns.tigo.com/ProcessValidator/ValidatorFaultResponse" xmlns:tns="http://xmlns.tigo.com/ProcessValidator/Validate" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns7="http://xmlns.tigo.com/ProcessValidator/StepSchema/V1" xmlns:ns9="http://xmlns.tigo.com/ProcessValidator/BillingAccountSchema/V1" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns14="http://tigo.com/enterprise/business/entities/validate/v1/schema" xmlns:ns13="http://tigo.com/enterprise/business/entities/rulesDataContainer/v1/schema" xmlns:ns11="http://xmlns.tigo.com/ClientSchema/V1" xmlns:ns0="http://xmlns.tigo.com/AdditionalSchema/V1" xmlns:ns1="http://xmlns.tigo.com/ProcessValidator/ServiceAccountSchema/V1" xmlns:ns2="http://xmlns.tigo.com/ParameterType/V2" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:ns5="http://xmlns.tigo.com/ResponseHeader/V3" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:ns6="http://xmlns.tigo.com/ProcessValidator/StatusSchema/V1" xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ns20="http://tigo.com/enterprise/resources/GeneralRequest/v1/schema" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns8="http://xmlns.tigo.com/ProcessValidator/RoleSchema/V1" xmlns:ns10="http:/xmlns.tigo.com/ProcessValidator/ProcessDetailsSchema/V1" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:ns4="http://xmlns.tigo.com/RequestHeader/V3" xmlns:ns19="http://tigo.com/enterprise/business/task/MasterDataEngine/v1" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:sch="http://tigo.com/enterprise/business/task/MasterDataEngine/v1/schema" xmlns:ns15="http://tigo.com/enterprise/resources/GeneralResponse/v1/schema" xmlns:ns17="http://tigo.com/enterprise/resources/parameters/simple/v1/schema" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:xpc="http:/xmlns.tigo.com/ProcessValidator/ConfirmValidationRequest" xmlns:xtccv="http://xmlns.tigo.com/ProcessValidator/ValidatorGeneralResponse" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:ns16="http://tigo.com/entities/v1/schema" xmlns:ns18="http://tigo.com/rules/v1/schema" xmlns:xtcpx="http://xmlns.tigo.com/ProcessValidator/ValidateConditionalRequest" xmlns:bpmn="http://schemas.oracle.com/bpm/xpath" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" xmlns:ns12="http://xmlns.tigo.com/ProcessValidator/RuleSchema/V1" xmlns:nsP="http://xmlns.tigo.com/ProductSchema/V1" exclude-result-prefixes="xsl ns18 xsi xtcpg ns3 xtcpv1 tns ns7 ns9 ns14 ns13 ns11 ns0 ns1 ns2 ns5 ns6 plnk xsd ns8 ns10 bpel ns4 ns15 ns17 soap12 soap wsdl mime xpc xtccv ns16 ns18 xtcpx ns12 ns20 ns19 sch bpm ora socket mhdr dvm xdk bpws xp20 bpel oraext hwf med ids xref bpmn ldap">
   <xsl:param name="entity"/>
   <xsl:template match="/">
      <sch:SubmitOrder_Request>
         <GeneralRequest>
            <applicationID>
               <xsl:value-of select="/xtcpx:ValidateRequest/ns4:RequestHeader/ns4:GeneralConsumerInformation/ns4:consumerID"/>
            </applicationID>
            <applicationTransactionID>
               <xsl:value-of select="/xtcpx:ValidateRequest/ns4:RequestHeader/ns4:GeneralConsumerInformation/ns4:transactionID"/>
            </applicationTransactionID>
            <utiReference>
               <xsl:value-of select="/xtcpx:ValidateRequest/ns4:RequestHeader/ns4:GeneralConsumerInformation/ns4:correlationID"/>
            </utiReference>
         </GeneralRequest>
         <eventReference>
            <xsl:value-of select="/xtcpx:ValidateRequest/xtcpx:requestBody/ns0:additionals/ns0:additional[ns0:name = &quot;EVENT_REFERENCE&quot;]/ns0:value"/>
         </eventReference>
         <action>
            <xsl:text disable-output-escaping="no">GET</xsl:text>
         </action>
         <serviceCode>
            <xsl:text disable-output-escaping="no">1</xsl:text>
         </serviceCode>
         <entities>
            <entity>
               <code>
                  <xsl:value-of select="$entity/ns16:entity/code"/>
               </code>
               <key>
                  <xsl:text disable-output-escaping="no">1</xsl:text>
               </key>
               <value>
                  <xsl:text disable-output-escaping="no">1</xsl:text>
               </value>
            </entity>
         </entities>
         <parameters>
            <xsl:for-each select="/xtcpx:ValidateRequest/xtcpx:requestBody/ns0:additionals/ns0:additional">
               <parameter>
                  <name>
                     <xsl:value-of select="ns0:name"/>
                  </name>
                  <value>
                     <xsl:value-of select="ns0:value"/>
                  </value>
               </parameter>
            </xsl:for-each>
            <parameter>
               <name>
                  <xsl:value-of select="/xtcpx:ValidateRequest/xtcpx:requestBody/nsP:product/name"/>
               </name>
               <value>
                  <xsl:value-of select="/xtcpx:ValidateRequest/xtcpx:requestBody/nsP:product/code"/>
               </value>
            </parameter>
            <parameter>
               <name>
                  <xsl:value-of select="/xtcpx:ValidateRequest/xtcpx:requestBody/xtcpx:client/ns11:idType"/>
               </name>
               <value>
                  <xsl:value-of select="/xtcpx:ValidateRequest/xtcpx:requestBody/xtcpx:client/ns11:id"/>
               </value>
            </parameter>
            <parameter>
               <name>
                  <xsl:value-of select="/xtcpx:ValidateRequest/xtcpx:requestBody/xtcpx:requestID/xtcpx:idType"/>
               </name>
               <value>
                  <xsl:value-of select="/xtcpx:ValidateRequest/xtcpx:requestBody/xtcpx:requestID/xtcpx:id"/>
               </value>
            </parameter>
         </parameters>
      </sch:SubmitOrder_Request>
   </xsl:template>
</xsl:stylesheet>
