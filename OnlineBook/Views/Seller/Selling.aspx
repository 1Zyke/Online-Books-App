<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Seller/SellerMaster.Master" AutoEventWireup="true" CodeBehind="Selling.aspx.cs" Inherits="OnlineBook.Views.Seller.Selling" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        function PrintBill() {
            var PGrid = document.getElementById('<%=BillList.ClientID%>');
            PGrid.bordr = 0;
            var PWin = window.open('', 'PrintGrid', 'left=100, top=100, width=1024, height=768, tollbar = 0, scrollbars = 1, status = 0, resizable = 1');
            PWin.document.write(PGrid.outerHTML);
            PWin.document.close();
            PWin.focus();
            PWin.print();
            PWin.close();
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">

    <div class="container-fluid">
        <div class="row">

        </div>
        <div class="row">
            <div class="col-md-5">
                <h3 class="text-center" style="color:teal;">Book Details</h3>

                <div class="row">
                    <div class="col">
                        <div class="mt-3">
                            <label for="" class="form-label text-success">Book Name</label>
                            <input type="text" placeholder="Book's Name" autocomplete="off" runat="server" class="form-control" id="BNameTb" />
                        </div>
                    </div>
                    <div class="col">
                        <div class="mt-3">
                            <label for="" class="form-label text-success">Book Price</label>
                            <input type="text" placeholder="Price" autocomplete="off" runat="server" class="form-control" id="BPriceTb" />
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <div class="mt-3">
                            <label for="" class="form-label text-success">Quantity</label>
                            <input type="text" placeholder="Quantity" autocomplete="off" runat="server" class="form-control" id="BQtyTb" />
                        </div>
                    </div>
                    <div class="col">
                        <div class="mt-3">
                            <label for="" class="form-label text-success">Billing Date</label>
                            <input type="datetime" runat="server" class="form-control" id="DateTb" />
                        </div>
                    </div>
                    <div class="row mt-3 mb-3">
                        <div class="col d-grid">
                            <asp:Button Text="Add to Bill" ID="AddToBill" runat="server" class="btn-warning btn-block btn" OnClick="AddToBill_Click" /></div>
                        </div>
                    </div>
                </div>
                <div class="row mt-5">
                    <h4 class="text-center" style="color:teal;">Book List</h4>
                    <div class="col">
                         <asp:GridView ID="BooksList" runat="server" class="table table-bordered table-striped table-hover table-dark" CellPadding="4" AutoGenerateSelectButton="True" OnSelectedIndexChanged="BooksList_SelectedIndexChanged">
                            <HeaderStyle CssClass="header-style" />
                            <RowStyle CssClass="row-style" />
                        </asp:GridView>
                    </div>
                </div>
            </div>
            <div class="col-md-7">
                <h4 class="text-center" style="color:crimson;">Client's Bill</h4>
                    <div class="col">
                         <asp:GridView ID="BillList" runat="server" class="table table-bordered table-striped table-hover table-dark" CellPadding="4" AutoGenerateSelectButton="True" OnSelectedIndexChanged="BooksList_SelectedIndexChanged">
                            <HeaderStyle CssClass="header-style" />
                            <RowStyle CssClass="row-style" />
                        </asp:GridView>

                        <div class="d-grid">
                            <asp:Label runat="server" ID="GrdTotalTb" class="text-danger text-center"></asp:Label><br />
                            <asp:Button Text="Print" ID="PrintBtn" OnClientClick="PrintBill()" runat="server" class="btn-warning btn-block btn" OnClick="PrintBtn_Click" /></div>
                        </div>

                    </div>
            </div>
            <footer class="text-center mt-5">
                <div class="container">
                    <p>&copy; 2023 Zyke. Todos los derechos reservados.</p>
                </div>
            </footer>
</asp:Content>
