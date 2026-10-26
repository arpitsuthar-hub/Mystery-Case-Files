
<%@ Page Title="All Detectives"
    Language="C#"
    MasterPageFile="~/Master_Pages/Detective_Module.Master"
    AutoEventWireup="true"
    CodeBehind="All_Detective.aspx.cs"
    Inherits="Mystery_Case_Files.Detective_Module.All_Detective" %>

<asp:Content ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <link href="../CSS/Detective_Module/All_Detective.css"
        rel="stylesheet"
        type="text/css" />

</asp:Content>

<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <div class="all-detective-page">

        <!-- PAGE HEADER -->
        <div class="detective-page-header">

            <div class="header-icon">
                <i class="fa-solid fa-users"></i>
            </div>

            <div class="header-content">
                <span class="header-subtitle">DETECTIVE MANAGEMENT</span>
                <h1>All Detectives</h1>
                <p>View and manage all registered detectives in the department.</p>
            </div>

            <div class="header-action">
                <asp:HyperLink ID="lnkAddDetective"
                    runat="server"
                    NavigateUrl="~/Detective_Module/AddNew_Detective.aspx"
                    CssClass="btn-add-detective">

                    <i class="fa-solid fa-user-plus"></i>
                    <span>Add Detective</span>

                </asp:HyperLink>
            </div>

        </div>

        <!-- SUMMARY CARDS -->
        <div class="detective-summary">

            <div class="summary-card">
                <div class="summary-icon">
                    <i class="fa-solid fa-users"></i>
                </div>

                <div class="summary-details">
                    <span class="summary-label">Total Detectives</span>
                    <h2>
                        <asp:Label ID="lblTotalDetectives"
                            runat="server"
                            Text="00" />
                    </h2>
                </div>
            </div>

            <div class="summary-card">
                <div class="summary-icon active-icon">
                    <i class="fa-solid fa-user-check"></i>
                </div>

                <div class="summary-details">
                    <span class="summary-label">Department</span>
                    <h2>All Units</h2>
                </div>
            </div>

            <div class="summary-card">
                <div class="summary-icon security-icon">
                    <i class="fa-solid fa-shield-halved"></i>
                </div>

                <div class="summary-details">
                    <span class="summary-label">Records</span>
                    <h2>Registered</h2>
                </div>
            </div>

        </div>

        <!-- DETECTIVE LIST PANEL -->
        <div class="detective-list-panel">

            <div class="panel-header">

                <div>
                    <h2>
                        <i class="fa-solid fa-address-book"></i>
                        Detective Directory
                    </h2>

                    <p>Complete list of registered detective profiles.</p>
                </div>

                <div class="record-count">
                    <i class="fa-solid fa-database"></i>

                    <asp:Label ID="lblRecordCount"
                        runat="server"
                        Text="0 Records" />
                </div>

            </div>

            <!-- SEARCH AND FILTER -->
            <div class="detective-toolbar">

                <div class="toolbar-search">

                    <i class="fa-solid fa-magnifying-glass"></i>

                    <asp:TextBox ID="txtSearchDetective"
                        runat="server"
                        CssClass="search-input"
                        placeholder="Search by ID, name, department or contact..." />

                </div>

                <asp:Button ID="btnSearch"
                    runat="server"
                    Text="Search"
                    CssClass="btn-search"
                    CausesValidation="false" />

                <asp:Button ID="btnShowAll"
                    runat="server"
                    Text="Show All"
                    CssClass="btn-show-all"
                    CausesValidation="false" />

            </div>

            <!-- DETECTIVE GRID -->
            <div class="table-container">

                <asp:GridView ID="GridAllDetectives"
                    runat="server"
                    AutoGenerateColumns="False"
                    CssClass="detective-grid"
                    GridLines="None"
                    Width="100%"
                    EmptyDataText="No detective records found."
                    ShowHeaderWhenEmpty="True">

                    <Columns>

                        <asp:BoundField
                            DataField="detective_id"
                            HeaderText="Detective ID" />

                        <asp:BoundField
                            DataField="detective_name"
                            HeaderText="Full Name" />

                        <asp:BoundField
                            DataField="detective_age"
                            HeaderText="Age" />

                        <asp:BoundField
                            DataField="detective_gender"
                            HeaderText="Gender" />

                        <asp:BoundField
                            DataField="detective_department"
                            HeaderText="Department" />

                        <asp:BoundField
                            DataField="detective_contact"
                            HeaderText="Contact Number" />

                        <asp:BoundField
                            DataField="detective_email"
                            HeaderText="Email Address" />

                        <asp:BoundField
                            DataField="detective_registerdate"
                            HeaderText="Registration Date"
                            DataFormatString="{0:dd MMM yyyy}"
                            HtmlEncode="false" />

                        <asp:TemplateField HeaderText="Actions">

                            <ItemTemplate>

                                <div class="action-buttons">

                                    <asp:HyperLink ID="lnkView"
                                        runat="server"
                                        CssClass="action-btn view-btn"
                                        ToolTip="View Detective"
                                        NavigateUrl='<%# "Detective_Profile.aspx?id=" + Server.UrlEncode(Convert.ToString(Eval("detective_id"))) %>'>

                                        <i class="fa-solid fa-eye"></i>

                                    </asp:HyperLink>

                                    <asp:HyperLink ID="lnkEdit"
                                        runat="server"
                                        CssClass="action-btn edit-btn"
                                        ToolTip="Edit Detective"
                                        NavigateUrl='<%# "Edit_Detective.aspx?id=" + Server.UrlEncode(Convert.ToString(Eval("detective_id"))) %>'>

                                        <i class="fa-solid fa-pen-to-square"></i>

                                    </asp:HyperLink>

                                </div>

                            </ItemTemplate>

                        </asp:TemplateField>

                    </Columns>

                    <EmptyDataRowStyle CssClass="empty-data-row" />

                </asp:GridView>

            </div>

            <!-- FOOTER -->
            <div class="table-footer">

                <div class="footer-note">
                    <i class="fa-solid fa-circle-info"></i>
                    <span>Detective records are maintained by the department.</span>
                </div>

                <div class="footer-status">
                    <span class="status-indicator"></span>
                    Directory
                </div>

            </div>

        </div>

    </div>

</asp:Content>
