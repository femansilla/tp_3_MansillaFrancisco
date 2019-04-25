<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio2_Bootstrap.aspx.cs" Inherits="tp_3_MansillaFrancisco.Ejercicio2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ejercicio2_Bootstrap</title>
    <!-- CSS BOOTSTRAP -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
    <!-- JS BOOTSTRAP -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server" style="width:800px; height:600px">
        
        <div style="width:100%; height:10%;">
            <div style="width:20%; height:100%; background-color:orange; float:left; "></div>
            <div style="width:60%; height:100%; background-color:mediumpurple; float:left"></div>
            <div style="width:20%; height:100%; background-color:orange; float:right"></div>
        </div>

        <div style="width:100%; height:80%;">
            <div style="width:60%; height:100%; background-color:darkkhaki; float:left"></div>
            <div style="width:40%; height:100%; background-color:lightskyblue; float:right; "></div>
        </div>
        
        <div style="width:100%; height:10%; background-color: black"></div>

    </form>
</body>
</html>
