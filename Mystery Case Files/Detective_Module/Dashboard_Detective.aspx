<%@ Page Title="Detective Management Dashboard"
    Language="C#"
    MasterPageFile="~/Master_Pages/Detective_Module.Master"
    AutoEventWireup="true"
    CodeBehind="Dashboard_Detective.aspx.cs"
    Inherits="Mystery_Case_Files.Detective_Module.Dashboard_Detective" %>

<asp:Content ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@400;500;600;700&family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" rel="stylesheet" />
    <link href="../CSS/Detective_Module/Dashboard_Detective.css" rel="stylesheet" type="text/css" />

</asp:Content>

<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <section class="detective-dashboard">
        <!-- ========================================= DASHBOARD BACKGROUND OVERLAY ========================================== -->
        <div class="dashboard-background"></div>
        <!-- ========================================= DASHBOARD CONTENT ========================================== -->
        <div class="dashboard-container">
            <!-- ===================================== WELCOME SECTION ====================================== -->
            <section class="dashboard-welcome">
                <div class="welcome-content">
                    <div class="welcome-eyebrow"><span class="eyebrow-line"></span><span>INVESTIGATION COMMAND CENTER</span> </div>
                    <h1 class="welcome-title">THE ART OF <span>DETECTIVE WORK.</span> </h1>
                    <p class="welcome-description">Every detail matters. Every clue tells a story. Every case deserves the truth. Welcome to your central investigation workspace. </p>
                    <div class="welcome-actions"><a href="<%= ResolveUrl("~/Detective_Module/AddNew_Detective.aspx") %>" class="dashboard-button dashboard-button-primary"><i class="fa-solid fa-user-plus" aria-hidden="true"></i>REGISTER DETECTIVE </a><a href="<%= ResolveUrl("~/Detective_Module/Search_Detective.aspx") %>" class="dashboard-button dashboard-button-outline"><i class="fa-solid fa-magnifying-glass" aria-hidden="true"></i>SEARCH RECORDS </a></div>
                </div>
                <div class="welcome-emblem" aria-hidden="true">
                    <div class="emblem-outer">
                        <div class="emblem-inner"><i class="fa-solid fa-user-secret"></i></div>
                    </div>
                    <span class="emblem-caption">OBSERVE · ANALYZE · SOLVE </span></div>
            </section>
            <!-- ===================================== SECTION HEADING ====================================== -->
            <section class="dashboard-section">
                <div class="section-heading">
                    <div><span class="section-kicker">SYSTEM OVERVIEW </span>
                        <h2>Investigation Overview</h2>
                        <p>A consolidated view of detective operations and investigation records. </p>
                    </div>
                    <div class="overview-date"><i class="fa-regular fa-calendar" aria-hidden="true"></i>
                        <asp:Label ID="lblCurrentDate" runat="server" Text="Investigation Records" />
                    </div>
                </div>
                <!-- ================================= STATISTICS CARDS ================================== -->
                <div class="statistics-grid">
                    <!-- TOTAL DETECTIVES -->
                    <article class="stat-card">
                        <div class="stat-card-top">
                            <div class="stat-icon stat-icon-gold"><i class="fa-solid fa-user-secret" aria-hidden="true"></i></div>
                            <span class="stat-label">DETECTIVE FORCE </span></div>
                        <div class="stat-card-body">
                            <asp:Label ID="lblTotalDetectives" runat="server" CssClass="stat-number" Text="--" />
                            <span class="stat-title">Total Detectives </span></div>
                        <div class="stat-card-footer"><span>Registered personnel</span> <i class="fa-solid fa-arrow-right" aria-hidden="true"></i></div>
                    </article>
                    <!-- ACTIVE CASES -->
                    <article class="stat-card">
                        <div class="stat-card-top">
                            <div class="stat-icon stat-icon-blue"><i class="fa-solid fa-folder-open" aria-hidden="true"></i></div>
                            <span class="stat-label">CASE OPERATIONS </span></div>
                        <div class="stat-card-body">
                            <asp:Label ID="lblActiveCases" runat="server" CssClass="stat-number" Text="--" />
                            <span class="stat-title">Active Cases </span></div>
                        <div class="stat-card-footer"><span>Ongoing investigations</span> <i class="fa-solid fa-arrow-right" aria-hidden="true"></i></div>
                    </article>
                    <!-- SOLVED CASES -->
                    <article class="stat-card">
                        <div class="stat-card-top">
                            <div class="stat-icon stat-icon-green"><i class="fa-solid fa-check-double" aria-hidden="true"></i></div>
                            <span class="stat-label">CASE RESOLUTION </span></div>
                        <div class="stat-card-body">
                            <asp:Label ID="lblSolvedCases" runat="server" CssClass="stat-number" Text="--" />
                            <span class="stat-title">Solved Cases </span></div>
                        <div class="stat-card-footer"><span>Successfully resolved</span> <i class="fa-solid fa-arrow-right" aria-hidden="true"></i></div>
                    </article>
                    <!-- PENDING CASES -->
                    <article class="stat-card">
                        <div class="stat-card-top">
                            <div class="stat-icon stat-icon-red"><i class="fa-solid fa-hourglass-half" aria-hidden="true"></i></div>
                            <span class="stat-label">UNDER REVIEW </span></div>
                        <div class="stat-card-body">
                            <asp:Label ID="lblPendingCases" runat="server" CssClass="stat-number" Text="--" />
                            <span class="stat-title">Pending Cases </span></div>
                        <div class="stat-card-footer"><span>Awaiting resolution</span> <i class="fa-solid fa-arrow-right" aria-hidden="true"></i></div>
                    </article>
                </div>
            </section>
            <!-- ===================================== QUICK ACTIONS ====================================== -->
            <section class="dashboard-section">
                <div class="section-heading">
                    <div><span class="section-kicker">QUICK ACCESS </span>
                        <h2>Detective Operations</h2>
                        <p>Access the essential tools for managing your detective records. </p>
                    </div>
                </div>
                <div class="operations-grid">
                    <!-- REGISTER DETECTIVE -->
                    <a href="<%= ResolveUrl("~/Detective_Module/AddNew_Detective.aspx") %>" class="operation-card">
                        <div class="operation-icon"><i class="fa-solid fa-user-plus" aria-hidden="true"></i></div>
                        <div class="operation-content"><span class="operation-number">OPERATION 01 </span>
                            <h3>Register Detective</h3>
                            <p>Add a new detective to the official investigation directory. </p>
                        </div>
                        <div class="operation-arrow"><i class="fa-solid fa-arrow-up-right-from-square" aria-hidden="true"></i></div>
                    </a>
                    <!-- SEARCH DETECTIVE -->
                    <a href="<%= ResolveUrl("~/Detective_Module/Search_Detective.aspx") %>" class="operation-card">
                        <div class="operation-icon"><i class="fa-solid fa-magnifying-glass" aria-hidden="true"></i></div>
                        <div class="operation-content"><span class="operation-number">OPERATION 02 </span>
                            <h3>Search Detective</h3>
                            <p>Locate detective records and access relevant personnel information. </p>
                        </div>
                        <div class="operation-arrow"><i class="fa-solid fa-arrow-up-right-from-square" aria-hidden="true"></i></div>
                    </a>
                    <!-- DETECTIVE DIRECTORY -->
                    <a href="<%= ResolveUrl("~/Detective_Module/All_Detective.aspx") %>" class="operation-card">
                        <div class="operation-icon"><i class="fa-solid fa-address-book" aria-hidden="true"></i></div>
                        <div class="operation-content"><span class="operation-number">OPERATION 03 </span>
                            <h3>Detective Directory</h3>
                            <p>Browse registered detectives and review the available directory. </p>
                        </div>
                        <div class="operation-arrow"><i class="fa-solid fa-arrow-up-right-from-square" aria-hidden="true"></i></div>
                    </a></div>
            </section>
            <!-- ===================================== LOWER DASHBOARD PANELS ====================================== -->
            <section class="dashboard-bottom-grid">
                <!-- RECENT ACTIVITY -->
                <div class="dashboard-panel">
                    <div class="panel-heading">
                        <div class="panel-heading-icon"><i class="fa-solid fa-clock-rotate-left" aria-hidden="true"></i></div>
                        <div>
                            <h2>Recent Investigation Activity</h2>
                            <p>Latest available investigation records </p>
                        </div>
                    </div>
                    <div class="activity-content">
                        <div class="activity-empty-icon"><i class="fa-solid fa-folder-open" aria-hidden="true"></i></div>
                        <h3>Activity Feed</h3>
                        <p>Investigation activity will appear here when the activity feed is connected to your database. </p>
                        <span class="activity-status"><span></span>AWAITING LIVE RECORDS </span></div>
                </div>
                <!-- SYSTEM STATUS -->
                <div class="dashboard-panel system-panel">
                    <div class="panel-heading">
                        <div class="panel-heading-icon"><i class="fa-solid fa-shield-halved" aria-hidden="true"></i></div>
                        <div>
                            <h2>System Information</h2>
                            <p>Detective module overview </p>
                        </div>
                    </div>
                    <div class="system-information">
                        <div class="system-row"><span class="system-row-label"><i class="fa-solid fa-server" aria-hidden="true"></i>Module Status </span><span class="system-badge">READY </span></div>
                        <div class="system-row"><span class="system-row-label"><i class="fa-solid fa-database" aria-hidden="true"></i>Record Management </span><span class="system-value">ENABLED </span></div>
                        <div class="system-row"><span class="system-row-label"><i class="fa-solid fa-user-shield" aria-hidden="true"></i>Access Control </span><span class="system-value">PROTECTED </span></div>
                        <div class="system-row"><span class="system-row-label"><i class="fa-regular fa-calendar" aria-hidden="true"></i>Current Date </span>
                            <asp:Label ID="lblSystemDate" runat="server" CssClass="system-value" Text="--" />
                        </div>
                    </div>
                    <div class="system-note"><i class="fa-solid fa-circle-info" aria-hidden="true"></i>
                        <p>Case statistics and activity records must be connected to the appropriate database tables before they display live information. </p>
                    </div>
                </div>
            </section>
            <!-- ===================================== FINAL MOTTO ====================================== -->
            <section class="dashboard-motto">
                <div class="motto-line"></div>
                <i class="fa-solid fa-fingerprint" aria-hidden="true"></i>
                <p>THE TRUTH IS HIDDEN IN THE DETAILS. </p>
                <span>OBSERVE CAREFULLY. THINK CRITICALLY. SOLVE PRECISELY. </span>
                <div class="motto-line"></div>
            </section>
        </div>
    </section>
</asp:Content>
