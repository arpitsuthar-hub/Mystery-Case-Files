<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Chief_Dashboard.aspx.cs"
    Inherits="Mystery_Case_Files.Chief_Detective_Module.Chief_Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <title>Chief Detective Dashboard | Mystery Case Files</title>

    <!-- Font Awesome Icons -->
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" />

    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />

    <link rel="preconnect"
        href="https://fonts.gstatic.com"
        crossorigin="anonymous" />

    <link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@400;500;600;700&family=Poppins:wght@300;400;500;600;700&display=swap"
        rel="stylesheet" />

    <!-- Dashboard CSS -->
    <link rel="stylesheet"
        href="../CSS/Chief_Detective/Chief-Detective_Dashboard.css?v=2" />

</head>

<body>

    <form id="form1" runat="server">

        <main class="dashboard">

            <!-- ==========================================
                 HERO HEADER
            ========================================== -->

            <section class="hero">

                <div class="hero-icon">
                    <i class="fa-solid fa-user-secret"></i>
                </div>

                <div class="hero-content">

                    <div class="brand">
                        <i class="fa-solid fa-shield-halved"></i>
                        <span>MYSTERY CASE FILES</span>
                    </div>

                    <h1>Chief Detective Dashboard</h1>

                    <p class="hero-description">
                        Every clue matters. Every detail tells a story.
                        Every case has a hidden truth.
                    </p>

                </div>

                <div class="hero-status">
                    <span class="status-dot"></span>
                    <span>INVESTIGATION CONTROL</span>
                </div>

            </section>


            <!-- ==========================================
                 DASHBOARD SECTION HEADING
            ========================================== -->

            <section class="section-heading">

                <div class="heading-content">

                    <p class="section-label">COMMAND CENTER</p>

                    <h2>Investigation Modules</h2>

                    <p class="section-description">
                        Select a module to access your investigation records.
                    </p>

                </div>

                <div class="authorization">
                    <i class="fa-solid fa-shield-halved"></i>
                    <span>AUTHORIZED ACCESS</span>
                </div>

            </section>


            <!-- ==========================================
                 INVESTIGATION MODULES
            ========================================== -->

            <section class="modules-section">

                <!-- MODULE SECTION TITLE -->

                <div class="modules-title">

                    <span class="section-line"></span>

                    <h2>INVESTIGATION MODULES</h2>

                    <span class="section-line"></span>

                </div>


                <!-- THREE-CARD GRID -->

                <div class="modules-grid">


                    <!-- ==================================
                         DETECTIVE MANAGEMENT
                    ================================== -->

                    <asp:HyperLink
                        ID="lnkDetectiveManagement"
                        runat="server"
                        NavigateUrl="~/Detective_Module/Dashboard_Detective.aspx"
                        CssClass="module-card detective-card">

                        <div class="module-icon">
                            <i class="fa-solid fa-user-secret"></i>
                        </div>

                        <div class="module-content">

                            <p class="module-category">
                                PERSONNEL RECORDS
                            </p>

                            <h3>Detective Management</h3>

                            <p class="module-description">
                                Manage detectives, review their profiles,
                                and monitor investigation performance.
                            </p>

                            <div class="module-stat">

                                <asp:Label
                                    ID="lblTotalDetectives"
                                    runat="server"
                                    Text="0" />

                                <span>Registered Detectives</span>

                            </div>

                        </div>

                        <div class="module-arrow">
                            <span>Explore Module</span>
                            <i class="fa-solid fa-arrow-right"></i>
                        </div>

                    </asp:HyperLink>


                    <!-- ==================================
                         CASE MANAGEMENT
                    ================================== -->

                    <asp:HyperLink
                        ID="lnkCaseManagement"
                        runat="server"
                        NavigateUrl="~/Case-Management_Module/Dashboard_Case.aspx"
                        CssClass="module-card case-card">

                        <div class="module-icon">
                            <i class="fa-solid fa-folder-open"></i>
                        </div>

                        <div class="module-content">

                            <p class="module-category">
                                CLASSIFIED FILES
                            </p>

                            <h3>Case Management</h3>

                            <p class="module-description">
                                Create cases, manage case records,
                                and oversee ongoing investigations.
                            </p>

                            <div class="module-stat">

                                <asp:Label
                                    ID="lblTotalCases"
                                    runat="server"
                                    Text="0" />

                                <span>Total Cases</span>

                            </div>

                        </div>

                        <div class="module-arrow">
                            <span>Explore Module</span>
                            <i class="fa-solid fa-arrow-right"></i>
                        </div>

                    </asp:HyperLink>


                    <!-- ==================================
                         DETECTIVE QUIZ
                    ================================== -->

                    <asp:HyperLink
                        ID="lnkDetectiveQuiz"
                        runat="server"
                        NavigateUrl="~/Quiz_Module/Quiz_Dashboard.aspx"
                        CssClass="module-card quiz-card">

                        <div class="module-icon">
                            <i class="fa-solid fa-brain"></i>
                        </div>

                        <div class="module-content">

                            <p class="module-category">
                                INTELLIGENCE CENTER
                            </p>

                            <h3>Detective Quiz</h3>

                            <p class="module-description">
                                Manage detective quizzes, test investigative
                                skills, and evaluate detective knowledge.
                            </p>

                            <div class="module-stat">

                                <asp:Label
                                    ID="lblTotalQuizzes"
                                    runat="server"
                                    Text="0" />

                                <span>Total Quizzes</span>

                            </div>

                        </div>

                        <div class="module-arrow">
                            <span>Explore Module</span>
                            <i class="fa-solid fa-arrow-right"></i>
                        </div>

                    </asp:HyperLink>


                </div>

            </section>

        </main>

    </form>

</body>
</html>
