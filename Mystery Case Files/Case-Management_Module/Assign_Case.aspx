<%@ Page Title="Assign Case"
    Language="C#"
    MasterPageFile="~/Master_Pages/Case.Master"
    AutoEventWireup="true"
    CodeBehind="Assign_Case.aspx.cs"
    Inherits="Mystery_Case_Files.Case_Management_Module.Assign_Case" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="../CSS/Case-Management/Assign_Case.css"
          rel="stylesheet" />

</asp:Content>


<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <div class="assign-page">

        <div class="assign-container">

            <!-- PAGE HEADER -->

            <div class="assign-header">

                <div class="assign-header-icon">
                    <i class="fa-solid fa-user-shield"></i>
                </div>

                <h1>CASE ASSIGNMENT</h1>

                <p>
                    Assign investigation cases to authorized detectives
                    according to their department and specialization.
                </p>

                <div class="assign-header-line"></div>

            </div>


            <!-- MAIN ASSIGNMENT PANEL -->

            <div class="assign-card">

                <div class="assign-card-header">

                    <div class="assign-card-title">

                        <i class="fa-solid fa-folder-open"></i>

                        <div>
                            <h2>Assign Investigation Case</h2>
                            <p>Select case details and responsible detective</p>
                        </div>

                    </div>

                    <span class="assign-badge">
                        CHIEF DETECTIVE
                    </span>

                </div>


                <!-- MESSAGE -->

                <asp:Label ID="LabelMessage"
                    runat="server"
                    CssClass="assign-message">
                </asp:Label>


                <!-- ASSIGNMENT FORM -->

                <div class="assign-form">


                    <!-- STEP 1 -->

                    <div class="assign-section">

                        <div class="assign-section-heading">

                            <span class="step-number">01</span>

                            <div>
                                <h3>Case Classification</h3>
                                <p>Select the case category and investigation department</p>
                            </div>

                        </div>


                        <div class="assign-grid">

                            <!-- CASE CATEGORY -->

                            <div class="assign-group">

                                <label>
                                    Case Category
                                    <span class="required">*</span>
                                </label>

                                <asp:DropDownList
                                    ID="DropDownListCategory"
                                    runat="server"
                                    CssClass="assign-control"
                                    AutoPostBack="true"
                                    >

                                    <asp:ListItem Value="">-- Select Case Category --</asp:ListItem>

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
                                    Choose the investigation category.
                                </small>

                            </div>


                            <!-- DEPARTMENT -->

                            <div class="assign-group">

                                <label>
                                    Investigation Department
                                    <span class="required">*</span>
                                </label>

                                <asp:DropDownList
                                    ID="DropDownListDepartment"
                                    runat="server"
                                    CssClass="assign-control"
                                    AutoPostBack="true"
                                    >

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



                    <!-- STEP 2 -->

                    <div class="assign-section">

                        <div class="assign-section-heading">

                            <span class="step-number">02</span>

                            <div>
                                <h3>Case Selection</h3>
                                <p>Select the registered case for assignment</p>
                            </div>

                        </div>


                        <div class="assign-grid">

                            <!-- SELECT CASE -->

                            <div class="assign-group full-width">

                                <label>
                                    Select Case
                                    <span class="required">*</span>
                                </label>

                                <asp:DropDownList
                                    ID="DropDownListCase"
                                    runat="server"
                                    CssClass="assign-control"
                                    AutoPostBack="true"
                                   >

                                    <asp:ListItem Value="">
                                        -- Select Registered Case --
                                    </asp:ListItem>

                                </asp:DropDownList>

                                <small>
                                    Only cases matching the selected category will appear.
                                </small>

                            </div>

                        </div>



                        <!-- CASE INFORMATION -->

                        <asp:Panel ID="PanelCaseInfo"
                            runat="server"
                            CssClass="case-info-panel"
                            Visible="false">

                            <div class="info-panel-title">

                                <i class="fa-solid fa-file-lines"></i>

                                <span>SELECTED CASE INFORMATION</span>

                            </div>


                            <div class="case-info-grid">

                                <div class="info-item">

                                    <span>Case Number</span>

                                    <asp:Label ID="LabelCaseNumber"
                                        runat="server">
                                    </asp:Label>

                                </div>


                                <div class="info-item">

                                    <span>Case Name</span>

                                    <asp:Label ID="LabelCaseName"
                                        runat="server">
                                    </asp:Label>

                                </div>


                                <div class="info-item">

                                    <span>Difficulty</span>

                                    <asp:Label ID="LabelDifficulty"
                                        runat="server">
                                    </asp:Label>

                                </div>


                                <div class="info-item">

                                    <span>Priority</span>

                                    <asp:Label ID="LabelPriority"
                                        runat="server">
                                    </asp:Label>

                                </div>


                                <div class="info-item">

                                    <span>Case Status</span>

                                    <asp:Label ID="LabelCaseStatus"
                                        runat="server">
                                    </asp:Label>

                                </div>


                                <div class="info-item">

                                    <span>Registration Date</span>

                                    <asp:Label ID="LabelRegisterDate"
                                        runat="server">
                                    </asp:Label>

                                </div>

                            </div>

                        </asp:Panel>

                    </div>



                    <!-- STEP 3 -->

                    <div class="assign-section">

                        <div class="assign-section-heading">

                            <span class="step-number">03</span>

                            <div>
                                <h3>Detective Selection</h3>
                                <p>Choose an authorized detective from the selected department</p>
                            </div>

                        </div>


                        <div class="assign-grid">

                            <!-- SELECT DETECTIVE -->

                            <div class="assign-group full-width">

                                <label>
                                    Select Detective
                                    <span class="required">*</span>
                                </label>

                                <asp:DropDownList
                                    ID="DropDownListDetective"
                                    runat="server"
                                    CssClass="assign-control"
                                    AutoPostBack="true"
                                    >

                                    <asp:ListItem Value="">
                                        -- Select Detective --
                                    </asp:ListItem>

                                </asp:DropDownList>

                                <small>
                                    Only detectives belonging to the selected department will appear.
                                </small>

                            </div>

                        </div>



                        <!-- DETECTIVE INFORMATION -->

                        <asp:Panel ID="PanelDetectiveInfo"
                            runat="server"
                            CssClass="detective-info-panel"
                            Visible="false">

                            <div class="info-panel-title">

                                <i class="fa-solid fa-user-secret"></i>

                                <span>SELECTED DETECTIVE INFORMATION</span>

                            </div>


                            <div class="case-info-grid">

                                <div class="info-item">

                                    <span>Detective ID</span>

                                    <asp:Label ID="LabelDetectiveID"
                                        runat="server">
                                    </asp:Label>

                                </div>


                                <div class="info-item">

                                    <span>Detective Name</span>

                                    <asp:Label ID="LabelDetectiveName"
                                        runat="server">
                                    </asp:Label>

                                </div>


                                <div class="info-item">

                                    <span>Department</span>

                                    <asp:Label ID="LabelDetectiveDepartment"
                                        runat="server">
                                    </asp:Label>

                                </div>


                                <div class="info-item">

                                    <span>Cases Solved</span>

                                    <asp:Label ID="LabelCasesSolved"
                                        runat="server">
                                    </asp:Label>

                                </div>

                            </div>

                        </asp:Panel>

                    </div>



                    <!-- STEP 4 -->

                    <div class="assign-section">

                        <div class="assign-section-heading">

                            <span class="step-number">04</span>

                            <div>
                                <h3>Assignment Details</h3>
                                <p>Specify investigation instructions and assignment priority</p>
                            </div>

                        </div>


                        <div class="assign-grid">

                            <!-- ASSIGNMENT DATE -->

                            <div class="assign-group">

                                <label>Assignment Date</label>

                                <asp:Label ID="LabelAssignmentDate"
                                    runat="server"
                                    CssClass="assign-readonly">
                                </asp:Label>

                            </div>


                            <!-- ASSIGNMENT PRIORITY -->

                            <div class="assign-group">

                                <label>Assignment Priority</label>

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

                                <label>Investigation Instructions</label>

                                <asp:TextBox
                                    ID="TextBoxInstructions"
                                    runat="server"
                                    TextMode="MultiLine"
                                    CssClass="assign-control assign-textarea"
                                    placeholder="Enter special investigation instructions for the detective...">
                                </asp:TextBox>

                            </div>

                        </div>

                    </div>



                    <!-- ACTION BUTTONS -->

                    <div class="assign-actions">

                        <asp:Button
                            ID="ButtonAssignCase"
                            runat="server"
                            Text="Assign Case"
                            CssClass="assign-btn-primary"
                            />


                        <asp:Button
                            ID="ButtonReset"
                            runat="server"
                            Text="Reset Form"
                            CssClass="assign-btn-secondary"
                            CausesValidation="false"
                           />

                    </div>

                </div>

            </div>

        </div>

    </div>

</asp:Content>