<!-- index.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Calculator</title>
</head>
<body>
    <h2>Basic Calculator</h2>
    <form action="calculate" method="post">
        Operand 1: <input type="text" name="operand1"><br>
        Operand 2: <input type="text" name="operand2"><br>
        Operation: <select name="operation">
            <option value="add">Addition</option>
            <option value="subtract">Subtraction</option>
            <option value="multiply">Multiplication</option>
            <option value="divide">Division</option>
        </select><br>
        <input type="submit" value="Calculate">
    </form>
</body>
</html>
