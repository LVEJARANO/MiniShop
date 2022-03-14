<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WFCategories.aspx.cs" Inherits="Presentation.WFCategories" %>

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
            <asp:Label ID="Label1" runat="server" Text="Ingrese la descripcion"></asp:Label>
            <asp:TextBox ID="TBDescription" runat="server"></asp:TextBox><br /><br />
            <asp:Button ID="BtnSave" runat="server" Text="Guardar" OnClick="BtnSave_Click" />
            <asp:Button ID="BtnUpdate" runat="server" Text="Actualizar" OnClick="BtnUpdate_Click" /><br />
            <asp:Label ID="LblMsj" runat="server" Text=""></asp:Label><br />
            <asp:GridView ID="GVCategory" runat="server" OnSelectedIndexChanged="GVCategory_SelectedIndexChanged"
                DataKeyNames="cat_id" OnRowDeleting="GVCategory_RowDeleting">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:CommandField ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
