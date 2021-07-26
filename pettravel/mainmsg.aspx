<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mainmsg.aspx.cs" Inherits="pettravel.mainmsg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1><b style="color:red;">留言內容 :</b></h1>
        <br />
        <div>
            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="Red" OnClick="LinkButton1_Click">回應文章</asp:LinkButton>
            <br />
            <br />
            主題:<asp:Label ID="Message_header" runat="server" Text="Label"></asp:Label>
            <br />
            發表人:<asp:Label ID="Message_Name" runat="server" Text="Label"></asp:Label><br />
            發表時間:<asp:Label ID="Message_Time" runat="server" Text="Label"></asp:Label>
            <br />
            內容:<asp:Label ID="Main" runat="server" Text="Label"></asp:Label>
            <br/>
        </div>
        <br />
        <h2><b style="color:red;">回覆內容 :</b></h2>
        <br />
         <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>              
        <asp:Label ID="who" runat="server" Text='<%# Bind("name") %>'></asp:Label> 
                <br />
        <asp:Label  ID ="repmain" runat="server" Text='<%# Bind("main") %>'></asp:Label>        <br />
                <asp:Label ID="initdate" runat="server" Text='<%# Bind("initdate") %>'></asp:Label>      
                <br />
                <br />
            </ItemTemplate>
           </asp:Repeater>
    </form>
</body>
</html>
