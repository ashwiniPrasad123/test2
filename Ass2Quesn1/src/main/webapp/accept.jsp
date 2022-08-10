<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="issue.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Addition Demo</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<%
		String nameS = request.getParameter("name");
		String mark =request.getParameter("marks");
		if (!(mark ==  null || mark.isEmpty()))
		{
			int mar=Integer.parseInt(mark);
			 String grade="";
			int make=mar/10;
			if(mar<100)
			{
			switch(make)
			{
			case 0: grade="Fail";
					break;
					
			case 1: grade="Fail";
			break;
			case 2: grade="Fail";
			break;
			case 3: grade="Fail";
			break;
			case 4: grade="C";
			break;
			case 5: grade="C+";
			break;
			case 6: grade="B";
			break;
			case 7: grade="B+";
			break;
			case 8: grade="A";
			break;
			case 9: grade="A+";
			break;
			case 10: grade="Outstanding";
			break;
			}
			request.setAttribute("Grade",grade);
			 %> 
		    
		    <table>
		    <tr>
		    <td><h2><b class="text-primary"> Hello <%=nameS %> your Grade is   :</b></h2></td><td></td>
		    <td align="center"><h2 class="text-info"><%=grade %></h2></td>    
		    </tr> 
		    </table>
		    <% 
			}
			else if(mar>100)
			{
				%>
					<h3 class="text-primary">Sorry....Please Enter the valid marks below 100...!!!!</h3>
					<% 
			}
			%>
			 
		 <%    
			}
			%>
			</body>
			</html>

