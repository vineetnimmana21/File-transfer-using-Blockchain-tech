<%@page import="dbServices.DB"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.JsonObject"%>
 
<%
Gson gsonObj = new Gson();
Map<Object,Object> map = null;
List<Map<Object,Object>> list = new ArrayList<Map<Object,Object>>();
Connection con=new DB().fun();
PreparedStatement p=con.prepareStatement("SELECT count(fname)as c,fname FROM request GROUP BY fname");
ResultSet rs=p.executeQuery();
while(rs.next()){
    map = new HashMap<Object,Object>(); map.put("label", rs.getString("fname")); map.put("y", rs.getInt("c")); list.add(map);
}
String dataPoints = gsonObj.toJson(list);
%>
 
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
window.onload = function() { 
 
var chart = new CanvasJS.Chart("chartContainer", {
	theme: "light2",
	title: {
		text: "File Request Count Based"
	},
	axisX: {
		title: "Files"
	},
	axisY: {
		title: "Fiel Request(counts)"
	},
	data: [{
		type: "line",
		yValueFormatString: "#,##0",
		dataPoints : <%out.print(dataPoints);%>
	}]
});
chart.render();
 
}
</script>
</head>
<body>
<div id="chartContainer" style="height: 370px; width: 100%;margin-top: 10%;"></div>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
<h4><a href="Cloud_Home.jsp">Go Back</a></h4>
</body>
</html>    