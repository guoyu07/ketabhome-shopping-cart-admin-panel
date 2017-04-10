<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/manage/commons/header.jsp"%>
    <h3>Add New Category</h3>
    <form action="${pageContext.request.contextPath}/servlet/ManageServlet?op=addCategory" method="post">
    	<table border="1" width="438">
    		<tr>
    			<td>Name：</td>
    			<td>
    				<input name="name" id="name" /><span id="sname"></span>
    			</td>
    		</tr>
    		<tr>
    			<td>Desc：</td>
    			<td>
    				<textarea rows="3" cols="38" name="des"></textarea>
    			</td>
    		</tr>
    	</table>
    	<input type="submit" value="submit"/>
    </form>
    
     </center>
    
    <script type="text/javascript">
    	window.onload=function(){
    		document.getElementById("name").onblur=function(){
    			var xhr = getXhr();
    			xhr.onreadystatechange=function(){
    				if(xhr.readyState==4){
    					if(xhr.status==200){
    						document.getElementById("sname").innerHTML=xhr.responseText;
    					}
    				}
    			}
    			var nameValue = encodeURI(this.value);
    			xhr.open("GET","${pageContext.request.contextPath}/servlet/ManageServlet?op=checkCategory&name="+nameValue+"&time="+new Date().getTime());
    			xhr.send(null);
    		}
    	}
    </script>
<%@ include file="/manage/commons/footer.jsp"%>