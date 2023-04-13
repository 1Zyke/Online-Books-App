<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Seller.aspx.cs" Inherits="OnlineBook.Views.Admin.Seller" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
    <div class="container-fluid">
     <div class="row">
         <div class="col">
             <h3 class="text-center">Manage Sellers</h3></div>
     </div>
     <div class="row">
         <div class="col-md-4">
             <div class="mb-3">
                 <label for="" class="form-label text-success">Seller Name</label>
                 <input type="text" placeholder="Name" autocomplete="off" runat="server" id="SNameTb" class="form-control"/>
             </div>
             <div class="mb-3">
                 <label for="" class="form-label text-success">Seller Email</label>
                 <input type="email" placeholder="Email" autocomplete="off" runat="server" id="EmailTb" class="form-control"/>
             </div>
             <div class="mb-3">
                 <label for="" class="form-label text-success">Seller Phone</label>
                 <input type="text" placeholder="Phone Number" autocomplete="off" runat="server" id="PhoneTb" class="form-control"/>
             </div>
             <div class="mb-3">
                 <label for="" class="form-label text-success">Seller Address</label>
                 <input type="text" placeholder="Address" autocomplete="off" runat="server" id="Password" class="form-control"/>
             </div>
             
             <div class="row">
                 <asp:Label runat="server" ID="ErrMsg" class="text-danger text-center"></asp:Label>
                 <div class="col d-grid">
                     <asp:Button Text="Update" ID="EditBtn" runat="server" class="btn-warning btn-block btn" OnClick="EditBtn_Click" /></div>
                 <div class="col d-grid">
                     <asp:Button Text="Save" ID="SaveBtn" runat="server" class="btn-success btn-block btn" OnClick="SaveBtn_Click" /></div>
                 <div class="col d-grid">
                     <asp:Button Text="Delete" ID="DeleteBtn" runat="server" class="btn-danger btn-clock btn" OnClick="DeleteBtn_Click" /></div>
             </div>
         </div>
         <div class="col-md-8">
             <asp:GridView ID="SellerList" runat="server" class="table table-bordered table-striped table-hover table-dark" CellPadding="4" AutoGenerateSelectButton="True" OnSelectedIndexChanged="SellerList_SelectedIndexChanged">
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
