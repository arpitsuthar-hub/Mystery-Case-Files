<%@ Page Title="Case Details"
    Language="C#"
    MasterPageFile="~/Master_Pages/Case.Master"
    AutoEventWireup="true"
    CodeBehind="DetailsOf_Case.aspx.cs"
    Inherits="Mystery_Case_Files.Case_Management_Module.DetailsOf_Case"
    UnobtrusiveValidationMode="None" %>

<asp:Content ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <link href="../CSS/Case-Management/DetailsOf_Case.css"
        rel="stylesheet"
        type="text/css" />

</asp:Content>


<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <div class="case-details-page">

        <!-- PAGE HEADER -->
        <div class="page-header">

            <div class="header-left">

                <div class="header-icon">
                    <i class="fa-solid fa-folder-open"></i>
                </div>

                <div class="header-text">
                    <span class="eyebrow">
                        CASE MANAGEMENT SYSTEM
                    </span>

                    <h1>Case Details</h1>

                    <p>
                        Complete information about the selected case.
                    </p>
                </div>

            </div>

            <asp:HyperLink ID="lnkBack"
                runat="server"
                NavigateUrl="~/Case_Management_Module/All_Case.aspx"
                CssClass="back-button">

                <i class="fa-solid fa-arrow-left"></i>
                Back to All Cases

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


        <!-- CASE DETAILS -->
        <asp:Panel ID="pnlCaseDetails"
            runat="server"
            CssClass="case-content"
            Visible="false">


            <!-- CASE OVERVIEW -->
            <div class="case-overview">

                <div class="overview-main">

                    <span class="section-label">
                        INVESTIGATION RECORD
                    </span>

                    <h2>
                        <asp:Label ID="lblCaseName"
                            runat="server">
                        </asp:Label>
                    </h2>

                    <div class="case-number">

                        <i class="fa-solid fa-fingerprint"></i>

                        <span>Case Number:</span>

                        <asp:Label ID="lblCaseNo"
                            runat="server">
                        </asp:Label>

                    </div>

                </div>


                <div class="overview-status">

                    <span class="status-label">
                        CURRENT STATUS
                    </span>

                    <asp:Label ID="lblCaseStatus"
                        runat="server"
                        CssClass="status-badge">
                    </asp:Label>

                </div>

            </div>


            <!-- SUMMARY -->
            <div class="summary-grid">

                <!-- CATEGORY -->
                <div class="summary-card">

                    <div class="summary-icon">
                        <i class="fa-solid fa-layer-group"></i>
                    </div>

                    <div class="summary-info">

                        <span>CASE CATEGORY</span>

                        <asp:Label ID="lblCategory"
                            runat="server"
                            CssClass="summary-value">
                        </asp:Label>

                    </div>

                </div>


                <!-- REGISTRATION DATE -->
                <div class="summary-card">

                    <div class="summary-icon">
                        <i class="fa-solid fa-calendar-days"></i>
                    </div>

                    <div class="summary-info">

                        <span>REGISTRATION DATE</span>

                        <asp:Label ID="lblRegisterDate"
                            runat="server"
                            CssClass="summary-value">
                        </asp:Label>

                    </div>

                </div>

            </div>


            <!-- VICTIM DETAILS -->
            <div class="details-card">

                <div class="details-heading">

                    <div class="heading-icon">
                        <i class="fa-solid fa-user-injured"></i>
                    </div>

                    <div>
                        <h3>Victim Information</h3>

                        <p>
                            Recorded information about the victim.
                        </p>
                    </div>

                </div>

                <div class="details-body">

                    <asp:Label ID="lblVictimDetails"
                        runat="server"
                        CssClass="details-text">
                    </asp:Label>

                </div>

            </div>


            <!-- CASE DESCRIPTION -->
            <div class="details-card">

                <div class="details-heading">

                    <div class="heading-icon">
                        <i class="fa-solid fa-file-lines"></i>
                    </div>

                    <div>
                        <h3>Case Description</h3>

                        <p>
                            Incident information and investigation details.
                        </p>
                    </div>

                </div>

                <div class="details-body">

                    <asp:Label ID="lblCaseDetails"
                        runat="server"
                        CssClass="details-text">
                    </asp:Label>

                </div>

            </div>


            <!-- EVIDENCE -->
            <div class="details-card">

                <div class="details-heading">

                    <div class="heading-icon">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </div>

                    <div>
                        <h3>Evidence Records</h3>

                        <p>
                            Evidence recorded for this case.
                        </p>
                    </div>

                </div>

                <div class="details-body">

                    <asp:Label ID="lblEvidence"
                        runat="server"
                        CssClass="details-text">
                    </asp:Label>

                </div>

            </div>


            <!-- SUSPECTS -->
            <div class="details-card">

                <div class="details-heading">

                    <div class="heading-icon">
                        <i class="fa-solid fa-user-secret"></i>
                    </div>

                    <div>
                        <h3>Suspect Information</h3>

                        <p>
                            Suspect details associated with this case.
                        </p>
                    </div>

                </div>

                <div class="details-body">

                    <asp:Label ID="lblSuspects"
                        runat="server"
                        CssClass="details-text">
                    </asp:Label>

                </div>

            </div>


            <!-- ACTIONS -->
            <div class="case-actions">

                <asp:HyperLink ID="lnkBackBottom"
                    runat="server"
                    NavigateUrl="~/Case_Management_Module/All_Case.aspx"
                    CssClass="secondary-button">

                    <i class="fa-solid fa-arrow-left"></i>
                    Back to All Cases

                </asp:HyperLink>


                <asp:HyperLink ID="lnkEditCase"
                    runat="server"
                    CssClass="primary-button">

                    <i class="fa-solid fa-pen-to-square"></i>
                    Edit Case

                </asp:HyperLink>

            </div>

        </asp:Panel>

    </div>

</asp:Content>
