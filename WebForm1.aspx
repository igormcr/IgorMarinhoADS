<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1_IgorMarinhoCarneiroRodrigues2021.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
    .preformatted 
    {
        white-space: pre-line;
    }
</style>
</head>
<body>
    
    <div class="navbar navbar-inverse navbar-fixed-top">

    </div>
    <div class="container body-content">
        <h1>Painel de Controle</h1>
        <hr />
        <footer>
            <p>My ASP.NET Application</p>
        </footer>
    </div>

    <h2>Painel de Usuários</h2>
    <form id="form1" runat="server">

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Clientes]" ProviderName="System.Data.SqlClient"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Height="16px" style="margin-top: 0px" Width="16px">
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <h2>&nbsp;</h2>
        <h2>Todos os Clientes</h2>
        <asp:EntityDataSource ID="EntityDataSource1" runat="server">
        </asp:EntityDataSource>
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
        </asp:GridView>
        <br />
        <h2>Todas as Contas de Todos os Clientes</h2>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Contas]" ProviderName="System.Data.SqlClient"></asp:SqlDataSource>
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="id_conta" DataSourceID="SqlDataSource3" AllowPaging="True" AllowSorting="True">
            <Columns>
                <asp:BoundField DataField="id_conta" HeaderText="id_conta" InsertVisible="False" ReadOnly="True" SortExpression="id_conta" />
                <asp:BoundField DataField="nome_conta" HeaderText="nome_conta" SortExpression="nome_conta" />
                <asp:BoundField DataField="numero_conta" HeaderText="numero_conta" SortExpression="numero_conta" />
                <asp:BoundField DataField="id_cliente" HeaderText="id_cliente" SortExpression="id_cliente" />
                <asp:BoundField DataField="saldo" HeaderText="saldo" SortExpression="saldo" />
                <asp:BoundField DataField="tipo_conta" HeaderText="tipo_conta" SortExpression="tipo_conta" />
            </Columns>
        </asp:GridView>
        <br />
        <br />
        <h2>Todas as Contas de Um Cliente</h2>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Clientes.id_cliente, Contas.id_cliente AS Expr1, Clientes.nome_cliente, Contas.nome_conta, Contas.numero_conta, Contas.saldo, Contas.tipo_conta FROM Clientes INNER JOIN Contas ON Clientes.id_cliente = Contas.id_cliente"></asp:SqlDataSource>
    </form>
</body>
</html>
