<%@ Page Title="Add Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HastaEkle.aspx.cs" Inherits="hasta_kayit.HastaEkle" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Hasta Kayıt</h2>
    <table>
        <!-- Ad -->
        <tr>
            <td>Ad:</td>
            <td>
                <asp:TextBox ID="txtAd" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvAd" runat="server" ControlToValidate="txtAd"
                    ErrorMessage="Ad boş olamaz!" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <!-- Soyad -->
        <tr>
            <td>Soyad:</td>
            <td>
                <asp:TextBox ID="txtSoyad" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvSoyad" runat="server" ControlToValidate="txtSoyad"
                    ErrorMessage="Soyad boş olamaz!" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <!-- Yaş -->
        <tr>
            <td>Yaş:</td>
            <td>
                <asp:TextBox ID="txtYas" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvYas" runat="server" ControlToValidate="txtYas"
                    ErrorMessage="Yaş boş olamaz!" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="rvYas" runat="server" ControlToValidate="txtYas"
                    MinimumValue="0" MaximumValue="120" Type="Integer"
                    ErrorMessage="Yaş 0 ile 120 arasında olmalı!" Display="Dynamic" ForeColor="Red"></asp:RangeValidator>
            </td>
        </tr>
        <!-- TC Kimlik -->
        <tr>
            <td>TC Kimlik:</td>
            <td>
                <asp:TextBox ID="txtTc" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvTc" runat="server" ControlToValidate="txtTc"
                    ErrorMessage="TC Kimlik boş olamaz!" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revTc" runat="server" ControlToValidate="txtTc"
                    ValidationExpression="^\d{11}$" ErrorMessage="TC Kimlik 11 haneli olmalı!"
                    Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <!-- E-posta -->
        <tr>
            <td>E-posta:</td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail"
                    ErrorMessage="E-posta boş olamaz!" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail"
                    ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$"
                    ErrorMessage="Geçerli bir e-posta adresi giriniz!" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <!-- Adres -->
        <tr>
            <td>Adres:</td>
            <td>
                <asp:TextBox ID="txtAdres" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvAdres" runat="server" ControlToValidate="txtAdres"
                    ErrorMessage="Adres boş olamaz!" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <!-- Cinsiyet -->
        <tr>
            <td>Cinsiyet:</td>
            <td>
                <asp:DropDownList ID="ddlCinsiyet" runat="server" CssClass="form-control">
                    <asp:ListItem Text="Seçiniz" Value=""></asp:ListItem>
                    <asp:ListItem Text="Erkek" Value="Erkek"></asp:ListItem>
                    <asp:ListItem Text="Kadın" Value="Kadın"></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvCinsiyet" runat="server" ControlToValidate="ddlCinsiyet"
                    InitialValue="" ErrorMessage="Cinsiyet seçilmelidir!" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <!-- Kaydet Butonu --> 
        <tr>
            <td colspan="2">
                <asp:Button ID="btnRedirectToDefaultPage" OnClick="btnRedirectToDefaultPage_Click" CausesValidation="false" class="btn btn-danger" runat="server" Text="Listeye Git" />
                <asp:Button ID="btnKaydet" type="button" runat="server" class="btn btn-success" OnClick="btnKaydet_Click" Text="Kaydet" />
            </td>
        </tr>
    </table>
    <br />
</asp:Content>
