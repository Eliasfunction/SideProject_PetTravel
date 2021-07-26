<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="leavemsg.aspx.cs" Inherits="pettravel.leavemsg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="標題: " Font-Size="16"></asp:Label>
            <asp:TextBox ID="header" runat="server" Height="27px" Width="241px" required="" aria-required="true" oninput="setCustomValidity('');" oninvalid="setCustomValidity('記得填寫標題唷!!!')"></asp:TextBox><br /><br />
            <asp:Label ID="Label2" runat="server" Text="暱稱: " Font-Size="16"></asp:Label>
            <asp:TextBox ID="name" runat="server" Height="27px" Width="241px" required="" aria-required="true" oninput="setCustomValidity('');" oninvalid="setCustomValidity('記得填寫名字唷!!!')"></asp:TextBox><br /><br />
            <asp:Label ID="Label3" runat="server" Text="內容: " Font-Size="16"></asp:Label><br />
            <asp:TextBox ID="main" runat="server" Height="477px" TextMode="MultiLine" Width="596px" required="" aria-required="true" oninput="setCustomValidity('');" oninvalid="setCustomValidity('記得填寫留言唷!!!')"></asp:TextBox>
            <br />
            <br />
            <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="confirm" runat="server" Text="確定留言" Height="55px" Width="130px" OnClick="confirm_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="rewrite" runat="server" Text="重新填寫" Height="55px" Width="130px" OnClick="rewrite_Click" />
            </p>
        </div>
    </form>
</body>
</html>
