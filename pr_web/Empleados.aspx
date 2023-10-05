<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Empleados.aspx.cs" Inherits="pr_web.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<h1>Formulario Empleados</h1>

<asp:Label ID="lbl_codigo" runat="server" Text="Codigo"> </asp:Label>
<asp:TextBox ID="txt_codigo" runat="server" CssClass="form-control" placeholder="E001"> </asp:TextBox>

<asp:Label ID="lbl_nombres" runat="server" Text="Nombres"> </asp:Label>
<asp:TextBox ID="txt_nombres" runat="server" CssClass="form-control" placeholder="nombre1, nombre2"> </asp:TextBox>

<asp:Label ID="lbl_apellidos" runat="server" Text="Apellidos"> </asp:Label>
<asp:TextBox ID="txt_apellidos" runat="server" CssClass="form-control" placeholder="apellido1, apellido2"> </asp:TextBox>

<asp:Label ID="lbl_direccion" runat="server" Text="Direccion"> </asp:Label>
<asp:TextBox ID="txt_direccion" runat="server" CssClass="form-control" placeholder="calle,zona,ciudad"> </asp:TextBox>

<asp:Label ID="lbl_telefono" runat="server" Text="Telefono"> </asp:Label>
<asp:TextBox ID="txt_telefono" runat="server" CssClass="form-control" placeholder="+50223602023" TextMode="Number"> </asp:TextBox>

<asp:Label ID="lbl_fn" runat="server" Text="Fecha Nacimiento"> </asp:Label>
    <asp:TextBox ID="txt_fn" runat="server" CssClass="form-control" placeholder="yyyy-mm-dd" TextMode="Date" OnTextChanged="txt_fn_TextChanged"> </asp:TextBox>

<asp:Label ID="lbl_puesto" runat="server" Text="Puesto"> </asp:Label>
<asp:DropDownList ID="drop_puesto" runat="server" CssClass="form-control"></asp:DropDownList>

    <asp:Button ID="btn_crear" runat="server" Text="CREAR" class="btn btn-primary" OnClick="btn_crear_Click" />
<asp:Button ID="btn_actualizar" runat="server" Text="ACTUALIZAR" class="btn btn-warning" />


    <asp:GridView ID="grid_empleados" runat="server" AutoGenerateColumns="False" DataKeyNames="id,id_puesto">
        <Columns>

            <asp:TemplateField ShowHeader="false">
             <ItemTemplate>
             <asp:Button ID="btn_select" runat="server" CausesValidation="False" CommandName="Select" Text="VER" CssClass="btn btn-success"/>
             </ItemTemplate>
             </asp:TemplateField>

             <asp:TemplateField ShowHeader="false">
             <ItemTemplate>
             <asp:Button ID="btn_borrar" runat="server" CausesValidation="False" CommandName="Delete" Text="BORRAR" CssClass="btn btn-danger"/>
             </ItemTemplate>
             </asp:TemplateField>
           
            
            <asp:BoundField DataField="codigo" HeaderText="Codigo"></asp:BoundField>
            <asp:BoundField DataField="nombres" HeaderText="Nombres"></asp:BoundField>
            <asp:BoundField DataField="apellidos" HeaderText="Apellidos"></asp:BoundField>
            <asp:BoundField DataField="direccion" HeaderText="Direccion"></asp:BoundField>
            <asp:BoundField DataField="telefono" HeaderText="Telefono"></asp:BoundField>
            <asp:BoundField DataField="fecha_nacimiento" DataFormatString="{0:d}" HeaderText="Nacimiento"></asp:BoundField>
            <asp:BoundField DataField="puesto" HeaderText="Puesto"></asp:BoundField>
        </Columns>
    </asp:GridView>

</asp:Content>
