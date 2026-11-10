<%@ Page Title="Case Management Dashboard"
    Language="C#"
    MasterPageFile="~/Master_Pages/Case.Master"
    AutoEventWireup="true"
    CodeBehind="Dashboard_Case.aspx.cs"
    Inherits="Mystery_Case_Files.Case_Management_Module.Dashboard_Case" %>

<asp:Content ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <link href="../CSS/Case-Management/Dashboard_Case.css"
        rel="stylesheet" />

</asp:Content>


<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">


    <div class="case-home">


        <!-- ==========================================
             01. DASHBOARD HEADER
        =========================================== -->

        <section class="case-home-header">

            <div class="case-home-heading">

                <div class="case-home-title">

                    <span class="case-eyebrow">
                        INVESTIGATION CONTROL CENTER
                    </span>

                    <h1>
                        CASE MANAGEMENT
                    </h1>

                    <p>
                        Investigations. Assignments. Results.
                    </p>

                </div>

            </div>


            <!-- CURRENT DATE -->

            <div class="case-date-card">

                <div class="case-date-icon">

                    <i class="fa-regular fa-calendar-days"></i>

                </div>

                <div class="case-date-content">

                    <span>
                        Today's Date
                    </span>

                    <asp:Label
                        ID="LabelCurrentDate"
                        runat="server"
                        CssClass="case-current-date">
                    </asp:Label>

                </div>

            </div>

        </section>



        <!-- ==========================================
             02. CASE STATISTICS
        =========================================== -->

        <section class="case-stats-grid">


            <!-- ALL RECORDS -->

            <div class="case-stat-card stat-gold">

                <div class="case-stat-icon gold">

                    <i class="fa-solid fa-folder-open"></i>

                </div>

                <div class="case-stat-content">

                    <span class="case-stat-label">
                        ALL RECORDS
                    </span>

                    <h2>
                        <asp:Label
                            ID="LabelTotalCases"
                            runat="server"
                            Text="0">
                        </asp:Label>
                    </h2>

                    <p>
                        Total Registered Cases
                    </p>

                </div>

                <div class="case-stat-arrow">

                    <i class="fa-solid fa-arrow-right"></i>

                </div>

            </div>



            <!-- ACTIVE CASES -->

            <div class="case-stat-card stat-blue">

                <div class="case-stat-icon blue">

                    <i class="fa-solid fa-folder-open"></i>

                </div>

                <div class="case-stat-content">

                    <span class="case-stat-label">
                        ACTIVE
                    </span>

                    <h2>
                        <asp:Label
                            ID="LabelOpenCases"
                            runat="server"
                            Text="0">
                        </asp:Label>
                    </h2>

                    <p>
                        Open Cases
                    </p>

                </div>

                <div class="case-stat-arrow">

                    <i class="fa-solid fa-arrow-right"></i>

                </div>

            </div>



            <!-- ASSIGNED CASES -->

            <div class="case-stat-card stat-purple">

                <div class="case-stat-icon purple">

                    <i class="fa-solid fa-shield-halved"></i>

                </div>

                <div class="case-stat-content">

                    <span class="case-stat-label">
                        ALLOCATED
                    </span>

                    <h2>
                        <asp:Label
                            ID="LabelAssignedCases"
                            runat="server"
                            Text="0">
                        </asp:Label>
                    </h2>

                    <p>
                        Assigned Cases
                    </p>

                </div>

                <div class="case-stat-arrow">

                    <i class="fa-solid fa-arrow-right"></i>

                </div>

            </div>



            <!-- COMPLETED CASES -->

            <div class="case-stat-card stat-green">

                <div class="case-stat-icon green">

                    <i class="fa-solid fa-circle-check"></i>

                </div>

                <div class="case-stat-content">

                    <span class="case-stat-label">
                        COMPLETED
                    </span>

                    <h2>
                        <asp:Label
                            ID="LabelSolvedCases"
                            runat="server"
                            Text="0">
                        </asp:Label>
                    </h2>

                    <p>
                        Solved Cases
                    </p>

                </div>

                <div class="case-stat-arrow">

                    <i class="fa-solid fa-arrow-right"></i>

                </div>

            </div>


        </section>



        <!-- ==========================================
             03. QUICK ACTIONS
        =========================================== -->

        <section class="case-section quick-actions-section">


            <div class="case-section-heading">

                <div>

                    <h2>
                        QUICK ACTIONS
                    </h2>

                    <p>
                        Manage investigation records
                    </p>

                </div>

            </div>



            <div class="case-actions-grid">


                <!-- REGISTER NEW CASE -->

                <a href="<%= ResolveUrl("~/Case-Management_Module/AddNew_Case.aspx") %>"
                    class="case-action-card">

                    <div class="case-action-icon">

                        <i class="fa-solid fa-folder-plus"></i>

                    </div>

                    <div class="case-action-content">

                        <h3>
                            Register New Case
                        </h3>

                        <p>
                            Create a new case record
                            and enter details.
                        </p>

                    </div>

                    <div class="case-action-arrow">

                        <i class="fa-solid fa-arrow-right"></i>

                    </div>

                </a>



                <!-- SEARCH CASES -->

                <a href="<%= ResolveUrl("~/Case-Management_Module/Search_Case.aspx") %>"
                    class="case-action-card">

                    <div class="case-action-icon">

                        <i class="fa-solid fa-magnifying-glass"></i>

                    </div>

                    <div class="case-action-content">

                        <h3>
                            Search Cases
                        </h3>

                        <p>
                            Find cases by ID, name
                            or category.
                        </p>

                    </div>

                    <div class="case-action-arrow">

                        <i class="fa-solid fa-arrow-right"></i>

                    </div>

                </a>



                <!-- ASSIGN INVESTIGATION -->

                <a href="<%= ResolveUrl("~/Case-Management_Module/Assign_Case.aspx") %>"
                    class="case-action-card">

                    <div class="case-action-icon">

                        <i class="fa-solid fa-user-group"></i>

                    </div>

                    <div class="case-action-content">

                        <h3>
                            Assign Investigation
                        </h3>

                        <p>
                            Allocate cases to detectives.
                        </p>

                    </div>

                    <div class="case-action-arrow">

                        <i class="fa-solid fa-arrow-right"></i>

                    </div>

                </a>



                <!-- ALL CASE RECORDS -->

                <a href="<%= ResolveUrl("~/Case-Management_Module/All_Case.aspx") %>"
                    class="case-action-card">

                    <div class="case-action-icon">

                        <i class="fa-solid fa-list-ul"></i>

                    </div>

                    <div class="case-action-content">

                        <h3>
                            All Case Records
                        </h3>

                        <p>
                            View all registered cases.
                        </p>

                    </div>

                    <div class="case-action-arrow">

                        <i class="fa-solid fa-arrow-right"></i>

                    </div>

                </a>


            </div>

        </section>



        <!-- ==========================================
             04. RECENT CASES
             CENTERED FULL-WIDTH SECTION
        =========================================== -->

        <section class="case-section recent-cases-section">


            <div class="case-recent-panel">


                <!-- RECENT CASES HEADER -->

                <div class="case-recent-header">

                    <div class="case-recent-title">

                        <span class="case-section-eyebrow">
                            INVESTIGATION DATABASE
                        </span>

                        <h2>
                            RECENT CASES
                        </h2>

                    </div>


                    <a href="<%= ResolveUrl("~/Case-Management_Module/All_Case.aspx") %>"
                        class="case-view-all">

                        View All

                        <i class="fa-solid fa-arrow-right"></i>

                    </a>

                </div>



                <!-- CASE TABLE -->

                <div class="case-table-wrapper">

                    <asp:GridView
                        ID="GridViewRecentCases"
                        runat="server"
                        AutoGenerateColumns="False"
                        CssClass="case-recent-grid"
                        GridLines="None"
                        DataKeyNames="case_no"
                        EmptyDataText="No recent case records found."
                       >

                        <Columns>

                            <asp:BoundField
                                DataField="case_no"
                                HeaderText="CASE ID" />

                            <asp:BoundField
                                DataField="case_name"
                                HeaderText="CASE NAME" />

                            <asp:BoundField
                                DataField="case_category"
                                HeaderText="CATEGORY" />

                            <asp:BoundField
                                DataField="case_registerdate"
                                HeaderText="REGISTERED ON"
                                DataFormatString="{0:dd MMM yyyy}" />

                            <asp:TemplateField
                                HeaderText="ACTION">

                                <ItemTemplate>

                                    <asp:LinkButton
                                        ID="ButtonViewCase"
                                        runat="server"
                                        Text="View"
                                        CommandName="ViewCase"
                                        CommandArgument='<%# Container.DataItemIndex %>'
                                        CssClass="case-view-button">
                                    </asp:LinkButton>

                                </ItemTemplate>

                            </asp:TemplateField>

                        </Columns>

                    </asp:GridView>

                </div>


                <!-- TABLE FOOTNOTE -->

                <div class="case-table-footer">

                    <span>

                        <i class="fa-solid fa-lock"></i>

                        CONFIDENTIAL INVESTIGATION RECORDS

                    </span>

                    <span class="case-table-footer-right">

                        AUTHORIZED ACCESS ONLY

                    </span>

                </div>


            </div>

        </section>



    </div>


</asp:Content>