﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WFProducts.aspx.cs" Inherits="Presentation.WFProducts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TBId" runat="server"></asp:TextBox><br />
            <asp:Label ID="Label1" runat="server" Text="Ingrese el codigo"></asp:Label>
            <asp:TextBox ID="TBCode" runat="server"></asp:TextBox><br /><br />
            <asp:Label ID="Label2" runat="server" Text="Ingrese la descripcion"></asp:Label>
            <asp:TextBox ID="TBDescription" runat="server"></asp:TextBox><br /><br />
            <asp:Label ID="Label3" runat="server" Text="Ingrese la cantidad"></asp:Label>
            <asp:TextBox ID="TBQuantity" runat="server"></asp:TextBox><br /><br />
            <asp:Label ID="Label4" runat="server" Text="Ingrese el precio"></asp:Label>
            <asp:TextBox ID="TBPrice" runat="server"></asp:TextBox><br /><br />
            <asp:Label ID="Label5" runat="server" Text="Seleccione la categoria"></asp:Label>
            <asp:DropDownList ID="DDLCategories" runat="server"></asp:DropDownList><br />
            <asp:Label ID="Label6" runat="server" Text="Seleccione el provedor"></asp:Label>
            <asp:DropDownList ID="DDLProviders" runat="server"></asp:DropDownList><br />

            <asp:Button ID="BtnSave" runat="server" Text="Guardar" OnClick="BtnSave_Click"/>
            <asp:Button ID="BtnUpdate" runat="server" Text="Actualizar" OnClick="BtnUpdate_Click" /><br />
            <asp:Label ID="LblMsj" runat="server" Text=""></asp:Label><br />
            <asp:GridView ID="GVProducts" runat="server">
            </asp:GridView>
        </div>
    </form>
</body>
</html>