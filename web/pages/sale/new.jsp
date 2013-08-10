<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<%@ include file="../../commons/noty-bottom-right-import.jsp" %>
	<%@ include file="../../commons/opera-maskui-dialog-import.jsp" %>
	<link href="<c:url value="${ctx}/scripts/plugins/popup-input/popup-input.css"/>" type="text/css" rel="stylesheet">
	<script type="text/javascript" src="${ctx}/scripts/plugins/popup-input/popup_selection.js"></script>
	<title><%=Sale.TABLE_ALIAS%>新增</title>
</rapid:override>

<rapid:override name="content">
	<form:form method="post" action="${ctx}/sale" modelAttribute="sale" >
		<input id="submitButton" name="submitButton" type="submit" value="提交" />

		<c:choose>
			<c:when test="${empty postmode}">
				<input type="button" value="返回列表" onclick="window.location='${ctx}/sale'"/>
				<input type="button" value="后退" onclick="history.back();"/>
			</c:when>
			<c:otherwise>
				<input type="button" value="返回列表" onclick="window.location='${ctx}/sale?postmode=<c:out value="${postmode}" />'"/>
				<input type="button" value="关闭" onclick="window.close()"/>
			</c:otherwise>
		</c:choose>
		
		<table class="formTable">
		<%@ include file="form_include.jsp" %>
		</table>
	</form:form>
	<%@ include file="../../commons/ajaxpost-import.jsp" %>
	
	<script>
			function getJsonUrl() {
					return '${ctx}/sale/save.json';
			}
			function getPostMethod() {
				return '${postmode}' ;
			}
			function validationCallback(form,result) {
			   return result;
			}
	</script>
	
	<script type="text/javascript">
	 var popupOption={
		 'sale_custId': {url:'${ctx}/customer/query',title:'选择客户',textColumn:'custName',valueColumn:'custId',fields:{"custName":"custName","telephone":"custTel"}},
		 'sale_createId': {url:'${ctx}/user/query',title:'选择用户',textColumn:'userName',valueColumn:'userId'},
		 'sale_transportId': {url:'${ctx}/transport/query',title:'选择运输',textColumn:'driver',valueColumn:'transportId',fields:{"driver":"driver","carNumber":"carNumber","driverTel":"driverTel"}},
		 'sale_updateId': {url:'${ctx}/user/query',title:'选择用户',textColumn:'userName',valueColumn:'userId'}
	 };
	 PopupSelection.initOption(popupOption); 	
	</script>
	  <div id="dialog-modal" title="">
        <iframe frameborder="0" style="width:100%;height:99%;height:100%\9;" src="about:blank"></iframe>
    </div>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<%@ include file="base.jsp" %>
