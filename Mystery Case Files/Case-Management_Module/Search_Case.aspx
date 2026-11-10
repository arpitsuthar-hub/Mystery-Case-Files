<%@ Page Title="Search Cases"
    Language="C#"
    MasterPageFile="~/Master_Pages/Case.Master"
    AutoEventWireup="true"
    CodeBehind="Search_Case.aspx.cs"
    Inherits="Mystery_Case_Files.Case_Management_Module.Search_Case" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="../CSS/Case-Management/Search_Case.css?v=2"
          rel="stylesheet" />

    <link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@500;600;700&family=Poppins:wght@300;400;500;600;700&display=swap"
          rel="stylesheet" />

    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />

</asp:Content>


<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">


    <div class="search-case-page">

        <div class="search-background-overlay"></div>

        <div class="search-case-container">


            <!-- =========================================
                 PAGE HEADER
            ========================================== -->

            <div class="search-page-header">

                <div class="search-header-main">

                    <div class="search-header-icon">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </div>

                    <div class="search-header-content">

                        <span class="search-eyebrow">
                            INVESTIGATION DATABASE
                        </span>

                        <h1>SEARCH CASE RECORDS</h1>

                        <p>
                            Every case leaves a trace. Find the truth hidden in the records.
                        </p>

                    </div>

                </div>


                <div class="search-header-stamp">

                    <i class="fa-solid fa-user-secret"></i>

                    <span>CLASSIFIED</span>

                </div>

            </div>



            <!-- =========================================
                 SEARCH PANEL
            ========================================== -->

            <div class="search-panel">


                <div class="panel-heading">

                    <div class="panel-heading-left">

                        <div class="panel-heading-icon">
                            <i class="fa-solid fa-filter"></i>
                        </div>

                        <div>
                            <h2>CASE SEARCH FILTERS</h2>

                            <p>
                                Specify your search criteria to locate a case.
                            </p>
                        </div>

                    </div>

                    <span class="panel-reference">
                        SEARCH / 001
                    </span>

                </div>



                <!-- SEARCH TYPE -->

                <div class="search-type-section">

                    <label class="field-label">
                        <i class="fa-solid fa-crosshairs"></i>
                        SELECT SEARCH METHOD
                    </label>


                    <div class="search-radio-wrapper">

                        <asp:RadioButtonList
                            ID="RadioButtonListSearch"
                            runat="server"
                            RepeatDirection="Horizontal"
                            RepeatLayout="Flow"
                            CssClass="search-radio-list"
                            AutoPostBack="true">

                            <asp:ListItem Value="ID" Selected="True">
                                Case ID
                            </asp:ListItem>

                            <asp:ListItem Value="Name">
                                Case Name
                            </asp:ListItem>

                            <asp:ListItem Value="Category">
                                Category
                            </asp:ListItem>

                            <asp:ListItem Value="Date">
                                Registration Date
                            </asp:ListItem>

                        </asp:RadioButtonList>

                    </div>

                </div>



                <!-- SEARCH INPUTS -->

                <div class="search-input-container">


                    <!-- SEARCH BY ID -->

                    <asp:Panel ID="PanelSearchID"
                        runat="server"
                        CssClass="search-input-panel">

                        <label class="field-label">
                            ENTER CASE IDENTIFICATION NUMBER
                        </label>

                        <div class="search-input-box">

                            <i class="fa-solid fa-hashtag"></i>

                            <asp:TextBox ID="TextBoxCaseID"
                                runat="server"
                                CssClass="search-control"
                                placeholder="Example: CASE-101">
                            </asp:TextBox>

                        </div>

                    </asp:Panel>



                    <!-- SEARCH BY NAME -->

                    <asp:Panel ID="PanelSearchName"
                        runat="server"
                        CssClass="search-input-panel"
                        Visible="false">

                        <label class="field-label">
                            ENTER CASE NAME
                        </label>

                        <div class="search-input-box">

                            <i class="fa-solid fa-folder-open"></i>

                            <asp:TextBox ID="TextBoxCaseName"
                                runat="server"
                                CssClass="search-control"
                                placeholder="Enter complete or partial case name">
                            </asp:TextBox>

                        </div>

                    </asp:Panel>



                    <!-- SEARCH BY CATEGORY -->

                    <asp:Panel ID="PanelSearchCategory"
                        runat="server"
                        CssClass="search-input-panel"
                        Visible="false">

                        <label class="field-label">
                            SELECT CASE CATEGORY
                        </label>

                        <div class="search-input-box">

                            <i class="fa-solid fa-list"></i>

                            <asp:DropDownList ID="DropDownListCategory"
                                runat="server"
                                CssClass="search-control">

                                <asp:ListItem Value="">Select Category</asp:ListItem>
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

                        </div>

                    </asp:Panel>



                    <!-- SEARCH BY DATE -->

                    <asp:Panel ID="PanelSearchDate"
                        runat="server"
                        CssClass="search-input-panel"
                        Visible="false">

                        <label class="field-label">
                            SELECT REGISTRATION DATE
                        </label>

                        <div class="search-input-box">

                            <i class="fa-regular fa-calendar"></i>

                            <asp:TextBox ID="TextBoxSearchDate"
                                runat="server"
                                TextMode="Date"
                                CssClass="search-control">
                            </asp:TextBox>

                        </div>

                    </asp:Panel>


                </div>



                <!-- SEARCH BUTTONS -->

                <div class="search-buttons">

                    <asp:Button ID="ButtonSearch"
                        runat="server"
                        Text="SEARCH CASES"
                        CssClass="search-btn-primary" />

                    <asp:Button ID="ButtonClear"
                        runat="server"
                        Text="CLEAR SEARCH"
                        CssClass="search-btn-secondary"
                        CausesValidation="false" />

                </div>


                <div class="search-panel-footer">

                    <i class="fa-solid fa-lock"></i>

                    <span>
                        Access to investigation records is restricted.
                    </span>

                </div>


            </div>



            <!-- =========================================
                 SEARCH MESSAGE
            ========================================== -->

            <asp:Label ID="LabelMessage"
                runat="server"
                CssClass="search-message">
            </asp:Label>



            <!-- =========================================
                 CASE DETAILS RESULT
            ========================================== -->

            <asp:Panel ID="PanelCaseDetails"
                runat="server"
                Visible="false"
                CssClass="case-details-panel">


                <div class="result-heading">

                    <div class="result-heading-left">

                        <div class="result-icon">
                            <i class="fa-solid fa-folder-open"></i>
                        </div>

                        <div>

                            <span class="result-eyebrow">
                                INVESTIGATION FILE
                            </span>

                            <h2>CASE INVESTIGATION RECORD</h2>

                            <p>
                                Complete registered case information.
                            </p>

                        </div>

                    </div>


                    <span class="result-badge">
                        <i class="fa-solid fa-shield-halved"></i>
                        CONFIDENTIAL
                    </span>

                </div>



                <div class="details-table-wrapper">

                    <table class="case-details-table">

                        <tr>
                            <th>Case Number</th>
                            <td>
                                <asp:Label ID="LabelCaseID" runat="server" />
                            </td>

                            <th>Registration Date</th>
                            <td>
                                <asp:Label ID="LabelRegisterDate" runat="server" />
                            </td>
                        </tr>


                        <tr>
                            <th>Case Name</th>
                            <td colspan="3">
                                <asp:Label ID="LabelCaseName" runat="server" />
                            </td>
                        </tr>


                        <tr>
                            <th>Category</th>
                            <td>
                                <asp:Label ID="LabelCategory" runat="server" />
                            </td>

                            <th>Difficulty</th>
                            <td>
                                <asp:Label ID="LabelDifficulty" runat="server" />
                            </td>
                        </tr>


                        <tr>
                            <th>Priority</th>
                            <td>
                                <asp:Label ID="LabelPriority" runat="server" />
                            </td>

                            <th>Status</th>
                            <td>
                                <asp:Label ID="LabelStatus" runat="server" />
                            </td>
                        </tr>


                        <tr>
                            <th>Case Details</th>
                            <td colspan="3">
                                <asp:Label ID="LabelCaseDetails" runat="server" />
                            </td>
                        </tr>


                        <tr>
                            <th>Incident Date</th>
                            <td>
                                <asp:Label ID="LabelIncidentDate" runat="server" />
                            </td>

                            <th>Incident Time</th>
                            <td>
                                <asp:Label ID="LabelIncidentTime" runat="server" />
                            </td>
                        </tr>


                        <tr>
                            <th>Incident Location</th>
                            <td>
                                <asp:Label ID="LabelLocation" runat="server" />
                            </td>

                            <th>City</th>
                            <td>
                                <asp:Label ID="LabelCity" runat="server" />
                            </td>
                        </tr>


                        <tr>
                            <th>Crime Scene</th>
                            <td colspan="3">
                                <asp:Label ID="LabelCrimeScene" runat="server" />
                            </td>
                        </tr>


                        <tr>
                            <th>Victim Information</th>
                            <td colspan="3">
                                <asp:Label ID="LabelVictims" runat="server" />
                            </td>
                        </tr>


                        <tr>
                            <th>Suspect Information</th>
                            <td colspan="3">
                                <asp:Label ID="LabelSuspects" runat="server" />
                            </td>
                        </tr>


                        <tr>
                            <th>Witness Information</th>
                            <td colspan="3">
                                <asp:Label ID="LabelWitnesses" runat="server" />
                            </td>
                        </tr>


                        <tr>
                            <th>Evidence</th>
                            <td colspan="3">
                                <asp:Label ID="LabelEvidence" runat="server" />
                            </td>
                        </tr>


                        <tr>
                            <th>Investigation Clues</th>
                            <td colspan="3">
                                <asp:Label ID="LabelClues" runat="server" />
                            </td>
                        </tr>


                        <tr>
                            <th>Case Background Story</th>
                            <td colspan="3">
                                <asp:Label ID="LabelStory" runat="server" />
                            </td>
                        </tr>


                        <tr>
                            <th>Suspicious Circumstances</th>
                            <td colspan="3">
                                <asp:Label ID="LabelSuspicious" runat="server" />
                            </td>
                        </tr>


                        <tr>
                            <th>Investigation Questions</th>
                            <td colspan="3">
                                <asp:Label ID="LabelQuestions" runat="server" />
                            </td>
                        </tr>


                        <tr>
                            <th>Investigation Hint</th>
                            <td colspan="3">
                                <asp:Label ID="LabelHint" runat="server" />
                            </td>
                        </tr>


                        <tr>
                            <th>Correct Culprit</th>
                            <td colspan="3">
                                <asp:Label ID="LabelCulprit" runat="server" />
                            </td>
                        </tr>


                        <tr>
                            <th>Final Case Solution</th>
                            <td colspan="3">
                                <asp:Label ID="LabelSolution" runat="server" />
                            </td>
                        </tr>


                        <tr>
                            <th>Maximum Score</th>
                            <td colspan="3">
                                <asp:Label ID="LabelScore" runat="server" />
                            </td>
                        </tr>

                    </table>

                </div>



                <!-- CASE ACTIONS -->

                <div class="case-details-actions">

                    <asp:Button ID="ButtonEditCase"
                        runat="server"
                        Text="EDIT CASE"
                        CssClass="search-btn-primary" />

                    <asp:Button ID="ButtonDeleteCase"
                        runat="server"
                        Text="DELETE CASE"
                        CssClass="search-btn-danger" />

                </div>


            </asp:Panel>



            <!-- =========================================
                 GRID SEARCH RESULTS
            ========================================== -->

            <asp:Panel ID="PanelGridResults"
                runat="server"
                Visible="false"
                CssClass="grid-results-panel">


                <div class="result-heading">

                    <div class="result-heading-left">

                        <div class="result-icon">
                            <i class="fa-solid fa-list"></i>
                        </div>

                        <div>

                            <span class="result-eyebrow">
                                DATABASE SEARCH
                            </span>

                            <h2>SEARCH RESULTS</h2>

                            <p>
                                Matching investigation case records.
                            </p>

                        </div>

                    </div>


                    <asp:Label ID="LabelResultCount"
                        runat="server"
                        CssClass="result-count">
                    </asp:Label>

                </div>



                <div class="grid-table-wrapper">

                    <asp:GridView ID="GridViewCases"
                        runat="server"
                        AutoGenerateColumns="false"
                        CssClass="case-grid"
                        GridLines="None"
                        DataKeyNames="case_no">

                        <Columns>

                            <asp:BoundField DataField="case_no"
                                HeaderText="Case ID" />

                            <asp:BoundField DataField="case_name"
                                HeaderText="Case Name" />

                            <asp:BoundField DataField="case_category"
                                HeaderText="Category" />

                            <asp:BoundField DataField="case_difficulty"
                                HeaderText="Difficulty" />

                            <asp:BoundField DataField="case_status"
                                HeaderText="Status" />

                            <asp:BoundField DataField="case_registerdate"
                                HeaderText="Registered On"
                                DataFormatString="{0:dd MMM yyyy}"
                                HtmlEncode="false" />


                            <asp:TemplateField HeaderText="Actions">

                                <ItemTemplate>

                                    <div class="grid-actions">

                                        <asp:LinkButton ID="LinkButtonEdit"
                                            runat="server"
                                            CssClass="grid-edit-btn"
                                            CommandName="EditCase"
                                            CommandArgument='<%# Eval("case_no") %>'
                                            CausesValidation="false">

                                            <i class="fa-solid fa-pen"></i>
                                            Edit

                                        </asp:LinkButton>


                                        <asp:LinkButton ID="LinkButtonDelete"
                                            runat="server"
                                            CssClass="grid-delete-btn"
                                            CommandName="DeleteCase"
                                            CommandArgument='<%# Eval("case_no") %>'
                                            CausesValidation="false">

                                            <i class="fa-solid fa-trash"></i>
                                            Delete

                                        </asp:LinkButton>

                                    </div>

                                </ItemTemplate>

                            </asp:TemplateField>

                        </Columns>


                        <EmptyDataTemplate>

                            <div class="empty-results">

                                <i class="fa-solid fa-folder-open"></i>

                                <h3>No Case Records Found</h3>

                                <p>No matching investigation records are available.</p>

                            </div>

                        </EmptyDataTemplate>

                    </asp:GridView>

                </div>


            </asp:Panel>



            <!-- PAGE FOOTER -->

            <div class="search-page-footer">

                <span>
                    <i class="fa-solid fa-fingerprint"></i>
                    MYSTERIOUS CASE FILES
                </span>

                <span>
                    CONFIDENTIAL INVESTIGATION DATABASE
                </span>

            </div>


        </div>

    </div>


</asp:Content>