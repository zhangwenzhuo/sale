<%@page import="com.longxing.sale.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=Sale.TABLE_ALIAS%>信息</title>
</rapid:override>

<rapid:override name="content">
	<form:form modelAttribute="sale"  >
		<input type="button" value="返回列表" onclick="window.location='${ctx}/sale'"/>
		<input type="button" value="后退" onclick="history.back();"/>
		
		<input type="hidden" id="saleId" name="saleId" value="${sale.saleId}"/>
	
		<table class="formTable">
			<tr>	
				<td class="tdLabel"><%=Sale.ALIAS_CUST_ID%></td>	
				<td><c:out value='${sale.custId}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Sale.ALIAS_AMOUNT%></td>	
				<td><c:out value='${sale.amount}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Sale.ALIAS_CUST_NAME%></td>	
				<td><c:out value='${sale.custName}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Sale.ALIAS_CUST_TEL%></td>	
				<td><c:out value='${sale.custTel}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Sale.ALIAS_UNIT_PRICE%></td>	
				<td><c:out value='${sale.unitPrice}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Sale.ALIAS_PAID%></td>	
				<td><c:out value='${sale.paid}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Sale.ALIAS_UN_PAID%></td>	
				<td><c:out value='${sale.unPaid}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Sale.ALIAS_OTHER_FEE%></td>	
				<td><c:out value='${sale.otherFee}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Sale.ALIAS_PROFIT%></td>	
				<td><c:out value='${sale.profit}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Sale.ALIAS_PAYMENT_STATUS%></td>	
				<td><c:out value='${sale.paymentStatus}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Sale.ALIAS_CREATE_ID%></td>	
				<td><c:out value='${sale.createId}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Sale.ALIAS_CAR_NUMBER%></td>	
				<td><c:out value='${sale.carNumber}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Sale.ALIAS_DRIVER%></td>	
				<td><c:out value='${sale.driver}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Sale.ALIAS_DRIVER_TEL%></td>	
				<td><c:out value='${sale.driverTel}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Sale.ALIAS_UPDATE_DATE%></td>	
				<td><c:out value='${sale.updateDateString}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Sale.ALIAS_CREATED_DATE%></td>	
				<td><c:out value='${sale.createdDateString}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Sale.ALIAS_UPDATE_ID%></td>	
				<td><c:out value='${sale.updateId}'/></td>
			</tr>
		</table>
	</form:form>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<%@ include file="base.jsp" %>