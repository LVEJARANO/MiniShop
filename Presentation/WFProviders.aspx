<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WFProviders.aspx.cs" Inherits="Presentation.WFProviders" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Proveedores</title>
     <!-- Bootstrap CSS -->
    <link href="resource/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">MiniTienda</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="Index.aspx">Inicio</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="WFCategories.aspx">Categorias</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="WFProducts.aspx">Productos</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="WFProviders.aspx">Proveedores</a>
                        </li>
                         <li class="nav-item">
                            <a class="nav-link" href="WFUsers.aspx">Usuarios</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div>
            <asp:TextBox ID="TBId" runat="server"></asp:TextBox><br />
            <asp:Label ID="Label2" runat="server" Text="Ingrese el nit"></asp:Label>
            <asp:TextBox ID="TBNit" runat="server"></asp:TextBox><br /><br />
            <asp:Label ID="Label1" runat="server" Text="Ingrese el nombre"></asp:Label>
            <asp:TextBox ID="TBName" runat="server"></asp:TextBox><br /><br />
            <asp:Button ID="BtnSave" runat="server" Text="Guardar" OnClick="BtnSave_Click"/>
            <asp:Button ID="BtnUpdate" runat="server" Text="Actualizar" OnClick="BtnUpdate_Click"/><br />
            <asp:Label ID="LblMsj" runat="server" Text=""></asp:Label><br />
            <asp:GridView ID="GVProvider" runat="server" OnSelectedIndexChanged="GVProvider_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
