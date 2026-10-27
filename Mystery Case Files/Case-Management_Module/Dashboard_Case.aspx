<%@ Page Title="Case Management Dashboard"
    Language="C#"
    MasterPageFile="~/Master_Pages/Case.Master"
    AutoEventWireup="true"
    CodeBehind="Dashboard_Case.aspx.cs"
    Inherits="Mystery_Case_Files.Case_Management_Module.Dashboard_Case" %>

<asp:Content ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <link href="../CSS/Case-Management/Dashboard_Case.css?v=2"
        rel="stylesheet" />

</asp:Content>


<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <div class="case-home">

        <!-- =========================================
             DASHBOARD HEADER
        ========================================== -->

        <div class="case-home-header">

            <div class="case-home-heading">

                <div class="case-home-icon">
                    <i class="fa-solid fa-folder-open"></i>
                </div>

                <div>
                    <span class="case-eyebrow">
                        MYSTERIOUS CASE FILES
                    </span>

                    <h1>CASE MANAGEMENT</h1>

                    <p>
                        Investigation records, case assignments
                        and operational overview.
                    </p>
                </div>

            </div>

            <div class="case-date-card">

                <i class="fa-regular fa-calendar-days"></i>

                <div>
                    <span>Today's Date</span>

                    <asp:Label ID="LabelCurrentDate"
                        runat="server"
                        CssClass="case-current-date">
                    </asp:Label>
                </div>

            </div>

        </div>


        <!-- =========================================
             STATISTICS
        ========================================== -->

        <div class="case-stats-grid">

            <!-- TOTAL CASES -->

            <div class="case-stat-card">

                <div class="case-stat-top">
                    <div class="case-stat-icon gold">
                        <i class="fa-solid fa-folder"></i>
                    </div>

                    <span class="case-stat-label">
                        ALL RECORDS
                    </span>
                </div>

                <h2>
                    <asp:Label ID="LabelTotalCases"
                        runat="server"
                        Text="0">
                    </asp:Label>
                </h2>

                <p>Total Registered Cases</p>

            </div>


            <!-- OPEN CASES -->

            <div class="case-stat-card">

                <div class="case-stat-top">
                    <div class="case-stat-icon blue">
                        <i class="fa-solid fa-folder-open"></i>
                    </div>

                    <span class="case-stat-label">
                        ACTIVE
                    </span>
                </div>

                <h2>
                    <asp:Label ID="LabelOpenCases"
                        runat="server"
                        Text="0">
                    </asp:Label>
                </h2>

                <p>Open Cases</p>

            </div>


            <!-- ASSIGNED CASES -->

            <div class="case-stat-card">

                <div class="case-stat-top">
                    <div class="case-stat-icon purple">
                        <i class="fa-solid fa-user-shield"></i>
                    </div>

                    <span class="case-stat-label">
                        ALLOCATED
                    </span>
                </div>

                <h2>
                    <asp:Label ID="LabelAssignedCases"
                        runat="server"
                        Text="0">
                    </asp:Label>
                </h2>

                <p>Assigned Cases</p>

            </div>


            <!-- SOLVED CASES -->

            <div class="case-stat-card">

                <div class="case-stat-top">
                    <div class="case-stat-icon green">
                        <i class="fa-solid fa-circle-check"></i>
                    </div>

                    <span class="case-stat-label">
                        COMPLETED
                    </span>
                </div>

                <h2>
                    <asp:Label ID="LabelSolvedCases"
                        runat="server"
                        Text="0">
                    </asp:Label>
                </h2>

                <p>Solved Cases</p>

            </div>

        </div>


        <!-- =========================================
             QUICK ACTIONS
        ========================================== -->

        <div class="case-section">

            <div class="case-section-heading">

                <div>
                    <span class="case-section-eyebrow">
                        CASE OPERATIONS
                    </span>

                    <h2>Quick Actions</h2>
                </div>

                <span class="case-section-description">
                    Manage investigation records
                </span>

            </div>


            <div class="case-actions-grid">

                <!-- ADD CASE -->

                <a href="AddNew_Case.aspx"
                    class="case-action-card">

                    <div class="case-action-icon">
                        <i class="fa-solid fa-folder-plus"></i>
                    </div>

                    <div class="case-action-content">
                        <h3>Register New Case</h3>

                        <p>
                            Create a new case record and
                            enter investigation details.
                        </p>
                    </div>

                    <i class="fa-solid fa-arrow-right case-action-arrow"></i>

                </a>


                <!-- SEARCH CASE -->

                <a href="Search_Case.aspx"
                    class="case-action-card">

                    <div class="case-action-icon">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </div>

                    <div class="case-action-content">
                        <h3>Search Cases</h3>

                        <p>
                            Find cases using their ID,
                            name, category or registration date.
                        </p>
                    </div>

                    <i class="fa-solid fa-arrow-right case-action-arrow"></i>

                </a>


                <!-- ASSIGN CASE -->

                <a href="Assign_Case.aspx"
                    class="case-action-card">

                    <div class="case-action-icon">
                        <i class="fa-solid fa-user-tag"></i>
                    </div>

                    <div class="case-action-content">
                        <h3>Assign Investigation</h3>

                        <p>
                            Assign registered cases to
                            detectives from relevant departments.
                        </p>
                    </div>

                    <i class="fa-solid fa-arrow-right case-action-arrow"></i>

                </a>


                <!-- ALL CASES -->

                <a href="All_Case.aspx"
                    class="case-action-card">

                    <div class="case-action-icon">
                        <i class="fa-solid fa-table-list"></i>
                    </div>

                    <div class="case-action-content">
                        <h3>All Case Records</h3>

                        <p>
                            Browse registered cases and
                            review their current status.
                        </p>
                    </div>

                    <i class="fa-solid fa-arrow-right case-action-arrow"></i>

                </a>

            </div>

        </div>


        <!-- =========================================
             RECENT CASES
        ========================================== -->

        <div class="case-section recent-cases-section">

            <div class="case-section-heading">

                <div>
                    <span class="case-section-eyebrow">
                        LATEST RECORDS
                    </span>

                    <h2>Recently Registered Cases</h2>
                </div>

                <a href="All_Case.aspx"
                    class="case-view-all">

                    View All Cases

                    <i class="fa-solid fa-arrow-right"></i>

                </a>

            </div>


            <div class="case-table-wrapper">

                <asp:GridView ID="GridViewRecentCases"
                    runat="server"
                    AutoGenerateColumns="false"
                    CssClass="case-recent-grid"
                    GridLines="None"
                    DataKeyNames="case_no"
                    EmptyDataText="No case records are available."
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
                            DataFormatString="{0:dd MMM yyyy}"
                            HtmlEncode="false" />


                        


                        <asp:TemplateField HeaderText="ACTION">

                            <ItemTemplate>

                                <asp:LinkButton
                                    ID="ButtonViewCase"
                                    runat="server"
                                    Text="View Details"
                                    CssClass="case-view-button"
                                    CommandName="ViewCase"
                                    
                                    CausesValidation="false" />

                            </ItemTemplate>

                        </asp:TemplateField>

                    </Columns>

                </asp:GridView>

            </div>

        </div>


        <!-- =========================================
             STATUS OVERVIEW
        ========================================== -->

        <div class="case-section">

            <div class="case-section-heading">

                <div>
                    <span class="case-section-eyebrow">
                        INVESTIGATION MONITORING
                    </span>

                    <h2>Case Status Overview</h2>
                </div>

            </div>


            <div class="case-status-grid">

                <div class="case-status-card">

                    <span class="status-indicator status-open"></span>

                    <div>
                        <h3>Open</h3>
                        <p>Awaiting assignment or investigation</p>
                    </div>

                </div>


                <div class="case-status-card">

                    <span class="status-indicator status-assigned"></span>

                    <div>
                        <h3>Assigned</h3>
                        <p>Allocated to a detective</p>
                    </div>

                </div>


                <div class="case-status-card">

                    <span class="status-indicator status-investigation"></span>

                    <div>
                        <h3>Under Investigation</h3>
                        <p>Investigation currently in progress</p>
                    </div>

                </div>


                <div class="case-status-card">

                    <span class="status-indicator status-solved"></span>

                    <div>
                        <h3>Solved</h3>
                        <p>Investigation successfully completed</p>
                    </div>

                </div>

            </div>

        </div>


        <!-- =========================================
             FOOTER
        ========================================== -->

        <div class="case-home-footer">

            <i class="fa-solid fa-shield-halved"></i>

            <span>
                MYSTERIOUS CASE FILES
                <span class="footer-divider">|</span>
                CASE MANAGEMENT CONTROL CENTER
            </span>

        </div>

    </div>

</asp:Content>
