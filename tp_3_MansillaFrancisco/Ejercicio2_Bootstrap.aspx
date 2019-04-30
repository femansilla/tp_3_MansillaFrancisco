<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio2_Bootstrap.aspx.cs" Inherits="tp_3_MansillaFrancisco.Ejercicio2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ejercicio2_Bootstrap</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <!-- CSS BOOTSTRAP -->
    <link href="Content/bootstrap.css" rel="stylesheet" />
</head>
<body>

    <div class="container well">
        
        <div class="row">
            <div class="col-lg-3" style="background-color:orange;"></div>
            <div class="col-lg-offset-3" style="background-color:mediumpurple;"></div>
            <div class="col-lg-offset-9 right" style="background-color:orange;"></div>
        </div>

        <div class="row">
            <div class="col-lg-6" style="background-color:darkkhaki;"></div>
            <div class="col-lg-offset-6" style="background-color:lightskyblue;"></div>
        </div>
        
        <div class="row" style="background-color: black"></div>
    </div>
    
    <!-- JQUERY -->
    <script src="Scripts/jquery-3.3.1.js"></script>
    <!-- JS BOOTSTRAP -->
    <script src="Scripts/bootstrap.js"></script>
</body>
</html>
