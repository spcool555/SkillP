<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <c:if test="${not empty successMessage}">
        <p style="color: green;">${successMessage}</p>
    </c:if>
  <h2>Welcome, ${username}!</h2>
    <form action="/mail/saveUser" method="post">
      <label for="name">Name:</label>
        <input type="text" id="name" name="name" required><br>
        <label for="monile">Mobile No:</label>
        <input type="number" id="monile" name="monile" required><br>
        <label for="email">Email:</label>
        <input type="email" id=email name="email" required><br>
           <label for="college">college:</label>
        <input type="text" id="college" name="college" required><br>
           <label for="designation">Designation:</label>
        <input type="text" id="designation" name="designation" required><br>
        <label for="department">Department:</label>
        <input type="text" id="department" name="department" required><br>
          <label hidden for="role">Role:</label>
        <input type="number" id="role" name="role" required value="0" hidden><br>
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required><br>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required><br>
        
        <label hidden for="pass_status">Password status:</label>
        <input hidden type="number" id="pass_status" name="pass_status" value="0" required  readonly><br>
        
        <button type="submit">Save User</button>
    </form>
     <p>${error}</p>
</body>
</html>