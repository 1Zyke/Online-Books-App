<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Books.aspx.cs" Inherits="OnlineBook.Views.Admin.Books" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
 <div class="container-fluid">
     <div class="row">
         <div class="col">
             <h3 class="text-center">Manage Books</h3></div>
     </div>
     <div class="row">
         <div class="col-md-4">
             <div class="mb-3">
                 <label for="" class="form-label text-success">Books Title</label>
                 <input type="text" placeholder="Title" id="BNameTb" runat="server" autocomplete="off" class="form-control"/>
             </div>
             <div class="mb-3">
                 <label for="" class="form-label text-success">Books Authors</label>
                 <asp:DropDownList id="BAuthCb" runat="server" class="form-control">
                 </asp:DropDownList>
             </div>
             <div class="mb-3">
                 <label for="" class="form-label text-success">Categories</label> 
                 <asp:DropDownList id="BCatCb" runat="server" class="form-control">
                 </asp:DropDownList>
             </div>
             <div class="mb-3">
                 <label for="" class="form-label text-success">Price</label>
                 <input type="text" placeholder="Price" id="PriceTb" runat="server" autocomplete="off" class="form-control"/>
             </div>
             <div class="mb-3">
                 <label for="" class="form-label text-success">Quantity</label>
                 <input type="text" placeholder="Quantity" id="QtyTb" runat="server" autocomplete="off" class="form-control"/>
             </div>
             <div class="row">
                 <asp:Label runat="server" ID="ErrMsg" class="text-danger text-center"></asp:Label>
                 <div class="col d-grid">
                     <asp:Button Text="Update" ID="UpdateBtn" runat="server" class="btn-warning btn-block btn" OnClick="UpdateBtn_Click" /></div>
                 <div class="col d-grid"><asp:Button Text="Save" ID="AddBtn" runat="server" class="btn-success btn-block btn" OnClick="Unnamed2_Click" /></div>
                 <div class="col d-grid">
                     <asp:Button Text="Delete" ID="DeleteBtn" runat="server" class="btn-danger btn-clock btn" OnClick="DeleteBtn_Click" /></div>
             </div>
         </div>
         <div class="col-md-8">
             <asp:GridView ID="BooksList" runat="server" class="table table-bordered table-striped table-hover table-dark" CellPadding="4" AutoGenerateSelectButton="True" OnSelectedIndexChanged="BooksList_SelectedIndexChanged">
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
