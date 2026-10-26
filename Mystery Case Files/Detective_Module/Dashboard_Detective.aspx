<%@ Page Title="Detective Dashboard"
    Language="C#"
    MasterPageFile="~/Master_Pages/Detective_Module.Master"
    AutoEventWireup="true"
    CodeBehind="Dashboard_Detective.aspx.cs"
    Inherits="Mystery_Case_Files.Detective_Module.Dashboard_Detective" %>

<asp:Content ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <link href="../CSS/Detective_Module/Dashboard_Detective.css"
        rel="stylesheet"
        type="text/css" />

</asp:Content>


<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <div class="detective-dashboard">

        <!-- DASHBOARD HEADER -->
        <div class="dashboard-header">

            <div class="dashboard-heading">
                <span class="dashboard-icon">
                    <i class="fa-solid fa-user-secret"></i>
                </span>

                <div>
                    <h1>Detective Dashboard</h1>
                    <p>
                        Welcome to your investigation control center.
                        Review your cases and manage your investigative activities.
                    </p>
                </div>
            </div>

            <div class="dashboard-status">
                <span class="status-indicator"></span>
                Detective Portal
            </div>

        </div>


        <!-- WELCOME PANEL -->
        <div class="welcome-panel">

            <div class="welcome-content">
                <span class="welcome-label">
                    INVESTIGATION DIVISION
                </span>

                <h2>Every Clue Tells a Story.</h2>

                <p>
                    Examine the evidence, investigate every lead,
                    and bring the truth to light.
                </p>
            </div>

            <div class="welcome-decoration">
                <i class="fa-solid fa-magnifying-glass"></i>
            </div>

        </div>


        <!-- STATISTICS -->
        <div class="statistics-grid">

            <!-- Assigned Cases -->
            <div class="stat-card assigned-card">

                <div class="stat-card-top">
                    <span class="stat-icon">
                        <i class="fa-solid fa-folder-open"></i>
                    </span>

                    <span class="stat-label">
                        CASE OVERVIEW
                    </span>
                </div>

                <h3>Assigned Cases</h3>

                <div class="stat-value">--</div>

                <p>Cases assigned to you</p>

            </div>


            <!-- Solved Cases -->
            <div class="stat-card solved-card">

                <div class="stat-card-top">
                    <span class="stat-icon">
                        <i class="fa-solid fa-circle-check"></i>
                    </span>

                    <span class="stat-label">
                        COMPLETED
                    </span>
                </div>

                <h3>Solved Cases</h3>

                <div class="stat-value">--</div>

                <p>Cases successfully solved</p>

            </div>


            <!-- Pending Cases -->
            <div class="stat-card pending-card">

                <div class="stat-card-top">
                    <span class="stat-icon">
                        <i class="fa-solid fa-hourglass-half"></i>
                    </span>

                    <span class="stat-label">
                        IN PROGRESS
                    </span>
                </div>

                <h3>Pending Cases</h3>

                <div class="stat-value">--</div>

                <p>Cases awaiting investigation</p>

            </div>


            <!-- Quiz Score -->
            <div class="stat-card quiz-card">

                <div class="stat-card-top">
                    <span class="stat-icon">
                        <i class="fa-solid fa-brain"></i>
                    </span>

                    <span class="stat-label">
                        PERFORMANCE
                    </span>
                </div>

                <h3>Quiz Performance</h3>

                <div class="stat-value">--</div>

                <p>Your investigation quiz score</p>

            </div>

        </div>


        <!-- MAIN DASHBOARD CONTENT -->
        <div class="dashboard-content-grid">

            <!-- RECENT CASES -->
            <div class="dashboard-panel recent-cases-panel">

                <div class="panel-header">

                    <div class="panel-heading">
                        <span class="panel-icon">
                            <i class="fa-solid fa-folder"></i>
                        </span>

                        <div>
                            <h2>Recent Cases</h2>
                            <p>Your latest investigation assignments</p>
                        </div>
                    </div>

                    <span class="panel-badge">RECENT</span>

                </div>


                <div class="empty-state">

                    <div class="empty-state-icon">
                        <i class="fa-solid fa-folder-open"></i>
                    </div>

                    <h3>No Cases to Display</h3>

                    <p>
                        Your recently assigned cases will appear here
                        once case records are connected.
                    </p>

                </div>

            </div>


            <!-- CASE STATUS -->
            <div class="dashboard-panel case-status-panel">

                <div class="panel-header">

                    <div class="panel-heading">
                        <span class="panel-icon">
                            <i class="fa-solid fa-chart-pie"></i>
                        </span>

                        <div>
                            <h2>Case Status</h2>
                            <p>Overview of your investigation progress</p>
                        </div>
                    </div>

                </div>


                <div class="case-status-list">

                    <div class="case-status-item">
                        <span class="case-status-dot status-assigned"></span>

                        <div class="case-status-info">
                            <h4>Assigned</h4>
                            <p>Cases awaiting your attention</p>
                        </div>

                        <span class="case-status-count">--</span>
                    </div>


                    <div class="case-status-item">
                        <span class="case-status-dot status-progress"></span>

                        <div class="case-status-info">
                            <h4>In Progress</h4>
                            <p>Cases currently under investigation</p>
                        </div>

                        <span class="case-status-count">--</span>
                    </div>


                    <div class="case-status-item">
                        <span class="case-status-dot status-solved"></span>

                        <div class="case-status-info">
                            <h4>Solved</h4>
                            <p>Investigations successfully completed</p>
                        </div>

                        <span class="case-status-count">--</span>
                    </div>


                    <div class="case-status-item">
                        <span class="case-status-dot status-pending"></span>

                        <div class="case-status-info">
                            <h4>Pending</h4>
                            <p>Investigations awaiting resolution</p>
                        </div>

                        <span class="case-status-count">--</span>
                    </div>

                </div>

            </div>

        </div>


        <!-- QUICK ACCESS -->
        <div class="quick-access-section">

            <div class="section-header">

                <div>
                    <span class="section-eyebrow">
                        INVESTIGATION TOOLS
                    </span>

                    <h2>Quick Access</h2>

                    <p>
                        Access the main features of your detective portal.
                    </p>
                </div>

            </div>


            <div class="quick-access-grid">

                <!-- Assigned Cases -->
                <a href="Assigned_Cases.aspx"
                   class="quick-access-card">

                    <span class="quick-access-icon">
                        <i class="fa-solid fa-briefcase"></i>
                    </span>

                    <div class="quick-access-info">
                        <h3>Assigned Cases</h3>
                        <p>View and investigate your assigned cases.</p>
                    </div>

                    <i class="fa-solid fa-arrow-right quick-access-arrow"></i>

                </a>


                <!-- Solved Cases -->
                <a href="Solved_Cases.aspx"
                   class="quick-access-card">

                    <span class="quick-access-icon">
                        <i class="fa-solid fa-file-circle-check"></i>
                    </span>

                    <div class="quick-access-info">
                        <h3>Solved Cases</h3>
                        <p>Review your successfully completed cases.</p>
                    </div>

                    <i class="fa-solid fa-arrow-right quick-access-arrow"></i>

                </a>


                <!-- Pending Cases -->
                <a href="Pending_Cases.aspx"
                   class="quick-access-card">

                    <span class="quick-access-icon">
                        <i class="fa-solid fa-clock"></i>
                    </span>

                    <div class="quick-access-info">
                        <h3>Pending Cases</h3>
                        <p>Continue working on unresolved investigations.</p>
                    </div>

                    <i class="fa-solid fa-arrow-right quick-access-arrow"></i>

                </a>


                <!-- Profile -->
                <a href="Detective_Profile.aspx"
                   class="quick-access-card">

                    <span class="quick-access-icon">
                        <i class="fa-solid fa-id-card"></i>
                    </span>

                    <div class="quick-access-info">
                        <h3>My Profile</h3>
                        <p>View your detective account information.</p>
                    </div>

                    <i class="fa-solid fa-arrow-right quick-access-arrow"></i>

                </a>

            </div>

        </div>


        <!-- SECURITY FOOTER -->
        <div class="dashboard-footer">

            <i class="fa-solid fa-shield-halved"></i>

            <p>
                CONFIDENTIAL INVESTIGATION SYSTEM
                <span> | </span>
                AUTHORIZED PERSONNEL ONLY
            </p>

        </div>

    </div>

</asp:Content>
