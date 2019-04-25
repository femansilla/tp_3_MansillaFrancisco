<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio1_Bootstrap.aspx.cs" Inherits="tp_3_MansillaFrancisco.Ejercicio1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ejercicio1_Bootstrap</title>

    <meta charset="utf-8" />

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>

    <!-- CSS BOOTSTRAP -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
    <!-- JQUERY -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <!-- JS BOOTSTRAP -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>

    <div class="container" <%--style="width:800px; height:600px"--%>>

        <div class="row">
          <div class="col-md-12" style="background-color:lightpink"></div>
        </div>
        <div class="row clearfix">
            <div class="col-md-4" style="background-color:lightskyblue"></div>
            <div class="col-md-4" style="background-color:darkkhaki"></div>
            <div class="col-md-4" style="background-color:lightskyblue"></div>
        </div>
        <div class="row">
          <div class="col-md-12" style="background-color:lightpink"></div>
        </div>        

    </div>
</body>
</html>
