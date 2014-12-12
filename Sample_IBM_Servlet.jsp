<%--
/***

 * --- --- --- --- ---
 * JD Sports Fashion plc
 * IBM WebSphere Commerce
 * Khaleel Mughal
 * --- --- --- --- ---
 * #Sample JSP 
 * --- --- --- --- ---

***/
--%>

<!--
// TEMPLATE INCLUDES
// -- Useful for headers etc
-->
<jsp:include page="SomePage.jsp" flush="true">
  <jsp:param name="showSubCategory" value="true" />
</jsp:include>

<c:import url="SomeOtherPage.jsp">
  <c:param name="showSubCategory" value="false" />
</c:import>
