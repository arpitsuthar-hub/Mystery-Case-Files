<%@ Page Title="Chief Detective Dashboard"
    Language="C#"
    AutoEventWireup="true"
    CodeBehind="Chief_Dashboard.aspx.cs"
    Inherits="Mystery_Case_Files.Chief_Detective_Module.Chief_Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <title>Chief Detective Dashboard | Mysterious Case Files</title>

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@400;500;600;700;800;900&family=Poppins:wght@300;400;500;600;700&display=swap"
        rel="stylesheet" />

    <!-- Font Awesome -->
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />

    <!-- Dashboard CSS -->
    <link href="../CSS/Chief_Detective/Chief-Detective_Dashboard.css"
        rel="stylesheet"
        type="text/css" />

</head>

<body>

    <form id="form1" runat="server">

        <main class="dashboard">

            <!-- =================================================
                 TOP NAVIGATION BAR
            ================================================== -->

            <header class="dashboard-topbar">

                <div class="topbar-brand">

                    <div class="topbar-icon">
                        <i class="fas fa-user-secret"></i>
                    </div>

                    <div class="topbar-text">

                        <h1 class="topbar-title">
                            Chief Detective Dashboard
                        </h1>

                        <p class="topbar-subtitle">
                            Mysterious Case Files
                        </p>

                    </div>

                </div>


                <div class="topbar-actions">

                    <div class="connection-status">

                        <span class="status-dot"></span>

                        <span>
                            System Operational
                        </span>

                    </div>

                    <asp:HyperLink
                        ID="lnkLogout"
                        runat="server"
                        NavigateUrl="~/Main_Dashboard.aspx"
                        CssClass="logout-link"
                        onclick="return confirm('Are you sure you want to leave the Chief Detective Dashboard?');">

                        <i class="fas fa-right-from-bracket"></i>

                        <span>Logout</span>

                    </asp:HyperLink>

                </div>

            </header>


            <!-- =================================================
                 HERO SECTION
                 FULLY TRANSPARENT
            ================================================== -->

            <section class="hero">

                <div class="hero-icon">

                    <i class="fas fa-fingerprint"></i>

                </div>


                <div class="hero-content">

                    <h2 class="brand">
                        Mysterious Case Files
                    </h2>

                    <p class="hero-description">
                        Welcome to the investigation control center.
                        Manage detectives, organize criminal cases,
                        and evaluate investigative intelligence through
                        a centralized investigation system.
                    </p>

                    <div class="hero-status">

                        <i class="fas fa-circle-check"></i>

                        <span>
                            Authorized Access
                        </span>

                    </div>

                </div>

            </section>


            <!-- =================================================
                 INVESTIGATION MODULES
            ================================================== -->

            <section class="modules-section">


                <!-- MODULE HEADING -->

                <div class="modules-title">

                    <p class="section-label">

                        <i class="fas fa-fingerprint"></i>

                        COMMAND CENTER

                    </p>


                    <h2>
                        INVESTIGATION MODULES
                    </h2>


                    <p class="section-description">
                        Select a module to access your investigation records.
                    </p>


                    <div class="section-line"></div>

                </div>


                <!-- MODULE CARDS -->

                <div class="modules-grid">


                    <!-- =========================================
                         DETECTIVE MANAGEMENT
                    ========================================== -->

                    <asp:HyperLink
                        ID="lnkDetectiveModule"
                        runat="server"
                        NavigateUrl="~/Detective_Module/Dashboard_Detective.aspx"
                        CssClass="module-card detective-card">

                        <div class="module-card-top">

                            <div class="module-icon">

                                <i class="fas fa-user-secret"></i>

                            </div>

                            <span class="module-category">
                                PERSONNEL INTELLIGENCE
                            </span>

                        </div>


                        <div class="module-content">

                            <h3>
                                Detective Management
                            </h3>

                            <p class="module-description">
                                Manage detective records, maintain personnel
                                information, and oversee investigation
                                assignments.
                            </p>

                            <div class="module-stat">

                                <i class="fas fa-users"></i>

                                <span>
                                    <asp:Label
                                        ID="lblTotalDetectives"
                                        runat="server"
                                        Text="00" />
                                    Registered Detectives
                                </span>

                            </div>

                        </div>


                        <div class="module-arrow">

                            <i class="fas fa-arrow-right"></i>

                        </div>

                    </asp:HyperLink>



                    <!-- =========================================
                         CASE MANAGEMENT
                    ========================================== -->

                    <asp:HyperLink
                        ID="lnkCaseModule"
                        runat="server"
                        NavigateUrl="~/Case-Management_Module/Dashboard_Case.aspx"
                        CssClass="module-card case-card">

                        <div class="module-card-top">

                            <div class="module-icon">

                                <i class="fas fa-folder-open"></i>

                            </div>

                            <span class="module-category">
                                CRIMINAL INVESTIGATIONS
                            </span>

                        </div>


                        <div class="module-content">

                            <h3>
                                Case Management
                            </h3>

                            <p class="module-description">
                                Create and manage criminal cases, review
                                case information, and monitor investigation
                                progress.
                            </p>

                            <div class="module-stat">

                                <i class="fas fa-folder-closed"></i>

                                <span>
                                    <asp:Label
                                        ID="lblTotalCases"
                                        runat="server"
                                        Text="00" />
                                    Registered Cases
                                </span>

                            </div>

                        </div>


                        <div class="module-arrow">

                            <i class="fas fa-arrow-right"></i>

                        </div>

                    </asp:HyperLink>



                    <!-- =========================================
                         QUIZ MANAGEMENT
                    ========================================== -->

                    <asp:HyperLink
                        ID="lnkQuizModule"
                        runat="server"
                        NavigateUrl="~/Quiz_Module/Quiz_Dashboard.aspx"
                        CssClass="module-card quiz-card">

                        <div class="module-card-top">

                            <div class="module-icon">

                                <i class="fas fa-brain"></i>

                            </div>

                            <span class="module-category">
                                INVESTIGATIVE INTELLIGENCE
                            </span>

                        </div>


                        <div class="module-content">

                            <h3>
                                Quiz Management
                            </h3>

                            <p class="module-description">
                                Manage investigative quizzes, configure
                                difficulty levels, and assess detective
                                reasoning and analytical skills.
                            </p>

                            <div class="module-stat">

                                <i class="fas fa-puzzle-piece"></i>

                                <span>
                                    <asp:Label
                                        ID="lblTotalQuizzes"
                                        runat="server"
                                        Text="00" />
                                    Registered Quizzes
                                </span>

                            </div>

                        </div>


                        <div class="module-arrow">

                            <i class="fas fa-arrow-right"></i>

                        </div>

                    </asp:HyperLink>


                </div>

            </section>


            <!-- =================================================
                 DASHBOARD FOOTER
            ================================================== -->

            <footer class="dashboard-footer">

                <div class="footer-left">

                    <i class="fas fa-shield-halved"></i>

                    <span>
                        Mysterious Case Files
                    </span>

                    <span class="footer-separator">|</span>

                    <span>
                        Authorized Personnel Only
                    </span>

                </div>


                <div class="footer-right">

                    <i class="fas fa-lock"></i>

                    <span>
                        SECURE INVESTIGATION SYSTEM
                    </span>

                </div>

            </footer>

        </main>

    </form>

</body>

</html>