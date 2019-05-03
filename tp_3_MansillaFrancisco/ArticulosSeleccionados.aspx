<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ArticulosSeleccionados.aspx.cs" Inherits="tp_3_MansillaFrancisco.ArticulosSeleccionados" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div style="margin: 10px 0px 30px 0px; font-size:20px">
                <asp:HyperLink style="margin-left:70px" ID="selArt" runat="server" NavigateUrl="~/SeleccionArticulos.aspx">Seleccion de articulos</asp:HyperLink>
                <asp:HyperLink style="margin-left:70px" ID="artSelected" runat="server" NavigateUrl="~/ArticulosSeleccionados.aspx">Seleccion de articulos</asp:HyperLink>
            </div>
        </div>
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="5" Width="737px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <%--<asp:TemplateField HeaderText="ID Articulo">
                <ItemTemplate>
                    <asp:Label ID="lblArtID" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>--%>
            <asp:TemplateField HeaderText="Nombre">
                <EditItemTemplate>
                    <asp:Label ID="txtNombre" runat="server" Text='<%# Bind("Nombre") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblNombreArt" runat="server" Text='<%# Bind("Nombre") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Tipo">
                <ItemTemplate>
                    <asp:Label ID="lblTipoArt" runat="server" Text='<%# Bind("Tipo") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Marca">
                <ItemTemplate>
                    <asp:Label ID="lblMarcaArt" runat="server" Text='<%# Bind("Marca") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Precio">
                <EditItemTemplate>
                    <asp:Label ID="txtPrecio" runat="server" Text='<%# Bind("Precio") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblPrecioArt" runat="server" Text='<%# Bind("Precio") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Cant de veces seleccionado">
                <ItemTemplate>
                    <asp:Label ID="lblCant" runat="server" Text='<%# Bind("Cant") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Center" Width="100px" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:TemplateField>
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <EmptyDataTemplate>
            <asp:Label ID="lblInfoEmpty" runat="server" Text="No selecciono ningun articulo"></asp:Label>
        </EmptyDataTemplate>
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>

    <br />
    
    <asp:Button ID="deleteElement" runat="server" OnClick="deleteElement_Click" style="margin-left: 201px" Text="Borrar la seleccion" Width="174px" />
        </div>
    </form>
</body>
</html>
