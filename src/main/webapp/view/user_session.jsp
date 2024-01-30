<%
if(null!=session.getAttribute("user")){
}else{
response.sendRedirect("http://localhost:8082/logout");}
%>