<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="hasta_kayit._Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Button ID="btnRedirectToAddPatients" OnClick="btnRedirectToAddPatients_Click" class="btn btn-primary" runat="server" Text="Yeni Hasta Kaydı" />
    <h2>Hasta Listesi</h2>
    <asp:GridView ID="gvHastaListesi" CssClass="table table-bordered border-primary" runat="server" AutoGenerateColumns="False" EmptyDataText="Kayıtlı hasta bulunmamaktadır.">
        <Columns>
            <asp:BoundField DataField="Ad" HeaderText="Ad" />
            <asp:BoundField DataField="Soyad" HeaderText="Soyad" />
            <asp:BoundField DataField="Yas" HeaderText="Yaş" />
            <asp:BoundField DataField="TcKimlik" HeaderText="TC Kimlik" />
            <asp:BoundField DataField="Email" HeaderText="E-posta" />
            <asp:BoundField DataField="Adres" HeaderText="Adres" />
            <asp:BoundField DataField="Cinsiyet" HeaderText="Cinsiyet" />
        </Columns>
    </asp:GridView>
    <br />
</asp:Content>
