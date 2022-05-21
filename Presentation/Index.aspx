<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Presentation.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Mi Tienda</title>
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
                        <div class="col-12">
                            Aqui va el contenido
                        </div>
                    </div>
                </div>
            </section>
        </main>
    </form>
</body>
</html>
