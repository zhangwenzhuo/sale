<%@page import="com.longxing.sale.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=Product.TABLE_ALIAS%>信息</title>
</rapid:override>

<rapid:override name="content">
	<form:form modelAttribute="product"  >
		<input type="button" value="返回列表" onclick="window.location='${ctx}/product'"/>
		<input type="button" value="后退" onclick="history.back();"/>
		
		<input type="hidden" id="prodId" name="prodId" value="${product.prodId}"/>
	
		<table class="formTable">
			<tr>	
				<td class="tdLabel"><%=Product.ALIAS_TYPE_ID%></td>	
				<td><c:out value='${product.typeId}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Product.ALIAS_PROVIDER_ID%></td>	
				<td><c:out value='${product.providerId}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Product.ALIAS_PRODUCT_NAME%></td>	
				<td><c:out value='${product.productName}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Product.ALIAS_PRODCT_DESC%></td>	
				<td><c:out value='${product.prodctDesc}'/></td>
			</tr>
		</table>
	</form:form>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<%@ include file="base.jsp" %>