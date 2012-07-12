<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <meta content="main" name="layout">
        <title></title>
    </head>

    <body>

        <g:link target="_blank" controller="demo" action="toDoListDemo"><button>See Working Demo</button></g:link>
        <br/>
        <br/>

        <h2>Html Code</h2>

        <demo:htmlCode>
            <h1>Todo List</h1>
            <ol id="list" contenteditable="true">
                <li>Enter contents</li>
            </ol>
        </demo:htmlCode>
        <br/>

        <h2>JavaScript Code</h2>
        <demo:jsCode>
            <script type="text/javascript">
                $(function () {

                    if (window.localStorage && window.localStorage.todoList) {
                        $("#list").html(window.localStorage.todoList);
                    } else {
                        // Handle this old non-HTML5 Browser
                    }

                    $("#list").blur(function () {
                        if (window.localStorage) {
                            window.localStorage.todoList = $("#list").html();
                        }

                    });

                });
            </script>
        </demo:jsCode>
    </body>
</html>