<%--
/***

 * --- --- --- --- ---
 * JD Sports Fashion plc
 * Oracle ATG Commerce
 * Khaleel Mughal
 * --- --- --- --- ---
 * #Sample JSP Gadget
 * --- --- --- --- ---

***/
// START
// -- Load Program
--%>


<dsp:page>
  <dsp:importbean bean="/atg/dynamo/droplet/ComponentExists"/>
  
  <%--
  If the Click To Call feature is disabled, this entire div can be safely
  bypassed. We can test if Click To Call is installed by the existence
  of the clicktoconnect Configuration component.
  --%>
  
  <dsp:droplet name="ComponentExists" path="/atg/clicktoconnect/Configuration">

   <dsp:oparam name="true">
    
	<%--
   In order to display the ClickToCall button we need to add an anchor in the
   place we want the ClickToCall button to be rendered. This anchor is the
   HTML div below. Its id attribute must match the 'Relative to Layer ID'
   property of the WebCare link
	--%>
	
   <dsp:getvalueof var="pageName" param="pageName"/>
   <div id="atg_store_c2c_${pageName}">&nbsp;</div>
   </dsp:oparam>
  </dsp:droplet>
</dsp:page>
