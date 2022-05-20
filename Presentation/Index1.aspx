<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index1.aspx.cs" Inherits="Presentation.Index1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Inicio</title>
    <link href="resource/css/bootstrap.css" rel="stylesheet" />
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
    </form>
</body>
</html>
