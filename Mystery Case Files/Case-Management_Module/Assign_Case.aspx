<%@ Page Title="Assign Investigation Case"
    Language="C#"
    MasterPageFile="~/Master_Pages/Case.Master"
    AutoEventWireup="true"
    CodeBehind="Assign_Case.aspx.cs"
    Inherits="Mystery_Case_Files.Case_Management_Module.Assign_Case" %>

<asp:Content ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <link href="../CSS/Case-Management/Assign_Case.css?v=3"
        rel="stylesheet" />

</asp:Content>


<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <div class="assign-page">

        <div class="assign-container">

            <!-- =========================================
                 PAGE HEADING
            ========================================== -->

            <header class="assign-header">

                <div class="assign-eyebrow">
                    <span></span>
                    CONFIDENTIAL INVESTIGATION DIVISION
                    <span></span>
                </div>

                <div class="assign-title-icon">
                    <i class="fa-solid fa-user-secret"></i>
                </div>

                <h1>CASE ASSIGNMENT</h1>

                <p>
                    Every investigation begins with the right detective.
                    Assign responsibility. Uncover the truth.
                </p>

                <div class="assign-header-divider">
                    <span></span>
                    <i class="fa-solid fa-star"></i>
                    <span></span>
                </div>

            </header>


            <!-- =========================================
                 MAIN ASSIGNMENT CARD
            ========================================== -->

            <section class="assign-card">

                <!-- CARD HEADING -->

                <div class="assign-card-header">

                    <div class="assign-card-title">

                        <div class="assign-card-icon">
                            <i class="fa-solid fa-folder-open"></i>
                        </div>

                        <div>
                            <span class="assign-card-overline">
                                INVESTIGATION CONTROL
                            </span>

                            <h2>Assign Investigation Case</h2>

                            <p>
                                Complete the following steps to authorize a case assignment.
                            </p>
                        </div>

                    </div>

                    <div class="assign-confidential">
                        <i class="fa-solid fa-lock"></i>
                        CLASSIFIED
                    </div>

                </div>


                <!-- MESSAGE -->

                <asp:Label ID="LabelMessage"
                    runat="server"
                    CssClass="assign-message">
                </asp:Label>


                <!-- =====================================
                     STEP 01 : CLASSIFICATION
                ====================================== -->

                <div class="assign-section">

                    <div class="assign-section-heading">

                        <div class="step-number">01</div>

                        <div>
                            <span class="section-kicker">FIRST STEP</span>
                            <h3>Case Classification</h3>
                            <p>
                                Identify the nature of the investigation.
                            </p>
                        </div>

                    </div>


                    <div class="assign-grid">

                        <!-- CATEGORY -->

                        <div class="assign-group">

                            <label>
                                <i class="fa-solid fa-layer-group"></i>
                                Case Category
                                <span class="required">*</span>
                            </label>

                            <asp:DropDownList
                                ID="DropDownListCategory"
                                runat="server"
                                CssClass="assign-control"
                                AutoPostBack="true">

                                <asp:ListItem Value="">
                                    -- Select Case Category --
                                </asp:ListItem>

                                <asp:ListItem>Murder</asp:ListItem>
                                <asp:ListItem>Mysterious Death</asp:ListItem>
                                <asp:ListItem>Missing Person</asp:ListItem>
                                <asp:ListItem>Kidnapping</asp:ListItem>
                                <asp:ListItem>Robbery</asp:ListItem>
                                <asp:ListItem>Serial Killing</asp:ListItem>
                                <asp:ListItem>Suspicious Suicide</asp:ListItem>
                                <asp:ListItem>Unsolved Mystery</asp:ListItem>
                                <asp:ListItem>Other</asp:ListItem>

                            </asp:DropDownList>

                            <small>
                                Select the registered case category.
                            </small>

                        </div>


                        <!-- DEPARTMENT -->

                        <div class="assign-group">

                            <label>
                                <i class="fa-solid fa-building-shield"></i>
                                Investigation Department
                                <span class="required">*</span>
                            </label>

                            <asp:DropDownList
                                ID="DropDownListDepartment"
                                runat="server"
                                CssClass="assign-control"
                                AutoPostBack="true">

                                <asp:ListItem Value="">
                                    -- Select Department --
                                </asp:ListItem>

                            </asp:DropDownList>

                            <small>
                                Departments are filtered by case category.
                            </small>

                        </div>

                    </div>

                </div>


                <!-- =====================================
                     STEP 02 : CASE SELECTION
                ====================================== -->

                <div class="assign-section">

                    <div class="assign-section-heading">

                        <div class="step-number">02</div>

                        <div>
                            <span class="section-kicker">SECOND STEP</span>
                            <h3>Case Selection</h3>
                            <p>
                                Choose an existing investigation record.
                            </p>
                        </div>

                    </div>


                    <div class="assign-grid">

                        <div class="assign-group full-width">

                            <label>
                                <i class="fa-solid fa-file-circle-check"></i>
                                Select Registered Case
                                <span class="required">*</span>
                            </label>

                            <asp:DropDownList
                                ID="DropDownListCase"
                                runat="server"
                                CssClass="assign-control"
                                AutoPostBack="true">

                                <asp:ListItem Value="">
                                    -- Select Registered Case --
                                </asp:ListItem>

                            </asp:DropDownList>

                            <small>
                                Only cases matching the selected category will appear.
                            </small>

                        </div>

                    </div>


                    <!-- SELECTED CASE INFORMATION -->

                    <asp:Panel ID="PanelCaseInfo"
                        runat="server"
                        CssClass="case-info-panel"
                        Visible="false">

                        <div class="info-panel-heading">

                            <i class="fa-solid fa-folder-tree"></i>

                            <div>
                                <h4>Selected Case Information</h4>
                                <span>INVESTIGATION RECORD</span>
                            </div>

                        </div>


                        <div class="case-info-grid">

                            <div class="info-item">
                                <span>Case Number</span>
                                <asp:Label ID="LabelCaseNumber" runat="server" />
                            </div>

                            <div class="info-item">
                                <span>Case Name</span>
                                <asp:Label ID="LabelCaseName" runat="server" />
                            </div>

                            <div class="info-item">
                                <span>Difficulty</span>
                                <asp:Label ID="LabelDifficulty" runat="server" />
                            </div>

                            <div class="info-item">
                                <span>Priority</span>
                                <asp:Label ID="LabelPriority" runat="server" />
                            </div>

                            <div class="info-item">
                                <span>Case Status</span>
                                <asp:Label ID="LabelCaseStatus" runat="server" />
                            </div>

                            <div class="info-item">
                                <span>Registration Date</span>
                                <asp:Label ID="LabelRegisterDate" runat="server" />
                            </div>

                        </div>

                    </asp:Panel>

                </div>


                <!-- =====================================
                     STEP 03 : DETECTIVE SELECTION
                ====================================== -->

                <div class="assign-section">

                    <div class="assign-section-heading">

                        <div class="step-number">03</div>

                        <div>
                            <span class="section-kicker">THIRD STEP</span>
                            <h3>Detective Selection</h3>
                            <p>
                                Select the authorized officer responsible for the case.
                            </p>
                        </div>

                    </div>


                    <div class="assign-grid">

                        <div class="assign-group full-width">

                            <label>
                                <i class="fa-solid fa-user-shield"></i>
                                Select Detective
                                <span class="required">*</span>
                            </label>

                            <asp:DropDownList
                                ID="DropDownListDetective"
                                runat="server"
                                CssClass="assign-control"
                                AutoPostBack="true">

                                <asp:ListItem Value="">
                                    -- Select Detective --
                                </asp:ListItem>

                            </asp:DropDownList>

                            <small>
                                Only detectives belonging to the selected department will appear.
                            </small>

                        </div>

                    </div>


                    <!-- SELECTED DETECTIVE INFORMATION -->

                    <asp:Panel ID="PanelDetectiveInfo"
                        runat="server"
                        CssClass="detective-info-panel"
                        Visible="false">

                        <div class="info-panel-heading">

                            <i class="fa-solid fa-id-badge"></i>

                            <div>
                                <h4>Selected Detective Information</h4>
                                <span>OFFICER PROFILE</span>
                            </div>

                        </div>


                        <div class="case-info-grid">

                            <div class="info-item">
                                <span>Detective ID</span>
                                <asp:Label ID="LabelDetectiveID" runat="server" />
                            </div>

                            <div class="info-item">
                                <span>Detective Name</span>
                                <asp:Label ID="LabelDetectiveName" runat="server" />
                            </div>

                            <div class="info-item">
                                <span>Department</span>
                                <asp:Label ID="LabelDetectiveDepartment" runat="server" />
                            </div>

                            <div class="info-item">
                                <span>Cases Solved</span>
                                <asp:Label ID="LabelCasesSolved" runat="server" />
                            </div>

                        </div>

                    </asp:Panel>

                </div>


                <!-- =====================================
                     STEP 04 : ASSIGNMENT DETAILS
                ====================================== -->

                <div class="assign-section last-section">

                    <div class="assign-section-heading">

                        <div class="step-number">04</div>

                        <div>
                            <span class="section-kicker">FINAL STEP</span>
                            <h3>Assignment Details</h3>
                            <p>
                                Set the assignment priority and provide instructions.
                            </p>
                        </div>

                    </div>


                    <div class="assign-grid">

                        <!-- DATE -->

                        <div class="assign-group">

                            <label>
                                <i class="fa-regular fa-calendar"></i>
                                Assignment Date
                            </label>

                            <asp:Label ID="LabelAssignmentDate"
                                runat="server"
                                CssClass="assign-readonly">
                            </asp:Label>

                        </div>


                        <!-- PRIORITY -->

                        <div class="assign-group">

                            <label>
                                <i class="fa-solid fa-flag"></i>
                                Assignment Priority
                            </label>

                            <asp:DropDownList
                                ID="DropDownListAssignmentPriority"
                                runat="server"
                                CssClass="assign-control">

                                <asp:ListItem>Low</asp:ListItem>

                                <asp:ListItem Selected="True">
                                    Medium
                                </asp:ListItem>

                                <asp:ListItem>High</asp:ListItem>

                                <asp:ListItem>Urgent</asp:ListItem>

                            </asp:DropDownList>

                        </div>


                        <!-- INSTRUCTIONS -->

                        <div class="assign-group full-width">

                            <label>
                                <i class="fa-solid fa-pen-to-square"></i>
                                Investigation Instructions
                            </label>

                            <asp:TextBox
                                ID="TextBoxInstructions"
                                runat="server"
                                TextMode="MultiLine"
                                CssClass="assign-control assign-textarea"
                                placeholder="Enter special investigation instructions for the detective...">
                            </asp:TextBox>

                            <small>
                                Include important leads, precautions and investigation objectives.
                            </small>

                        </div>

                    </div>

                </div>


                <!-- =====================================
                     ACTION BUTTONS
                ====================================== -->

                <div class="assign-actions">

                    <div class="assign-action-note">
                        <i class="fa-solid fa-shield-halved"></i>

                        <span>
                            Authorization required from Chief Detective.
                        </span>
                    </div>


                    <div class="assign-action-buttons">

                        <asp:Button
                            ID="ButtonReset"
                            runat="server"
                            Text="Reset Form"
                            CssClass="assign-btn-secondary"
                            CausesValidation="false" />


                        <asp:Button
                            ID="ButtonAssignCase"
                            runat="server"
                            Text="Assign Investigation"
                            CssClass="assign-btn-primary" />

                    </div>

                </div>

            </section>


            <!-- BOTTOM NOTE -->

            <div class="assign-bottom-note">

                <i class="fa-solid fa-lock"></i>

                <span>
                    ALL ASSIGNMENTS ARE RECORDED IN THE CONFIDENTIAL INVESTIGATION DATABASE.
                </span>

            </div>

        </div>

    </div>

</asp:Content>