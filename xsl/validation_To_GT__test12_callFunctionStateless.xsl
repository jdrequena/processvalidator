<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:java="http://schemas.xmlsoap.org/wsdl/java/" xmlns:tns="http://xmlns.tigo.com/ProcessValidator/Validations" xmlns:ns4="http://xmlns.oracle.com/ValidateRules_BOL/ValidateRules_BOL_StatusLine_1" xmlns:bpelpm="http://xmlns.oracle.com/bpel" xmlns:ns3="http://tigo.com/enterprise/resources/parameters/simple/v1/schema" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:gr="http://tigo.com/enterprise/resources/GeneralResponse/v1/schema" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:format="http://schemas.xmlsoap.org/wsdl/formatbinding/" xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:sch="http://tigo.com/enterprise/business/entities/validate/v1/schema" xmlns:rules="http://xmlns.oracle.com/bpel/rules" xmlns:ns0="http://xmlns.tigo.com/AdditionalSchema/V1" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:ns2="http://tigo.com/rules/v1/schema" xmlns:ns1="http://tigo.com/entities/v1/schema" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:bpmn="http://schemas.oracle.com/bpm/xpath" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl tns ns3 gr soap wsdl mime sch ns0 ns2 ns1 xsd java ns4 bpelpm soap12 format plnk rules xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref bpmn ldap">
   <xsl:template match="/">
      <ns4:callFunctionStateless>
         <xsl:attribute name="name">
            <xsl:text disable-output-escaping="no">ValidateRulesGT_TEST_DecisionService_1</xsl:text>
         </xsl:attribute>
         <ns4:parameterList>
            <sch:validation>
               <xsl:if test="/sch:validation/processID">
                  <processID>
                     <xsl:value-of select="/sch:validation/processID"/>
                  </processID>
               </xsl:if>
               <rule>
                  <xsl:if test="/sch:validation/rule/id">
                     <id>
                        <xsl:value-of select="/sch:validation/rule/id"/>
                     </id>
                  </xsl:if>
                  <xsl:if test="/sch:validation/rule/name">
                     <name>
                        <xsl:value-of select="/sch:validation/rule/name"/>
                     </name>
                  </xsl:if>
                  <xsl:if test="/sch:validation/rule/ns0:additionals">
                     <ns0:additionals>
                        <xsl:if test="/sch:validation/rule/ns0:additionals/@xsi:nil">
                           <xsl:attribute name="xsi:nil">
                              <xsl:value-of select="/sch:validation/rule/ns0:additionals/@xsi:nil"/>
                           </xsl:attribute>
                        </xsl:if>
                        <xsl:for-each select="/sch:validation/rule/ns0:additionals/ns0:additional">
                           <ns0:additional>
                              <ns0:name>
                                 <xsl:value-of select="ns0:name"/>
                              </ns0:name>
                              <ns0:value>
                                 <xsl:if test="ns0:value/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns0:value/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns0:value"/>
                              </ns0:value>
                           </ns0:additional>
                        </xsl:for-each>
                     </ns0:additionals>
                  </xsl:if>
                  <xsl:if test="/sch:validation/rule/entities">
                     <entities>
                        <xsl:for-each select="/sch:validation/rule/entities/entity">
                           <entity>
                              <code>
                                 <xsl:value-of select="code"/>
                              </code>
                              <key>
                                 <xsl:value-of select="key"/>
                              </key>
                              <value>
                                 <xsl:value-of select="value"/>
                              </value>
                              <xsl:if test="entities">
                                 <entities>
                                    <xsl:for-each select="entities/entity">
                                       <entity>
                                          <code>
                                             <xsl:value-of select="code"/>
                                          </code>
                                          <key>
                                             <xsl:value-of select="key"/>
                                          </key>
                                          <value>
                                             <xsl:value-of select="value"/>
                                          </value>
                                       </entity>
                                    </xsl:for-each>
                                 </entities>
                              </xsl:if>
                           </entity>
                        </xsl:for-each>
                     </entities>
                  </xsl:if>
               </rule>
            </sch:validation>
         </ns4:parameterList>
      </ns4:callFunctionStateless>
   </xsl:template>
</xsl:stylesheet>
