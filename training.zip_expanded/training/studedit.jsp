<%@page language="java" import="java.sql.*" errorPage="" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Edit</title>
<meta name="keywords" content="mini social, free download, website templates, CSS, HTML" />
<meta name="description" content="Mini Social is a free website template from templatemo.com" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet" href="css/coda-slider.css" type="text/css" media="screen" charset="utf-8" />

<script src="js/jquery-1.2.6.js" type="text/javascript"></script>
<script src="js/jquery.scrollTo-1.3.3.js" type="text/javascript"></script>
<script src="js/jquery.localscroll-1.2.5.js" type="text/javascript" charset="utf-8"></script>

<script src="js/coda-slider.js" type="text/javascript" charset="utf-8"></script>
<script src="js/jquery.easing.1.3.js" type="text/javascript" charset="utf-8"></script>

</head>
    <%@include file="studheader.jsp" %>


<%
try
{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:training");
	Statement s=con.createStatement();
	ResultSet rs=s.executeQuery("select * from studentd where sname='"+session.getAttribute("nm")+"'");
	rs.next();
	String sid=rs.getString("studid");	
	out.println("<form method='post' name='frm1' action='studupdate.jsp?sid="+sid+"'>");
	out.println("<table width='600' border='0'>");
	out.println("<tr><td width='128'>Student Id</td><td width='356'>"+sid+"</td></tr>");
out.println("<tr><td>Student Name</td><td><input name='t1' type='text' size='50' value='"+rs.getString("sname")+"' /></td></tr>");
out.println("<tr><td>Trade</td><td><input name='t2' type='text' size='50' value='"+rs.getString("trade")+"' /></td></tr>");
out.println("<tr><td>Semester</td><td><input name='t3' type='text' size='50' value='"+rs.getString("sem")+"' /></td></tr>");
out.println("<tr><td>Rollno</td><td><input name='t4' type='text' size='50' value='"+rs.getString("rollno")+"' /></td></tr>");
out.println("<tr><td>Address</td><td><input name='t5' type='text' size='50' value='"+rs.getString("address")+"' /></td></tr>");
out.println("<tr><td>City</td><td><input name='t6' type='text' size='50' value='"+rs.getString("city")+"' /></td></tr>");
out.println("<tr><td>State</td><td><input name='t7' type='text' size='50' value='"+rs.getString("State")+"' /></td></tr>");
out.println("<tr><td>email</td><td><input name='t8' type='text' size='50' value='"+rs.getString("email")+"' /></td></tr>");
out.println("<tr><td>Username</td><td>"+rs.getString("username")+"</td></tr>");
out.println("<tr><td>Gender</td><td><input name='t11' type='text' size='50' value='"+rs.getString("gender")+"' /></td></tr>");
out.println("<tr><td>Contact no</td><td><input name='t12' type='text' size='50' value='"+rs.getString("phone")+"' /></td></tr>");
out.println("<tr><td colspan=2 align='center'><br /><input type='button' value='Update' onclick='xyz()' /></td></tr>");
out.println("<tr><td colspan=2 align='center'>");

if(request.getParameter("p")!=null)
	out.println("Record updated successfully</td></tr></table></form>");
con.close();

}
catch(Exception ex)
{
	out.println("error"+ex);
}
%>

<script language="javascript">

function xyz()
{
	if(document.forms[0].t1.value==""||document.forms[0].t2.value==""||document.forms[0].t3.value==""||document.forms[0].t4.value==""||document.forms[0].t5.value==""||document.forms[0].t6.value==""||document.forms[0].t7.value==""||document.forms[0].t8.value==""||document.forms[0].t11.value==""||document.forms[0].t12.value=="")
		alert("Please fill all details");
	else
		document.forms[0].submit();
}
</script>
</div>
<%@include file="studfooter.jsp" %>
