<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SeleccionArticulos.aspx.cs" Inherits="tp_3_MansillaFrancisco.SeleccionArticulos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
            <asp:DataList ID="DataList1" runat="server" style="z-index: 1; left: 18px; top: 174px; position: absolute; height: 200px; width: 150px;" DataKeyField="ID_MARCA" DataSourceID="myDSDL">
                <ItemTemplate>
                    <br />
                       <asp:LinkButton ID="filterMarca" runat="server" CommandArgument='<%# Eval("DESCRIPCION") %>' CommandName="comandofilterMarca" OnCommand="filterMarca_Command" Text='<%# Eval("DESCRIPCION") %>'></asp:LinkButton>
                    <br />
                </ItemTemplate>
            </asp:DataList>

        <div style="padding-left:20%">
            <div>
                <div style="margin: 10px 0px 30px 0px; font-size:20px">
                    <asp:HyperLink style="margin-left:70px" ID="selArt" runat="server" NavigateUrl="~/SeleccionArticulos.aspx">Seleccion de articulos</asp:HyperLink>
                    <asp:HyperLink style="margin-left:70px" ID="artSelected" runat="server" NavigateUrl="~/ArticulosSeleccionados.aspx">Seleccion de articulos</asp:HyperLink>
                </div>
            </div>
            <div>
                <strong style="font-size:20px">Articulos disponibles</strong>
        <br />
        <br />
        <div style="margin-left:100px">
            <asp:Button ID="sortMinMax" runat="server" Text="ORDENA PRECIO MENOR A MAYOR" OnClick="sortMinMax_Click" />
            <asp:Button ID="sortMaxMin" runat="server" Text="ORDENA PRECIO MAYOR A MENOR" style="margin-left:30px" OnClick="sortMaxMin_Click"/>
        </div>
        <br />
        <div style="width:100%">
        <div style="width:30%; margin-left:0%; z-index: 1; left: 804px; top: 329px; position: absolute; height: 57px;">
        <asp:Label ID="lblNombre" runat="server" Text=""></asp:Label>
            <br />
        <asp:Label ID="lblTipo" runat="server" Text=""></asp:Label>
            <br />
        <asp:Label ID="lblMarca" runat="server" Text=""></asp:Label>
            <br />
        </div>
            <div style="width:40%">
        <asp:ListView ID="myLV" runat="server" DataKeyNames="ID_ART" DataSourceID="myDS" GroupItemCount="3" EnablePersistedSelection="True">
        <%--<AlternatingItemTemplate>
            <td runat="server" style="background-color: #FFFFFF;color: #284775;">ID_ART:
                            <asp:Label ID="ID_ARTLabel" runat="server" Text='<%# Eval("ID_ART") %>' />
                <br />
                ID_MARCA:
                            <asp:Label ID="ID_MARCALabel" runat="server" Text='<%# Eval("ID_MARCA") %>' />
                <br />
                ID_TIPO:
                            <asp:Label ID="ID_TIPOLabel" runat="server" Text='<%# Eval("ID_TIPO") %>' />
                <br />
                NOMBRE:
                            <asp:Label ID="NOMBRELabel" runat="server" Text='<%# Eval("NOMBRE") %>' />
                <br />
                PRECIO_ART:
                            <asp:Label ID="PRECIO_ARTLabel" runat="server" Text='<%# Eval("PRECIO_ART") %>' />
                <br />
                URL_IMAGEN:
                            <asp:Label ID="URL_IMAGENLabel" runat="server" Text='<%# Eval("URL_IMAGEN") %>' />
                <br />
            </td>
        </AlternatingItemTemplate>--%>
        <EditItemTemplate>
            <td runat="server" style="background-color: #999999;">ID_ART:
                            <asp:Label ID="ID_ARTLabel1" runat="server" Text='<%# Eval("ID_ART") %>' />
                <br />
                ID_MARCA:
                            <asp:TextBox ID="ID_MARCATextBox" runat="server" Text='<%# Bind("ID_MARCA") %>' />
                <br />
                ID_TIPO:
                            <asp:TextBox ID="ID_TIPOTextBox" runat="server" Text='<%# Bind("ID_TIPO") %>' />
                <br />
                NOMBRE:
                            <asp:TextBox ID="NOMBRETextBox" runat="server" Text='<%# Bind("NOMBRE") %>' />
                <br />
                PRECIO_ART:
                            <asp:TextBox ID="PRECIO_ARTTextBox" runat="server" Text='<%# Bind("PRECIO_ART") %>' />
                <br />
                URL_IMAGEN:
                            <asp:TextBox ID="URL_IMAGENTextBox" runat="server" Text='<%# Bind("URL_IMAGEN") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <br />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                <br />
            </td>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <EmptyItemTemplate>
            <td runat="server" />
        </EmptyItemTemplate>
        <GroupTemplate>
            <tr id="itemPlaceholderContainer" runat="server">
                <td id="itemPlaceholder" runat="server"></td>
            </tr>
        </GroupTemplate>
        <InsertItemTemplate>
            <td runat="server" style="">ID_MARCA:
                            <asp:TextBox ID="ID_MARCATextBox0" runat="server" Text='<%# Bind("ID_MARCA") %>' />
                <br />
                ID_TIPO:
                            <asp:TextBox ID="ID_TIPOTextBox0" runat="server" Text='<%# Bind("ID_TIPO") %>' />
                <br />
                NOMBRE:
                            <asp:TextBox ID="NOMBRETextBox0" runat="server" Text='<%# Bind("NOMBRE") %>' />
                <br />
                PRECIO_ART:
                            <asp:TextBox ID="PRECIO_ARTTextBox0" runat="server" Text='<%# Bind("PRECIO_ART") %>' />
                <br />
                URL_IMAGEN:
                            <asp:TextBox ID="URL_IMAGENTextBox0" runat="server" Text='<%# Bind("URL_IMAGEN") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <br />
                <asp:Button ID="CancelButton0" runat="server" CommandName="Cancel" Text="Clear" />
                <br />
            </td>
        </InsertItemTemplate>
        <ItemTemplate>
            <td runat="server" style="background-color: darkslategray;color: white; text-align:center; width: 250px; height:250px">
            
                <asp:Label ID="NOMBRELabel0" runat="server" Text='<%# Eval("NOMBRE") %>'></asp:Label>
                <asp:Label ID="ID_ARTLabel2" runat="server" Text='<%# Eval("ID_ART") %>' style="display:none" />
                <asp:Label ID="ID_MARCALabel0" runat="server" Text='<%# Eval("ID_MARCA") %>' style="display:none" />
                <asp:Label ID="ID_TIPOLabel0" runat="server" Text='<%# Eval("ID_TIPO") %>' style="display:none"></asp:Label>
                <br />
                <asp:Label ID="URL_IMAGENLabel0" runat="server" Text='<%# Eval("URL_IMAGEN") %>' style="display:none"/>
                <asp:ImageButton ID="Button1" runat="server" ImageUrl='<%# Eval("URL_IMAGEN") %>' Height="150px" Width="150px" CommandArgument='<%# Eval("ID_ART") %>' CommandName="ShowMoreData" OnCommand="Button1_Command" />
                <br />
                <asp:Label ID="PRECIO_ARTLabel0" runat="server" Text='<%# string.Format("{0} {1}", "$", Eval("PRECIO_ART")) %>' />
                <br />
                <asp:Button ID="btnSeleccionar" runat="server" Text="Seleccionar" style="width:100%" CommandArgument='<%# Eval("ID_ART") %>' CommandName="SelectEvent" OnCommand="btnSeleccionar_Command" />
                <br />

            </td>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr id="groupPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
                        <asp:DataPager ID="DataPager1" runat="server" PageSize="6">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <td runat="server" style="background-color: #E2DED6;font-weight: bold;color: #333333;">ID_ART:
                            <asp:Label ID="ID_ARTLabel3" runat="server" Text='<%# Eval("ID_ART") %>' />
                <br />
                ID_MARCA:
                            <asp:Label ID="ID_MARCALabel1" runat="server" Text='<%# Eval("ID_MARCA") %>' />
                <br />
                ID_TIPO:
                            <asp:Label ID="ID_TIPOLabel1" runat="server" Text='<%# Eval("ID_TIPO") %>' />
                <br />
                NOMBRE:
                            <asp:Label ID="NOMBRELabel1" runat="server" Text='<%# Eval("NOMBRE") %>' />
                <br />
                PRECIO_ART:
                            <asp:Label ID="PRECIO_ARTLabel1" runat="server" Text='<%# Eval("PRECIO_ART") %>' />
                <br />
                URL_IMAGEN:
                            <asp:Label ID="URL_IMAGENLabel1" runat="server" Text='<%# Eval("URL_IMAGEN") %>' />
                <br />
            </td>
        </SelectedItemTemplate>
    </asp:ListView>
        </div>    
        </div>
    <br />
    <asp:SqlDataSource ID="myDS" runat="server" ConnectionString="<%$ ConnectionStrings:ComercioConnectionString %>" SelectCommand="SELECT * FROM [ARTICULO] ORDER BY [NOMBRE]"></asp:SqlDataSource>


                <asp:SqlDataSource ID="myDSDL" runat="server" ConnectionString="<%$ ConnectionStrings:ComercioConnectionString %>" SelectCommand="Select * from marca order by 2 asc"></asp:SqlDataSource>

            </div>
        </div>
    </form>
</body>
</html>
