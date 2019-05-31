<html>
    <head>
    <meta charset = "UTF-8">
        <title>DevOps project</title>
    </head>
    <body>

    <form method="get" >
        <center><h3>What is your name?</h3>
        <input type="text" name="nameUser" />

        <h3>Choose a programming languages :</h3>
        <input type="checkbox" name="language" value="C/C++">C/C++
        <input type="checkbox" name="language" value="HTML">HTML
        <input type="checkbox" name="language" value="JAVA">Java
        <input type="checkbox" name="language" value="JS">Java script
        <input type="checkbox" name="language" value="PYTHON">Python
    </br>
    </br>
        <input type="submit" value="Send">
    </center>
    </form>


            <%
  String[] language = request.getParameterValues("language");
	%>
            <%
  if (language != null) {
  %>
    <center><h3><font color="red">Hello : <%= request.getParameter("nameUser") %></font></h3>
    <h3><font color="blue">You have selected language(s):</font></h3></center>
    <center><ul></center>
            <%
      for (int i = 0; i < language.length; ++i) {
  %>
    <center><li><%= language[i] %></li></center>
            <%
      }
  %>
    <center></ul></center>
            <%
  }
  else{
  %>
        <h3><center>You don't have selected language(s) !</center></h3>
            <%
  }
  %>

        </body>
    </html>