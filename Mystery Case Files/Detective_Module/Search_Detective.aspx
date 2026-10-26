<%@ Page Title="Search Detective" Language="C#" MasterPageFile="~/Master_Pages/Detective_Module.Master" AutoEventWireup="true" CodeBehind="Search_Detective.aspx.cs" Inherits="Mystery_Case_Files.Detective_Module.Search_Detective" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"> <link href="../CSS/Detective_Module/Search_Detective.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="search-detective-page">

    <!-- PAGE HEADER -->
    <div class="page-header">
        <div class="header-icon">
            <i class="fa-solid fa-user-magnifying-glass "></i>
        </div>

        <div class="header-content">
            <span class="page-eyebrow">DETECTIVE MANAGEMENT</span>
            <h1>Search Detective</h1>
            <p>Search, review, update and manage registered detective records.</p>
        </div>
    </div>

    <!-- SEARCH PANEL -->
    <section class="detective-panel search-panel">

        <div class="panel-heading">
            <div class="panel-heading-icon">
                <i class="fa-solid fa-magnifying-glass"></i>
            </div>

            <div>
                <h2>Find Detective</h2>
                <p>Choose a search method to find detective records.</p>
            </div>
        </div>

        <!-- SEARCH FILTERS -->
        <div class="search-grid">

            <!-- SEARCH BY ID -->
            <div class="search-field">
                <label class="form-label" for="<%= TextBox1.ClientID %>">
                    <i class="fa-solid fa-id-card"></i>
                    Detective ID
                </label>

                <asp:TextBox ID="TextBox1"
                    runat="server"
                    CssClass="form-control"
                    MaxLength="50"
                    placeholder="Enter detective ID">
                </asp:TextBox>

                <asp:Button ID="btnSearchID"
                    runat="server"
                    Text="Search by ID"
                    CssClass="btn btn-primary"
                    CausesValidation="false" />
            </div>

            <!-- SEARCH BY NAME -->
            <div class="search-field">
                <label class="form-label" for="<%= DropList1.ClientID %>">
                    <i class="fa-solid fa-user"></i>
                    Detective Name
                </label>

                <asp:DropDownList ID="DropList1"
                    runat="server"
                    CssClass="form-control">
                    <asp:ListItem Value="">Select Detective Name</asp:ListItem>
                </asp:DropDownList>

                <asp:Button ID="btnSearchName"
                    runat="server"
                    Text="Search by Name"
                    CssClass="btn btn-primary"
                    CausesValidation="false" />
            </div>

            <!-- SEARCH BY DEPARTMENT -->
            <div class="search-field">
                <label class="form-label" for="<%= DropList2.ClientID %>">
                    <i class="fa-solid fa-building-shield"></i>
                    Department
                </label>

                <asp:DropDownList ID="DropList2"
                    runat="server"
                    CssClass="form-control">
                    <asp:ListItem Value="">Select Department</asp:ListItem>
                </asp:DropDownList>

                <asp:Button ID="btnSearchDepartment"
                    runat="server"
                    Text="Search by Department"
                    CssClass="btn btn-primary"
                    CausesValidation="false" />
            </div>

        </div>

        <div class="search-footer">
            <div class="search-info">
                <i class="fa-solid fa-circle-info"></i>
                <span>Select one search method at a time.</span>
            </div>

            <asp:Button ID="btnClearSearch"
                runat="server"
                Text="Clear Search"
                CssClass="btn btn-secondary"
                CausesValidation="false" />
        </div>

    </section>

    <!-- SEARCH BY ID RESULT -->
    <section class="detective-panel result-panel">

        <div class="panel-heading">
            <div class="panel-heading-icon">
                <i class="fa-solid fa-address-card"></i>
            </div>

            <div>
                <h2>Detective Details</h2>
                <p>Selected detective information and available actions.</p>
            </div>

            <span class="result-badge">ID SEARCH</span>
        </div>

        <div class="table-wrapper">

            <asp:GridView ID="GridDetectiveDetails"
                runat="server"
                AutoGenerateColumns="False"
                CssClass="detective-grid"
                GridLines="None"
                EmptyDataText="No detective selected. Search using a Detective ID."
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
                        DataField="detective_address"
                        HeaderText="Address" />

                    <asp:TemplateField HeaderText="Actions">
                        <ItemTemplate>

                            <div class="action-buttons">

                                <asp:LinkButton ID="lnkUpdate"
                                    runat="server"
                                    Text="Update"
                                    CssClass="action-link edit-link"
                                    CommandName="UpdateDetective"
                                    CommandArgument='<%# Eval("detective_id") %>'
                                    CausesValidation="false" />

                                <asp:LinkButton ID="lnkDelete"
                                    runat="server"
                                    Text="Delete"
                                    CssClass="action-link delete-link"
                                    CommandName="DeleteDetective"
                                    CommandArgument='<%# Eval("detective_id") %>'
                                    CausesValidation="false" />

                            </div>

                        </ItemTemplate>
                    </asp:TemplateField>

                </Columns>

            </asp:GridView>

        </div>

        <div class="result-note">
            <i class="fa-solid fa-shield-halved"></i>
            <span>Update or delete the record after verifying the Detective ID.</span>
        </div>

    </section>

    <!-- SEARCH BY NAME / DEPARTMENT RESULTS -->
    <section class="detective-panel result-panel">

        <div class="panel-heading">
            <div class="panel-heading-icon">
                <i class="fa-solid fa-users"></i>
            </div>

            <div>
                <h2>Matching Detectives</h2>
                <p>Detectives matching the selected name or department.</p>
            </div>

            <span class="result-badge">FILTERED RESULTS</span>
        </div>

        <div class="table-wrapper">

            <asp:GridView ID="GridDetectiveResults"
                runat="server"
                AutoGenerateColumns="False"
                CssClass="detective-grid"
                GridLines="None"
                EmptyDataText="Search by name or department to display matching detectives."
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

                    <asp:TemplateField HeaderText="Actions">
                        <ItemTemplate>

                            <div class="action-buttons">

                                <asp:LinkButton ID="lnkEdit"
                                    runat="server"
                                    Text="Edit"
                                    CssClass="action-link edit-link"
                                    CommandName="EditDetective"
                                    CommandArgument='<%# Eval("detective_id") %>'
                                    CausesValidation="false" />

                                <asp:LinkButton ID="lnkDelete"
                                    runat="server"
                                    Text="Delete"
                                    CssClass="action-link delete-link"
                                    CommandName="DeleteDetective"
                                    CommandArgument='<%# Eval("detective_id") %>'
                                    CausesValidation="false" />

                            </div>

                        </ItemTemplate>
                    </asp:TemplateField>

                </Columns>

            </asp:GridView>

        </div>

        <div class="result-note">
            <i class="fa-solid fa-circle-info"></i>
            <span>Select Edit to open the detective record or Delete to remove it.</span>
        </div>

    </section>

    <!-- PAGE FOOTER -->
    <div class="page-footer">
        <span>MYSTERIOUS CASE FILES</span>
        <span>DETECTIVE RECORD MANAGEMENT</span>
    </div>

</div>


</asp:Content>
