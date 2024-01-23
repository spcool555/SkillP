<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%-- Display success message --%>
<c:if test="${param.message == 'true' && not empty successMessage}">
    <div style="color: green;">${successMessage}</div>
</c:if>

<%-- Display error message --%>
<c:if test="${param.message == 'true' && not empty errorMessage}">
    <div style="color: red;">${errorMessage}</div>
</c:if>

<h2>Welcome, ${username}</h2>
    <form action="/saveQuery" method="post">
       <label for="query">"query":</label>
        <input type="text" id="query" name="query" required><br>
           <label for="std_id">std_id:</label>
        <input type="number" id="std_id" name="std_id" required value="${userId}" readonly><br>
        <label for="std_name">std_name:</label>
        <input type="text" id="name" name="name" required value="${username}" readonly><br>
             <label for="std_name">department:</label>
        <input type="text" id="department" name="department" required value="${department}" readonly><br>
        
        <button type="submit">Save</button>
    </form>
     <p>${error}</p>
</body>
</html>