<%@ Page Title="Detective Management Dashboard"
    Language="C#"
    MasterPageFile="~/Master_Pages/Detective_Module.Master"
    AutoEventWireup="true"
    CodeBehind="Dashboard_Detective.aspx.cs"
    Inherits="Mystery_Case_Files.Detective_Module.Dashboard_Detective" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link rel="stylesheet"
        href="../CSS/Detective_Module/Dashboard_Detective.css?v=1" />

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <main class="detective-dashboard">

        <!-- HERO SECTION -->
        <section class="dashboard-hero">

            <div class="hero-content">

                <div class="hero-eyebrow">
                    <span class="eyebrow-line"></span>
                    <i class="fa-solid fa-fingerprint"></i>
                    INVESTIGATION COMMAND CENTER
                </div>

                <h1>
                    THE ART OF
                    <span>DETECTIVE WORK.</span>
                </h1>

                <p class="hero-description">
                    Every investigation begins with a question.
                    Every clue leads to a possibility.
                    Every detail brings us closer to the truth.
                </p>

                <div class="hero-actions">

                    <a href="<%= ResolveUrl("~/Detective_Module/AddNew_Detective.aspx") %>"
                       class="hero-button primary-button">
                        <i class="fa-solid fa-user-plus"></i>
                        REGISTER DETECTIVE
                    </a>

                    <a href="<%= ResolveUrl("~/Detective_Module/Search_Detective.aspx") %>"
                       class="hero-button secondary-button">
                        <i class="fa-solid fa-magnifying-glass"></i>
                        SEARCH RECORDS
                    </a>

                </div>

            </div>

            <div class="hero-emblem">

                <div class="emblem-ring ring-outer"></div>
                <div class="emblem-ring ring-inner"></div>

                <div class="emblem-center">
                    <i class="fa-solid fa-user-secret"></i>
                </div>

                <span class="emblem-caption">TRUTH • JUSTICE • PRECISION</span>

            </div>

            <div class="hero-bottom-line"></div>

        </section>


        <!-- DASHBOARD OVERVIEW -->
        <section class="dashboard-overview">

            <div class="section-heading">

                <div>
                    <span class="section-eyebrow">SYSTEM OVERVIEW</span>
                    <h2>Investigation Statistics</h2>
                    <p>A consolidated view of the detective unit.</p>
                </div>

                <div class="date-display">
                    <i class="fa-regular fa-calendar-days"></i>
                    <asp:Label ID="lblCurrentDate" runat="server"></asp:Label>
                </div>

            </div>


            <div class="statistics-grid">

                <article class="stat-card detectives-card">

                    <div class="stat-card-top">
                        <span class="stat-icon">
                            <i class="fa-solid fa-user-shield"></i>
                        </span>
                        <span class="stat-label">PERSONNEL</span>
                    </div>

                    <div class="stat-number">
                        <asp:Label ID="lblTotalDetectives" runat="server" Text="0"></asp:Label>
                    </div>

                    <h3>Total Detectives</h3>
                    <p>Registered investigation personnel</p>

                    <div class="stat-card-footer">
                        <span>UNIT STRENGTH</span>
                        <i class="fa-solid fa-arrow-right"></i>
                    </div>

                </article>


                <article class="stat-card active-card">

                    <div class="stat-card-top">
                        <span class="stat-icon">
                            <i class="fa-solid fa-folder-open"></i>
                        </span>
                        <span class="stat-label">ONGOING</span>
                    </div>

                    <div class="stat-number">
                        <asp:Label ID="lblActiveCases" runat="server" Text="0"></asp:Label>
                    </div>

                    <h3>Active Cases</h3>
                    <p>Investigations currently in progress</p>

                    <div class="stat-card-footer">
                        <span>LIVE INVESTIGATIONS</span>
                        <i class="fa-solid fa-arrow-right"></i>
                    </div>

                </article>


                <article class="stat-card solved-card">

                    <div class="stat-card-top">
                        <span class="stat-icon">
                            <i class="fa-solid fa-circle-check"></i>
                        </span>
                        <span class="stat-label">RESOLVED</span>
                    </div>

                    <div class="stat-number">
                        <asp:Label ID="lblSolvedCases" runat="server" Text="0"></asp:Label>
                    </div>

                    <h3>Solved Cases</h3>
                    <p>Investigations successfully concluded</p>

                    <div class="stat-card-footer">
                        <span>CASE RESOLUTION</span>
                        <i class="fa-solid fa-arrow-right"></i>
                    </div>

                </article>


                <article class="stat-card pending-card">

                    <div class="stat-card-top">
                        <span class="stat-icon">
                            <i class="fa-solid fa-hourglass-half"></i>
                        </span>
                        <span class="stat-label">AWAITING</span>
                    </div>

                    <div class="stat-number">
                        <asp:Label ID="lblPendingCases" runat="server" Text="0"></asp:Label>
                    </div>

                    <h3>Pending Cases</h3>
                    <p>Cases awaiting further investigation</p>

                    <div class="stat-card-footer">
                        <span>REQUIRES ATTENTION</span>
                        <i class="fa-solid fa-arrow-right"></i>
                    </div>

                </article>

            </div>

        </section>


        <!-- QUICK OPERATIONS -->
        <section class="dashboard-operations">

            <div class="section-heading">

                <div>
                    <span class="section-eyebrow">UNIT OPERATIONS</span>
                    <h2>Command & Control</h2>
                    <p>Access the essential detective management operations.</p>
                </div>

            </div>


            <div class="operations-grid">

                <a href="<%= ResolveUrl("~/Detective_Module/AddNew_Detective.aspx") %>"
                   class="operation-card register-operation">

                    <div class="operation-icon">
                        <i class="fa-solid fa-user-plus"></i>
                    </div>

                    <div class="operation-content">
                        <span class="operation-number">01 / PERSONNEL</span>
                        <h3>Register Detective</h3>
                        <p>Add a new detective to the investigation unit.</p>
                    </div>

                    <div class="operation-arrow">
                        <i class="fa-solid fa-arrow-up-right-from-square"></i>
                    </div>

                </a>


                <a href="<%= ResolveUrl("~/Detective_Module/Search_Detective.aspx") %>"
                   class="operation-card search-operation">

                    <div class="operation-icon">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </div>

                    <div class="operation-content">
                        <span class="operation-number">02 / INTELLIGENCE</span>
                        <h3>Search Detective</h3>
                        <p>Locate detective records and personnel information.</p>
                    </div>

                    <div class="operation-arrow">
                        <i class="fa-solid fa-arrow-up-right-from-square"></i>
                    </div>

                </a>


                <a href="<%= ResolveUrl("~/Detective_Module/All_Detective.aspx") %>"
                   class="operation-card directory-operation">

                    <div class="operation-icon">
                        <i class="fa-solid fa-address-book"></i>
                    </div>

                    <div class="operation-content">
                        <span class="operation-number">03 / DIRECTORY</span>
                        <h3>Detective Directory</h3>
                        <p>View and manage the complete detective database.</p>
                    </div>

                    <div class="operation-arrow">
                        <i class="fa-solid fa-arrow-up-right-from-square"></i>
                    </div>

                </a>

            </div>

        </section>


        <!-- INFORMATION PANELS -->
        <section class="dashboard-information">

            <div class="information-panel activity-panel">

                <div class="panel-heading">

                    <div class="panel-heading-icon">
                        <i class="fa-solid fa-clock-rotate-left"></i>
                    </div>

                    <div>
                        <span class="section-eyebrow">UNIT MONITORING</span>
                        <h3>Recent Activity</h3>
                    </div>

                </div>

                <div class="activity-placeholder">

                    <div class="activity-symbol">
                        <i class="fa-solid fa-fingerprint"></i>
                    </div>

                    <h4>Activity Monitoring</h4>

                    <p>
                        Detective unit activity and investigation updates
                        will appear here.
                    </p>

                    <span class="placeholder-status">
                        <i class="fa-solid fa-circle"></i>
                        MONITORING READY
                    </span>

                </div>

            </div>


            <div class="information-panel system-panel">

                <div class="panel-heading">

                    <div class="panel-heading-icon">
                        <i class="fa-solid fa-shield-halved"></i>
                    </div>

                    <div>
                        <span class="section-eyebrow">SYSTEM STATUS</span>
                        <h3>Unit Information</h3>
                    </div>

                </div>

                <div class="system-information-list">

                    <div class="system-information-row">
                        <span>Department</span>
                        <strong>Detective Unit</strong>
                    </div>

                    <div class="system-information-row">
                        <span>System Status</span>
                        <strong class="system-online">
                            <i class="fa-solid fa-circle"></i>
                            OPERATIONAL
                        </strong>
                    </div>

                    <div class="system-information-row">
                        <span>Current Date</span>
                        <strong>
                            <asp:Label ID="lblSystemDate" runat="server"></asp:Label>
                        </strong>
                    </div>

                    <div class="system-information-row">
                        <span>Security Level</span>
                        <strong>AUTHORIZED ACCESS</strong>
                    </div>

                </div>

                <div class="system-panel-footer">
                    <i class="fa-solid fa-lock"></i>
                    SECURE DETECTIVE MANAGEMENT ENVIRONMENT
                </div>

            </div>

        </section>


        <!-- FINAL MOTTO -->
        <section class="dashboard-motto">

            <div class="motto-decoration">
                <span></span>
                <i class="fa-solid fa-eye"></i>
                <span></span>
            </div>

            <p>
                THE TRUTH IS HIDDEN IN THE DETAILS.
            </p>

            <span>
                OBSERVE CAREFULLY. THINK CRITICALLY. SOLVE PRECISELY.
            </span>

        </section>

    </main>

</asp:Content>