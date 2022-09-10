<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="EParking.Test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body style="height: 613px">
    <form id="form1" runat="server">
        <div>
            <div>  
</div>  
            <br />
            <br />
            <br />
            <asp:DropDownList ID="DropDownList1" runat="server" Height="17px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="122px">
            </asp:DropDownList>
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
            <div style="width:269px">
                <asp:Repeater OnItemCommand="Repeater1_ItemCommand" ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <asp:Button runat="server" ID="Btn" Text='<%# Eval("Value") %>' />
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        </div>
        <asp:Table ID="Table2" runat="server" Height="168px" Width="289px">
        </asp:Table>
            <asp:Button ID="Button2" runat="server" OnClick="Button1_Click" Text="Button" />
    </form>
</body>
</html>
