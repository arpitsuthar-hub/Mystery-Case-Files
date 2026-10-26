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
    <link href="../CSS/Detective_Module/Dashboard_Detective.css?v=4" rel="stylesheet" type="text/css" />

</asp:Content>

<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <main class="detective-dashboard">
        <!-- ============================================== 01. DASHBOARD HEADER =============================================== -->
        <header class="dashboard-header">
            <div class="brand-area">
                <div class="brand-icon"><i class="fa-solid fa-user-secret"></i></div>
                <div class="brand-details"><span class="brand-eyebrow">MYSTERIOUS CASE FILES </span>
                    <h1>Detective Module</h1>
                    <p>Official Detective Personnel Management System </p>
                </div>
            </div>
            <div class="header-status"><span class="online-indicator"></span>
                <div class="status-text"><span class="status-title">SYSTEM STATUS</span> <span class="status-value">Operational</span> </div>
            </div>
        </header>
        <!-- ============================================== 02. HERO / WELCOME SECTION =============================================== -->
        <section class="hero-section">
            <div class="hero-content">
                <div class="hero-kicker"><span class="kicker-line"></span>PERSONNEL ADMINISTRATION </div>
                <h2>The Truth Begins <span>With Investigation.</span> </h2>
                <p class="hero-description">Manage detective registrations, maintain official personnel records, and access the detective directory through a centralized investigation management system. </p>
                <div class="hero-actions">
                    <asp:HyperLink ID="lnkRegisterDetective" runat="server" NavigateUrl="Register_Detective.aspx" CssClass="action-button action-primary"> <i class="fa-solid fa-user-plus"></i> <span>Register Detective</span> <i class="fa-solid fa-arrow-right button-arrow"></i> </asp:HyperLink>
                    <asp:HyperLink ID="lnkViewDirectory" runat="server" NavigateUrl="Detective_Directory.aspx" CssClass="action-button action-secondary"> <i class="fa-solid fa-address-book"></i> <span>View Directory</span> </asp:HyperLink>
                </div>
                <div class="hero-trust-line"><i class="fa-solid fa-shield-halved"></i><span>OFFICIAL PERSONNEL RECORDS </span><span class="trust-separator">/</span> <span>CONTROLLED ACCESS </span></div>
            </div>
            <div class="hero-visual" aria-hidden="true">
                <div class="visual-orbit orbit-one"></div>
                <div class="visual-orbit orbit-two"></div>
                <div class="visual-center"><i class="fa-solid fa-fingerprint"></i></div>
                <div class="visual-caption"><span class="caption-line"></span><span>IDENTITY &amp; INVESTIGATION</span> </div>
            </div>
        </section>
        <!-- ============================================== 03. STATISTICS SECTION =============================================== -->
        <section class="dashboard-section statistics-section">
            <div class="section-heading">
                <div class="section-heading-content"><span class="section-eyebrow">PERSONNEL OVERVIEW </span>
                    <h2>Department Statistics</h2>
                    <p>An overview of detective personnel and investigative activity. </p>
                </div>
                <div class="section-heading-decoration"><i class="fa-solid fa-chart-line"></i></div>
            </div>
            <div class="statistics-grid">
                <!-- Total Detectives -->
                <article class="stat-card">
                    <div class="stat-top">
                        <div class="stat-icon gold-icon"><i class="fa-solid fa-user-secret"></i></div>
                        <span class="stat-reference">PERSONNEL</span> </div>
                    <div class="stat-information"><span class="stat-label">Total Detectives </span>
                        <asp:Label ID="lblTotalDetectives" runat="server" CssClass="stat-number" Text="00" />
                    </div>
                    <div class="stat-bottom"><span>Registered personnel</span> <i class="fa-solid fa-arrow-up-right-from-square"></i></div>
                </article>
                <!-- Active Detectives -->
                <article class="stat-card">
                    <div class="stat-top">
                        <div class="stat-icon green-icon"><i class="fa-solid fa-user-check"></i></div>
                        <span class="stat-reference">STATUS</span> </div>
                    <div class="stat-information"><span class="stat-label">Active Detectives </span>
                        <asp:Label ID="lblActiveDetectives" runat="server" CssClass="stat-number" Text="00" />
                    </div>
                    <div class="stat-bottom"><span>Available personnel</span> <i class="fa-solid fa-circle-check"></i></div>
                </article>
                <!-- Assigned Cases -->
                <article class="stat-card">
                    <div class="stat-top">
                        <div class="stat-icon blue-icon"><i class="fa-solid fa-folder-open"></i></div>
                        <span class="stat-reference">INVESTIGATION</span> </div>
                    <div class="stat-information"><span class="stat-label">Assigned Cases </span>
                        <asp:Label ID="lblAssignedCases" runat="server" CssClass="stat-number" Text="00" />
                    </div>
                    <div class="stat-bottom"><span>Cases under investigation</span> <i class="fa-solid fa-arrow-up-right-from-square"></i></div>
                </article>
                <!-- Cases Solved -->
                <article class="stat-card">
                    <div class="stat-top">
                        <div class="stat-icon purple-icon"><i class="fa-solid fa-file-circle-check"></i></div>
                        <span class="stat-reference">RESOLUTION</span> </div>
                    <div class="stat-information"><span class="stat-label">Cases Solved </span>
                        <asp:Label ID="lblSolvedCases" runat="server" CssClass="stat-number" Text="00" />
                    </div>
                    <div class="stat-bottom"><span>Successfully resolved cases</span> <i class="fa-solid fa-check-double"></i></div>
                </article>
            </div>
        </section>
        <!-- ============================================== 04. DETECTIVE MANAGEMENT SECTION =============================================== -->
        <section class="dashboard-section management-section">
            <div class="section-heading">
                <div class="section-heading-content"><span class="section-eyebrow">PERSONNEL OPERATIONS </span>
                    <h2>Detective Management</h2>
                    <p>Manage registrations and access official detective records. </p>
                </div>
                <span class="section-count">02 OPERATIONS </span></div>
            <div class="management-grid">
                <!-- Register Detective -->
                <article class="management-card">
                    <div class="management-card-header">
                        <div class="management-icon"><i class="fa-solid fa-user-plus"></i></div>
                        <span class="management-number">01</span> </div>
                    <span class="management-category">PERSONNEL REGISTRATION </span>
                    <h3>Register Detective</h3>
                    <p>Register new detective personnel and maintain their official information within the system. </p>
                    <asp:HyperLink ID="lnkManageRegistration" runat="server" NavigateUrl="Register_Detective.aspx" CssClass="management-link"> <span>Open Registration</span> <i class="fa-solid fa-arrow-right"></i> </asp:HyperLink>
                </article>
                <!-- Detective Directory -->
                <article class="management-card">
                    <div class="management-card-header">
                        <div class="management-icon"><i class="fa-solid fa-address-book"></i></div>
                        <span class="management-number">02</span> </div>
                    <span class="management-category">PERSONNEL RECORDS </span>
                    <h3>Detective Directory</h3>
                    <p>View the registered detective directory and access personnel records when required. </p>
                    <asp:HyperLink ID="lnkManageDirectory" runat="server" NavigateUrl="Detective_Directory.aspx" CssClass="management-link"> <span>View Personnel</span> <i class="fa-solid fa-arrow-right"></i> </asp:HyperLink>
                </article>
            </div>
        </section>
     
        <!-- ============================================== 05. SECURITY INFORMATION =============================================== -->
        <section class="security-notice">
            <div class="security-notice-icon"><i class="fa-solid fa-shield-halved"></i></div>
            <div class="security-notice-content">
                <h3>Personnel Information Security</h3>
                <p>Detective personnel information and investigation records should be accessed only by authorized users. Verify information before updating official records. </p>
            </div>
            <div class="security-notice-status"><span class="security-dot"></span><span>SECURE ACCESS</span> </div>
        </section>
        <!-- ============================================== 06. FOOTER =============================================== -->
        <footer class="dashboard-footer">
            <div class="footer-brand"><i class="fa-solid fa-user-secret"></i><span>MYSTERIOUS CASE FILES</span> </div>
            <p>Official Detective Personnel Management System </p>
            <span class="footer-classification"><i class="fa-solid fa-lock"></i>AUTHORIZED PERSONNEL </span></footer>
    </main>
</asp:Content>
