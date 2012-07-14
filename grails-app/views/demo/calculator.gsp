<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <meta content="main" name="layout">
        <title></title>
    </head>

    <body>

        <g:link target="_blank" controller="demo" action="calculatorDemo"><button>See Working Demo</button></g:link>
        <br/>
        <br/>

        <h2>Html + JS Code</h2>

        <demo:htmlCode>
            <form name="calculator">
                <table border=4>
                    <tr>
                        <td>
                            <input type="text" name="text" size="18">
                            <br>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="button" value="1" onclick="calculator.text.value += '1'">
                            <input type="button" value="2" onclick="calculator.text.value += '2'">
                            <input type="button" value="3" onclick="calculator.text.value += '3'">
                            <input style="width:24px" type="button" value="+" onclick="calculator.text.value += ' + '">
                            <input style="width:35px" type="button" value="M+"
                                   onclick="localStorage.memmory = eval(calculator.text.value)">
                            <br>
                            <input type="button" value="4" onclick="calculator.text.value += '4'">
                            <input type="button" value="5" onclick="calculator.text.value += '5'">
                            <input type="button" value="6" onclick="calculator.text.value += '6'">
                            <input style="width:24px" type="button" value="-" onclick="calculator.text.value += ' - '">
                            <input style="width:35px" type="button" value="M-" onclick="localStorage.memmory = ''">
                            <br>
                            <input type="button" value="7" onclick="calculator.text.value += '7'">
                            <input type="button" value="8" onclick="calculator.text.value += '8'">
                            <input type="button" value="9" onclick="calculator.text.value += '9'">
                            <input style="width:24px" type="button" value="*" onclick="calculator.text.value += ' * '">
                            <input style="width:35px" type="button" value="MR"
                                   onclick="calculator.text.value += (' ' + localStorage.memmory + ' ')">
                            <br>
                            <input type="button" value="c" onclick="calculator.text.value = ''">
                            <input type="button" value="0" onclick="calculator.text.value += '0'">
                            <input type="button" value="="
                                   onclick="calculator.text.value = eval(calculator.text.value)">
                            <input style="width:24px" type="button" value="/" onclick="calculator.text.value += ' / '">
                            <input style="width:35px" type="button" value="C" onclick="calculator.text.value = ''">
                            <br>
                        </td>
                    </tr>
                </table>
            </form>
        </demo:htmlCode>
        <br/>

    </body>
</html>