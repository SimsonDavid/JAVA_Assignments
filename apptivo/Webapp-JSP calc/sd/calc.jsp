<%@ page language="java" contentType="text/html" pageEncoding="GBK"%>
    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
    <html lang="en">

    <head>

        <body >
            <h1><center>CALCULATOR</center></h1>
            <form method="post">
                <table align="center" border="1" bgcolor="lightblue" >

                   
                    <tr>
                        <td><h4>firstNumber</h4></td>
                        <td>
                            <input type="text" name="firstNum" id="firstNum"></td></tr>
                            <tr><td><h4>Select Operator</h4></td>
                                <td>
                            <select name="operator" id="operator">
                            <option value="-1">Operator</option>
                            <option value="1">+</option>
                            <option value="2">-</option>
                            <option value="3">*</option>
                            <option value="4">/</option>
                        </select></td></tr>
                        
                        <tr><td><h4>SecondNumber</h4></td>
                            <td><input type="text" name="secondNum" id="secondNum"></td></tr>
                        <tr><td> <input type="button" value="Calculate" onClick="calc()"></td></tr>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div id="calresult" style="text-align:center;font-size: 20px;"></div>
                        </td>
                    </tr>
                </table>
            </form>


            <title>Simple calculator</title>

            <script type="text/javascript">
                function calc() {
                    var firstNum = document.getElementById("firstNum").value;
                    var secondNum = document.getElementById("secondNum").value;
                    var operator = document.getElementById("operator").value;


                    if (firstNum == "" || secondNum == "") {
                        alert("Please enter the number!");
                        return false;
                    }
                    if (isNaN(firstNum) || isNaN(secondNum)) {
                        alert("Number format is wrong!");
                        return false;
                    }
                    if (operator == "-1") {
                        alert("Please choose an operator!");
                        return false;
                    } else
                        result(firstNum, secondNum, operator)

                }

                function result(firstNum, secondNum, operator) {
                    var req = new XMLHttpRequest();
                    req.onload = function()

                    {
                        document.getElementById("calresult").innerHTML = this.responseText;
                        alert(this.responseText);
                    }

                    var getstr = "?firstNum=" + firstNum;
                    getstr = getstr + "&secondNum=" + secondNum;
                    getstr = getstr + "&operator=" + operator;

                    alert(getstr);

                    req.open("GET", "http://localhost:8080/sd/CalculateServlet" + getstr);
                    req.send();
                }
            </script>
        </body>
    </head>


    </html>