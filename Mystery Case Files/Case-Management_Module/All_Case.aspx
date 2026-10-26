
<%@ Page Title="All Cases"
    Language="C#"
    MasterPageFile="~/Master_Pages/Case.Master"
    AutoEventWireup="true"
    CodeBehind="All_Case.aspx.cs"
    Inherits="Mystery_Case_Files.Case_Management_Module.All_Case" %>

<asp:Content ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <link href="../CSS/Case-Management/All_Case.css"
        rel="stylesheet"
        type="text/css" />

</asp:Content>


<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <div class="all-cases-page">

        <!-- PAGE HEADER -->
        <div class="page-header">

            <div class="header-left">

                <div class="header-icon">
                    <i class="fa-solid fa-folder-open"></i>
                </div>

                <div>
                    <span class="eyebrow">
                        CASE MANAGEMENT SYSTEM
                    </span>

                    <h1>All Cases</h1>

                    <p>
                        Manage, review, and investigate registered cases.
                    </p>
                </div>

            </div>

            <asp:HyperLink ID="lnkAddCase"
                runat="server"
                NavigateUrl="~/Case_Management_Module/AddNew_Case.aspx"
                CssClass="add-case-button">

                <i class="fa-solid fa-plus"></i>
                Add New Case

            </asp:HyperLink>

        </div>


        <!-- MESSAGE -->
        <asp:Panel ID="pnlMessage"
            runat="server"
            CssClass="message-panel"
            Visible="false">

            <i class="fa-solid fa-circle-info"></i>

            <asp:Label ID="lblMessage"
                runat="server">
            </asp:Label>

        </asp:Panel>


        <!-- STATISTICS -->
        <div class="statistics-grid">

            <div class="stat-card">

                <div class="stat-icon total-icon">
                    <i class="fa-solid fa-folder"></i>
                </div>

                <div class="stat-info">
                    <span>Total Cases</span>

                    <asp:Label ID="lblTotalCases"
                        runat="server"
                        CssClass="stat-number"
                        Text="0">
                    </asp:Label>
                </div>

            </div>


            <div class="stat-card">

                <div class="stat-icon open-icon">
                    <i class="fa-solid fa-folder-open"></i>
                </div>

                <div class="stat-info">
                    <span>Open Cases</span>

                    <asp:Label ID="lblOpenCases"
                        runat="server"
                        CssClass="stat-number"
                        Text="0">
                    </asp:Label>
                </div>

            </div>


            <div class="stat-card">

                <div class="stat-icon assigned-icon">
                    <i class="fa-solid fa-user-shield"></i>
                </div>

                <div class="stat-info">
                    <span>Assigned Cases</span>

                    <asp:Label ID="lblAssignedCases"
                        runat="server"
                        CssClass="stat-number"
                        Text="0">
                    </asp:Label>
                </div>

            </div>


            <div class="stat-card">

                <div class="stat-icon solved-icon">
                    <i class="fa-solid fa-circle-check"></i>
                </div>

                <div class="stat-info">
                    <span>Solved Cases</span>

                    <asp:Label ID="lblSolvedCases"
                        runat="server"
                        CssClass="stat-number"
                        Text="0">
                    </asp:Label>
                </div>

            </div>

        </div>


        <!-- CASE LIST CARD -->
        <div class="cases-card">

            <!-- CARD HEADER -->
            <div class="card-header">

                <div>
                    <span class="section-label">
                        INVESTIGATION RECORDS
                    </span>

                    <h2>Registered Cases</h2>

                    <p>
                        View complete case records and manage their details.
                    </p>
                </div>

                <div class="records-badge">
                    <i class="fa-solid fa-database"></i>

                    <asp:Label ID="lblRecordCount"
                        runat="server"
                        Text="0 Records">
                    </asp:Label>
                </div>

            </div>


            <!-- FILTERS -->
            <div class="filter-section">

                <div class="filter-grid">

                    <!-- SEARCH -->
                    <div class="filter-group search-group">

                        <label for="<%= txtSearch.ClientID %>">
                            Search Cases
                        </label>

                        <div class="search-input-wrapper">

                            <i class="fa-solid fa-magnifying-glass"></i>

                            <asp:TextBox ID="txtSearch"
                                runat="server"
                                CssClass="filter-control search-control"
                                placeholder="Case number or case name">
                            </asp:TextBox>

                        </div>

                    </div>


                    <!-- CATEGORY -->
                    <div class="filter-group">

                        <label for="<%= ddlCategory.ClientID %>">
                            Category
                        </label>

                        <asp:DropDownList ID="ddlCategory"
                            runat="server"
                            CssClass="filter-control">

                            <asp:ListItem Text="All Categories"
                                Value="">
                            </asp:ListItem>

                            <asp:ListItem Text="Homicide"
                                Value="Homicide">
                            </asp:ListItem>

                            <asp:ListItem Text="Missing Person"
                                Value="Missing Person">
                            </asp:ListItem>

                            <asp:ListItem Text="Theft"
                                Value="Theft">
                            </asp:ListItem>

                            <asp:ListItem Text="Fraud"
                                Value="Fraud">
                            </asp:ListItem>

                            <asp:ListItem Text="Cyber Crime"
                                Value="Cyber Crime">
                            </asp:ListItem>

                            <asp:ListItem Text="Kidnapping"
                                Value="Kidnapping">
                            </asp:ListItem>

                            <asp:ListItem Text="Other"
                                Value="Other">
                            </asp:ListItem>

                        </asp:DropDownList>

                    </div>


                    <!-- STATUS -->
                    <div class="filter-group">

                        <label for="<%= ddlStatus.ClientID %>">
                            Case Status
                        </label>

                        <asp:DropDownList ID="ddlStatus"
                            runat="server"
                            CssClass="filter-control">

                            <asp:ListItem Text="All Statuses"
                                Value="">
                            </asp:ListItem>

                            <asp:ListItem Text="Open"
                                Value="Open">
                            </asp:ListItem>

                            <asp:ListItem Text="Assigned"
                                Value="Assigned">
                            </asp:ListItem>

                            <asp:ListItem Text="Solved"
                                Value="Solved">
                            </asp:ListItem>

                            <asp:ListItem Text="Closed"
                                Value="Closed">
                            </asp:ListItem>

                        </asp:DropDownList>

                    </div>

                </div>


                <!-- FILTER BUTTONS -->
                <div class="filter-actions">

                    <asp:Button ID="btnFilter"
                        runat="server"
                        Text="Apply Filters"
                        CssClass="filter-button"
                        
                        CausesValidation="false" />

                    <asp:Button ID="btnReset"
                        runat="server"
                        Text="Reset"
                        CssClass="reset-button"
                        
                        CausesValidation="false" />

                </div>

            </div>


            <!-- GRIDVIEW -->
            <div class="table-container">

                <asp:GridView ID="gvCases"
                    runat="server"
                    AutoGenerateColumns="False"
                    CssClass="cases-grid"
                    GridLines="None"
                    DataKeyNames="case_no"
                    EmptyDataText="No cases found."
                    >

                    <Columns>

                        <asp:TemplateField HeaderText="CASE NUMBER">

                            <ItemTemplate>

                                <span class="case-number">
                                    <%# Eval("case_no") %>
                                </span>

                            </ItemTemplate>

                        </asp:TemplateField>


                        <asp:TemplateField HeaderText="CASE NAME">

                            <ItemTemplate>

                                <div class="case-name">
                                    <%# Eval("case_name") %>
                                </div>

                                <div class="case-category">
                                    <%# Eval("case_category") %>
                                </div>

                            </ItemTemplate>

                        </asp:TemplateField>


                        <asp:TemplateField HeaderText="REGISTERED ON">

                            <ItemTemplate>

                                <asp:Label ID="lblGridDate"
                                    runat="server"
                                    Text='<%# Eval("case_registerdate", "{0:dd MMM yyyy}") %>'>
                                </asp:Label>

                            </ItemTemplate>

                        </asp:TemplateField>


                        <asp:TemplateField HeaderText="STATUS">

                            <ItemTemplate>

                                <asp:Label ID="lblGridStatus"
                                    runat="server"
                                    Text='<%# Eval("case_status") %>'
                                    CssClass="status-badge">
                                </asp:Label>

                            </ItemTemplate>

                        </asp:TemplateField>


                        <asp:TemplateField HeaderText="DETAILS">

                            <ItemTemplate>

                                <asp:LinkButton ID="lnkDetails"
                                    runat="server"
                                    Text="Details"
                                    CssClass="details-button"
                                    CommandName="ViewDetails"
                                    CommandArgument='<%# Eval("case_no") %>'
                                    CausesValidation="false">

                                    <i class="fa-solid fa-eye"></i>
                                    Details

                                </asp:LinkButton>

                            </ItemTemplate>

                        </asp:TemplateField>


                        <asp:TemplateField HeaderText="EDIT">

                            <ItemTemplate>

                                <asp:LinkButton ID="lnkEdit"
                                    runat="server"
                                    CssClass="edit-button"
                                    CommandName="EditCase"
                                    CommandArgument='<%# Eval("case_no") %>'
                                    CausesValidation="false">

                                    <i class="fa-solid fa-pen-to-square"></i>
                                    Edit

                                </asp:LinkButton>

                            </ItemTemplate>

                        </asp:TemplateField>


                        <asp:TemplateField HeaderText="DELETE">

                            <ItemTemplate>

                                <asp:LinkButton ID="lnkDelete"
                                    runat="server"
                                    CssClass="delete-button"
                                    CommandName="DeleteCase"
                                    CommandArgument='<%# Eval("case_no") %>'
                                    CausesValidation="false"
                                    >

                                    <i class="fa-solid fa-trash"></i>
                                    Delete

                                </asp:LinkButton>

                            </ItemTemplate>

                        </asp:TemplateField>

                    </Columns>


                    <EmptyDataTemplate>

                        <div class="empty-state">

                            <div class="empty-icon">
                                <i class="fa-solid fa-folder-open"></i>
                            </div>

                            <h3>No Cases Found</h3>

                            <p>
                                No cases match your search criteria.
                            </p>

                        </div>

                    </EmptyDataTemplate>

                </asp:GridView>

            </div>


            <!-- CARD FOOTER -->
            <div class="card-footer">

                <span>
                    <i class="fa-solid fa-shield-halved"></i>
                    Confidential Investigation Records
                </span>

                <asp:HyperLink ID="lnkBackDashboard"
                    runat="server"
                    NavigateUrl="~/Case_Management_Module/Case_Dashboard.aspx"
                    CssClass="dashboard-link">

                    <i class="fa-solid fa-arrow-left"></i>
                    Back to Dashboard

                </asp:HyperLink>

            </div>

        </div>

    </div>

</asp:Content>

