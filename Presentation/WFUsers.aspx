<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WFUsers.aspx.cs" Inherits="Presentation.WFUsers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="LblId" runat="server" Text=""></asp:Label><br />
            <asp:Label ID="Label1" runat="server" Text="Ingrese el correo"></asp:Label>
            <asp:TextBox ID="TBMail" runat="server"></asp:TextBox><br />
            <asp:Label ID="Label2" runat="server" Text="Ingrese la contraseña"></asp:Label>
            <asp:TextBox ID="TBContrasena" runat="server" TextMode="Password"></asp:TextBox><br />
            <asp:DropDownList ID="DDLState" runat="server">
                <asp:ListItem Value="0">Seleccione</asp:ListItem>
                <asp:ListItem Value="Activo">Activo</asp:ListItem>
                <asp:ListItem Value="Inactivo">Inactivo</asp:ListItem>
            </asp:DropDownList> <br />
            <asp:Button ID="BtnSave" runat="server" Text="Guardar" OnClick="BtnSave_Click" />
            <asp:Button ID="BtnUpdate" runat="server" Text="Actualizar" OnClick="BtnUpdate_Click" /><br />
            <asp:Label ID="LblMsj" runat="server" Text=""></asp:Label><br />
            <asp:GridView ID="GVUsers" runat="server" AutoGenerateColumns="False" 
                OnSelectedIndexChanged="GVUsers_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="usu_id" HeaderText="Id"/>
                    <asp:BoundField DataField="usu_correo" HeaderText="Correo"/>
                    <asp:BoundField DataField="usu_contrasena" HeaderText="Contraseña"/>
                    <asp:BoundField DataField="usu_salt" HeaderText="Salt"/>
                    <asp:BoundField DataField="usu_estado" HeaderText="Estado"/>
                    <asp:CommandField ShowSelectButton="True" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
