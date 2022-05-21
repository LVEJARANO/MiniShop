<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WFUsers.aspx.cs" Inherits="Presentation.WFUsers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Usuarios</title>
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
        <div class="container-fluid">
            <asp:Label ID="LblId" runat="server" Text=""></asp:Label>
            <div class="row mt-2">
                <div class="col">
                    <asp:Label ID="Label1" runat="server" Text="Ingrese el correo"></asp:Label>
                    <asp:TextBox ID="TBMail" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                </div>
                <div class="col">
                    <asp:Label ID="Label2" runat="server" Text="Ingrese la contraseña"></asp:Label>
                    <asp:TextBox ID="TBContrasena" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                </div>
                <div class="col">
                    <asp:Label ID="Label3" runat="server" Text="Estado"></asp:Label>
                    <asp:DropDownList ID="DDLState" runat="server" CssClass="form-select">
                        <asp:ListItem Value="0">Seleccione</asp:ListItem>
                        <asp:ListItem Value="Activo">Activo</asp:ListItem>
                        <asp:ListItem Value="Inactivo">Inactivo</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="row mt-2">
                <div class="col">
                    <asp:Button ID="BtnSave" runat="server" CssClass="btn btn-success" Text="Guardar" OnClick="BtnSave_Click" />
                    <asp:Button ID="BtnUpdate" runat="server" CssClass="btn btn-primary" Text="Actualizar" OnClick="BtnUpdate_Click" />
                    <asp:Label ID="LblMsj" runat="server" Text=""></asp:Label>
                </div>
            </div>
            <div class="row mt-2">
                <div class="col">
                    <div class="table-responsive">
                        <asp:GridView ID="GVUsers" runat="server" CssClass="table" AutoGenerateColumns="False"
                            OnSelectedIndexChanged="GVUsers_SelectedIndexChanged">
                            <Columns>
                                <asp:BoundField DataField="usu_id" HeaderText="Id" />
                                <asp:BoundField DataField="usu_correo" HeaderText="Correo" />
                                <asp:BoundField DataField="usu_contrasena" HeaderText="Contraseña" />
                                <asp:BoundField DataField="usu_salt" HeaderText="Salt" />
                                <asp:BoundField DataField="usu_estado" HeaderText="Estado" />
                                <asp:CommandField ShowSelectButton="True" />
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
