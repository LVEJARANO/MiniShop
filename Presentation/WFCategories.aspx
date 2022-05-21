<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WFCategories.aspx.cs" Inherits="Presentation.WFCategories" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Categorias</title>
    <!-- Bootstrap CSS -->
    <link href="resource/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <main>
            <section>
                <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
                    <div class="container-fluid">
                        <a class="navbar-brand" href="#">MiniShop</a>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup"
                            aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                            <div class="navbar-nav">
                                <a class="nav-link active" aria-current="page" href="Index.aspx">Inicio</a>
                                <a class="nav-link" href="WFCategories.aspx">Categorias</a>
                                <a class="nav-link" href="WFProducts.aspx">Productos</a>
                                <a class="nav-link" href="WFProviders.aspx">Proveedores</a>
                                <a class="nav-link" href="WFUsers.aspx">Usuarios</a>
                            </div>
                        </div>
                    </div>
                </nav>
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-6">
                            <asp:TextBox ID="TBId" runat="server" Visible="false"></asp:TextBox><br />
                            <asp:Label ID="Label1" runat="server" Text="Ingrese la descripcion"></asp:Label>
                            <asp:TextBox ID="TBDescription" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:Button ID="BtnSave" runat="server" CssClass="btn btn-success mt-2" Text="Guardar" OnClick="BtnSave_Click" />
                            <asp:Button ID="BtnUpdate" runat="server" CssClass="btn btn-primary mt-2" Text="Actualizar" OnClick="BtnUpdate_Click" /><br />
                            <asp:Label ID="LblMsj" runat="server" Text=""></asp:Label><br />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-8">
                             <asp:GridView ID="GVCategory" runat="server" CssClass="table table-hover" OnSelectedIndexChanged="GVCategory_SelectedIndexChanged"
                                DataKeyNames="cat_id" OnRowDeleting="GVCategory_RowDeleting" AutoGenerateColumns="False">
                                <Columns>
                                    <asp:BoundField DataField="cat_id" HeaderText="Id" />
                                    <asp:BoundField DataField="cat_descripcion" HeaderText="Descripcion" />
                                    <asp:CommandField ShowSelectButton="True" />
                                    <asp:CommandField ShowDeleteButton="True" />
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </section>
        </main>
        <div>
        </div>
    </form>
</body>
</html>
