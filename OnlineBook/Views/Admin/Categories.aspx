<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Categories.aspx.cs" Inherits="OnlineBook.Views.Admin.Categories" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
    <div class="container-fluid">
     <div class="row">
         <div class="col">
             <h3 class="text-center">Manage Categories</h3></div>
     </div>
     <div class="row">
         <div class="col-md-4">
             <div class="mb-3">
                 <label for="" class="form-label text-success">Category Name</label>
                 <input type="text" placeholder="Title" autocomplete="off" class="form-control" runat="server" id="CatNameTb"/>
             </div>
             <div class="mb-3">
                 <label for="" class="form-label text-success">Category Description</label>
                 <input type="text" placeholder="Description" autocomplete="off" class="form-control" runat="server" id="DescriptionTb"/>
             </div>
             
             <div class="row">
                 <asp:Label runat="server" ID="ErrMsg" class="text-danger text-center"></asp:Label>
                 <div class="col d-grid">
                     <asp:Button Text="Update" runat="server" ID="EditBtn" class="btn-warning btn-block btn" OnClick="EditBtn_Click" /></div>
                 <div class="col d-grid">
                     <asp:Button Text="Save" runat="server" ID="saveBtn" class="btn-success btn-block btn" OnClick="saveBtn_Click" /></div>
                 <div class="col d-grid">
                     <asp:Button Text="Delete" runat="server" ID="deleteBtn" class="btn-danger btn-clock btn" OnClick="deleteBtn_Click" /></div>
             </div>
         </div>
         <div class="col-md-8">
                 <asp:GridView ID="CategoriesList" runat="server" class="table table-bordered table-striped table-hover table-dark" CellPadding="4" AutoGenerateSelectButton="True" OnSelectedIndexChanged="CategoriesList_SelectedIndexChanged">
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
