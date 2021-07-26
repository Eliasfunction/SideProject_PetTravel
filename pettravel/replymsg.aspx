<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="replymsg.aspx.cs" Inherits="pettravel.replymsg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>回應留言</h1>
                    <asp:Label ID="Label1" runat="server" Text="標題: " Font-Size="16"></asp:Label>
        <asp:TextBox ID="Reply_Header" runat="server" ></asp:TextBox><br />
        <br />
                        <asp:Label ID="Label2" runat="server" Text="暱稱: " Font-Size="16"></asp:Label>
            <asp:TextBox ID="Reply_Name" runat="server" ></asp:TextBox><br />
        <br />
       <asp:Label ID="Label3" runat="server" Text="內容: " Font-Size="16"></asp:Label>
        <br />
        <asp:TextBox ID="Reply_Main" runat="server" Height="427px" TextMode="MultiLine" Width="928px"></asp:TextBox>
        <br />
        <br />
        <br />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="confirm" runat="server" Text="確定回覆" Height="55px" Width="130px" OnClick="confirm_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="rewrite" runat="server" Text="重新填寫" Height="55px" Width="130px" OnClick="rewrite_Click" />
        <asp:Label ID="Message" runat="server" ForeColor="red" Text=""></asp:Label>
    </form>
</body>
</html>
