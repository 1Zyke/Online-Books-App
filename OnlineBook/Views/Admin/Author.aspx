<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Author.aspx.cs" Inherits="OnlineBook.Views.Admin.Author" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">

    <div class="container-fluid">
     <div class="row">
         <div class="col">
             <h3 class="text-center">Manage Authors</h3></div>
     </div>
     <div class="row">
         <div class="col-md-4">
             <div class="mb-3">
                 <label for="" class="form-label text-success">Author Name</label>
                 <input type="text" runat="server" placeholder="Title" autocomplete="off" class="form-control" id="ANameTb"/>
             </div>
             <div class="mb-3">
                 <label for="" class="form-label text-success">Author Gender</label>
                 <asp:DropDownList runat="server" class="form-control" id="GenCb">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                 </asp:DropDownList>
             </div>
             <div class="mb-3">
                 <label for="" class="form-label text-success">Country</label> 
                 <asp:DropDownList ID="CountryCb" runat="server" class="form-control">
                     <asp:ListItem>Germany</asp:ListItem>
                     <asp:ListItem>Argentina</asp:ListItem>
                     <asp:ListItem>Australia</asp:ListItem>
                     <asp:ListItem>Brazil</asp:ListItem>
                     <asp:ListItem>Canada</asp:ListItem>
                     <asp:ListItem>Chile</asp:ListItem>
                     <asp:ListItem>China</asp:ListItem>
                     <asp:ListItem>Colombia</asp:ListItem>
                     <asp:ListItem>Dominican Republic</asp:ListItem>
                     <asp:ListItem>South Korea</asp:ListItem>
                     <asp:ListItem>Spain</asp:ListItem>
                     <asp:ListItem>United States</asp:ListItem>
                     <asp:ListItem>France</asp:ListItem>
                     <asp:ListItem>India</asp:ListItem>
                     <asp:ListItem>Italy</asp:ListItem>
                     <asp:ListItem>Japan</asp:ListItem>
                     <asp:ListItem>Mexico</asp:ListItem>
                     <asp:ListItem>United Kingdom</asp:ListItem>
                     <asp:ListItem>Russia</asp:ListItem>
                     <asp:ListItem>Venezuela</asp:ListItem>
                     <asp:ListItem>South Africa</asp:ListItem>
                 </asp:DropDownList>
             </div>
             <div class="row">
                 <asp:Label runat="server" ID="ErrMsg" class="text-danger text-center"></asp:Label>
                 <div class="col d-grid">
                     <asp:Button Text="Update" runat="server" ID="EditBtn" class="btn-warning btn-block btn" OnClick="EditBtn_Click" /></div>
                 <div class="col d-grid">
                     <asp:Button Text="Save" runat="server" ID="SaveBtn" class="btn-success btn-block btn" OnClick="SaveBtn_Click" /></div>
                 <div class="col d-grid">
                     <asp:Button Text="Delete" runat="server" ID="DeleteBtn" class="btn-danger btn-clock btn" OnClick="DeleteBtn_Click" /></div>
             </div>
         </div>
             <div class="col-md-8">
                 <asp:GridView ID="AuthorsList" runat="server" class="table table-bordered table-striped table-hover table-dark" CellPadding="4" AutoGenerateSelectButton="True" OnSelectedIndexChanged="AuthorsList_SelectedIndexChanged">
                    <HeaderStyle CssClass="header-style" />
                    <RowStyle CssClass="row-style" />
                </asp:GridView>
            </div>

     </div>
 </div>
    <footer class="text-center mt-3">
    <div class="container">
        <p>&copy; 2023 Zyke. Todos los derechos reservados.</p>
    </div>
</footer>
</asp:Content>


