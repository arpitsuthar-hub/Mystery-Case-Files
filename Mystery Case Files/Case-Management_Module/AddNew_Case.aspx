<%@ Page Title="Register New Case"
    Language="C#"
    MasterPageFile="~/Master_Pages/Case.Master"
    AutoEventWireup="true"
    CodeBehind="AddNew_Case.aspx.cs"
    Inherits="Mystery_Case_Files.Case_Management_Module.AddNew_Case" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="../CSS/Case-Management/AddNew_Case.css?v=1"
        rel="stylesheet" />

    <link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@500;600;700&family=Poppins:wght@300;400;500;600;700&display=swap"
        rel="stylesheet" />

    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="case-page">

        <div class="case-page-overlay"></div>

        <div class="case-container">

            <!-- PAGE HEADING -->

            <div class="case-page-header">

                <div class="case-heading-icon">
                    <i class="fa-solid fa-folder-plus"></i>
                </div>

                <div class="case-heading-content">

                    <span class="case-eyebrow">
                        CASE INVESTIGATION DEPARTMENT
                    </span>

                    <h1>REGISTER NEW CASE</h1>

                    <p>
                        Every investigation begins with a single piece of evidence.
                    </p>

                </div>

                <div class="case-header-stamp">
                    <i class="fa-solid fa-user-secret"></i>
                    <span>CLASSIFIED</span>
                </div>

            </div>


            <!-- CASE FORM -->

            <div class="case-form-wrapper">

                <div class="case-form-top">

                    <div>
                        <span class="form-reference">NEW INVESTIGATION</span>
                        <h2>Case Registration File</h2>
                    </div>

                    <div class="form-top-icon">
                        <i class="fa-solid fa-file-shield"></i>
                    </div>

                </div>


                <div class="case-form-body" id="caseEntryForm">


                    <!-- MESSAGE -->

                    <asp:Label ID="LabelMessage"
                        runat="server"
                        CssClass="case-message"
                        EnableViewState="false">
                    </asp:Label>



                    <!-- SECTION 01: BASIC DETAILS -->

                    <div class="form-section">

                        <div class="section-heading">

                            <div class="section-number">01</div>

                            <div>
                                <h3>Case Identification</h3>
                                <p>Basic information about the investigation.</p>
                            </div>

                        </div>


                        <div class="form-grid">

                            <div class="form-group">

                                <label>Case Number</label>

                                <div class="readonly-field">
                                    <i class="fa-solid fa-hashtag"></i>

                                    <asp:Label ID="Label1"
                                        runat="server"
                                        Text="Generated Automatically">
                                    </asp:Label>
                                </div>

                            </div>


                            <div class="form-group">

                                <label>Registration Date</label>

                                <div class="readonly-field">
                                    <i class="fa-regular fa-calendar"></i>

                                    <asp:Label ID="Label2"
                                        runat="server">
                                    </asp:Label>
                                </div>

                            </div>


                            <div class="form-group full-width">

                                <label>
                                    Case Name <span class="required">*</span>
                                </label>

                                <asp:TextBox ID="TextBox1"
                                    runat="server"
                                    CssClass="form-control"
                                    placeholder="Enter investigation / case title">
                                </asp:TextBox>

                            </div>


                            <div class="form-group">

                                <label>Case Category</label>

                                <asp:DropDownList ID="DropDownListCategory"
                                    runat="server"
                                    CssClass="form-control">

                                    <asp:ListItem Text="Select Category" Value="" />
                                    <asp:ListItem Text="Murder" Value="Murder" />
                                    <asp:ListItem Text="Kidnapping" Value="Kidnapping" />
                                    <asp:ListItem Text="Cyber Crime" Value="Cyber Crime" />
                                    <asp:ListItem Text="Theft / Robbery" Value="Theft / Robbery" />
                                    <asp:ListItem Text="Fraud" Value="Fraud" />
                                    <asp:ListItem Text="Missing Person" Value="Missing Person" />
                                    <asp:ListItem Text="Assault" Value="Assault" />
                                    <asp:ListItem Text="Other" Value="Other" />

                                </asp:DropDownList>

                            </div>


                            <div class="form-group">

                                <label>Investigation Difficulty</label>

                                <asp:DropDownList ID="DropDownListDifficulty"
                                    runat="server"
                                    CssClass="form-control">

                                    <asp:ListItem Text="Select Difficulty" Value="" />
                                    <asp:ListItem Text="Low" Value="Low" />
                                    <asp:ListItem Text="Medium" Value="Medium" />
                                    <asp:ListItem Text="High" Value="High" />
                                    <asp:ListItem Text="Critical" Value="Critical" />

                                </asp:DropDownList>

                            </div>


                            <div class="form-group">

                                <label>Case Priority</label>

                                <asp:DropDownList ID="DropDownListPriority"
                                    runat="server"
                                    CssClass="form-control">

                                    <asp:ListItem Text="Select Priority" Value="" />
                                    <asp:ListItem Text="Low" Value="Low" />
                                    <asp:ListItem Text="Normal" Value="Normal" />
                                    <asp:ListItem Text="High" Value="High" />
                                    <asp:ListItem Text="Urgent" Value="Urgent" />

                                </asp:DropDownList>

                            </div>


                            <div class="form-group">

                                <label>Case Status</label>

                                <asp:DropDownList ID="DropDownListStatus"
                                    runat="server"
                                    CssClass="form-control">

                                    <asp:ListItem Text="Open" Value="Open" />
                                    <asp:ListItem Text="Under Investigation" Value="Under Investigation" />
                                    <asp:ListItem Text="Solved" Value="Solved" />
                                    <asp:ListItem Text="Closed" Value="Closed" />

                                </asp:DropDownList>

                            </div>


                            <div class="form-group full-width">

                                <label>Case Description</label>

                                <asp:TextBox ID="TextBox3"
                                    runat="server"
                                    CssClass="form-control textarea-control"
                                    TextMode="MultiLine"
                                    Rows="4"
                                    placeholder="Describe the case and circumstances...">
                                </asp:TextBox>

                            </div>

                        </div>

                    </div>



                    <!-- SECTION 02: INCIDENT DETAILS -->

                    <div class="form-section">

                        <div class="section-heading">

                            <div class="section-number">02</div>

                            <div>
                                <h3>Incident Information</h3>
                                <p>Record the location, date and time of the incident.</p>
                            </div>

                        </div>


                        <div class="form-grid">

                            <div class="form-group">

                                <label>Incident Date</label>

                                <asp:TextBox ID="TextBoxIncidentDate"
                                    runat="server"
                                    CssClass="form-control"
                                    TextMode="Date">
                                </asp:TextBox>

                            </div>


                            <div class="form-group">

                                <label>Incident Time</label>

                                <asp:TextBox ID="TextBoxIncidentTime"
                                    runat="server"
                                    CssClass="form-control"
                                    TextMode="Time">
                                </asp:TextBox>

                            </div>


                            <div class="form-group">

                                <label>Incident Location</label>

                                <asp:TextBox ID="TextBoxLocation"
                                    runat="server"
                                    CssClass="form-control"
                                    placeholder="Enter exact location">
                                </asp:TextBox>

                            </div>


                            <div class="form-group">

                                <label>City</label>

                                <asp:TextBox ID="TextBoxCity"
                                    runat="server"
                                    CssClass="form-control"
                                    placeholder="Enter city">
                                </asp:TextBox>

                            </div>


                            <div class="form-group full-width">

                                <label>Crime Scene Details</label>

                                <asp:TextBox ID="TextBoxCrimeScene"
                                    runat="server"
                                    CssClass="form-control textarea-control"
                                    TextMode="MultiLine"
                                    Rows="3"
                                    placeholder="Describe the crime scene...">
                                </asp:TextBox>

                            </div>

                        </div>

                    </div>



                    <!-- SECTION 03: PEOPLE INVOLVED -->

                    <div class="form-section">

                        <div class="section-heading">

                            <div class="section-number">03</div>

                            <div>
                                <h3>People Involved</h3>
                                <p>Information about the victim, suspects and witnesses.</p>
                            </div>

                        </div>


                        <div class="form-grid">

                            <div class="form-group">

                                <label>Victim Information</label>

                                <asp:TextBox ID="TextBox2"
                                    runat="server"
                                    CssClass="form-control"
                                    placeholder="Enter victim details">
                                </asp:TextBox>

                            </div>


                            <div class="form-group">

                                <label>Suspect Information</label>

                                <asp:TextBox ID="TextBox5"
                                    runat="server"
                                    CssClass="form-control"
                                    placeholder="Enter suspect details">
                                </asp:TextBox>

                            </div>


                            <div class="form-group full-width">

                                <label>Witness Information</label>

                                <asp:TextBox ID="TextBoxWitness"
                                    runat="server"
                                    CssClass="form-control textarea-control"
                                    TextMode="MultiLine"
                                    Rows="3"
                                    placeholder="Enter witness names and statements...">
                                </asp:TextBox>

                            </div>

                        </div>

                    </div>



                    <!-- SECTION 04: EVIDENCE -->

                    <div class="form-section">

                        <div class="section-heading">

                            <div class="section-number">04</div>

                            <div>
                                <h3>Evidence & Investigation</h3>
                                <p>Document the collected evidence and important clues.</p>
                            </div>

                        </div>


                        <div class="form-grid">

                            <div class="form-group full-width">

                                <label>Evidence Collected</label>

                                <asp:TextBox ID="TextBox4"
                                    runat="server"
                                    CssClass="form-control textarea-control"
                                    TextMode="MultiLine"
                                    Rows="3"
                                    placeholder="Describe collected evidence...">
                                </asp:TextBox>

                            </div>


                            <div class="form-group full-width">

                                <label>Important Clues</label>

                                <asp:TextBox ID="TextBoxClues"
                                    runat="server"
                                    CssClass="form-control textarea-control"
                                    TextMode="MultiLine"
                                    Rows="3"
                                    placeholder="Record important clues discovered during investigation...">
                                </asp:TextBox>

                            </div>


                            <div class="form-group full-width">

                                <label>Upload Case Evidence</label>

                                <div class="upload-box">

                                    <i class="fa-solid fa-cloud-arrow-up"></i>

                                    <div class="upload-text">
                                        <strong>Upload Investigation File</strong>
                                        <span>Choose an image, document or evidence file.</span>
                                    </div>

                                    <asp:FileUpload ID="FileUploadCase"
                                        runat="server"
                                        CssClass="form-control file-control" />

                                </div>

                            </div>

                        </div>

                    </div>



                    <!-- SECTION 05: INVESTIGATION NOTES -->

                    <div class="form-section">

                        <div class="section-heading">

                            <div class="section-number">05</div>

                            <div>
                                <h3>Investigation Notes</h3>
                                <p>Record theories, suspicious observations and questions.</p>
                            </div>

                        </div>


                        <div class="form-grid">

                            <div class="form-group full-width">

                                <label>Case Story / Investigation Summary</label>

                                <asp:TextBox ID="TextBoxStory"
                                    runat="server"
                                    CssClass="form-control textarea-control"
                                    TextMode="MultiLine"
                                    Rows="4"
                                    placeholder="Write the complete investigation story...">
                                </asp:TextBox>

                            </div>


                            <div class="form-group full-width">

                                <label>Suspicious Activities</label>

                                <asp:TextBox ID="TextBoxSuspicious"
                                    runat="server"
                                    CssClass="form-control textarea-control"
                                    TextMode="MultiLine"
                                    Rows="3"
                                    placeholder="Describe suspicious activities or behaviour...">
                                </asp:TextBox>

                            </div>


                            <div class="form-group">

                                <label>Investigation Questions</label>

                                <asp:TextBox ID="TextBoxQuestions"
                                    runat="server"
                                    CssClass="form-control textarea-control"
                                    TextMode="MultiLine"
                                    Rows="3"
                                    placeholder="Questions that remain unanswered...">
                                </asp:TextBox>

                            </div>


                            <div class="form-group">

                                <label>Important Hints</label>

                                <asp:TextBox ID="TextBoxHint"
                                    runat="server"
                                    CssClass="form-control textarea-control"
                                    TextMode="MultiLine"
                                    Rows="3"
                                    placeholder="Enter important hints...">
                                </asp:TextBox>

                            </div>

                        </div>

                    </div>



                    <!-- SECTION 06: CASE CONCLUSION -->

                    <div class="form-section conclusion-section">

                        <div class="section-heading">

                            <div class="section-number">06</div>

                            <div>
                                <h3>Case Conclusion</h3>
                                <p>Final investigation details and resolution.</p>
                            </div>

                        </div>


                        <div class="form-grid">

                            <div class="form-group">

                                <label>Identified Culprit</label>

                                <asp:TextBox ID="TextBoxCulprit"
                                    runat="server"
                                    CssClass="form-control"
                                    placeholder="Enter culprit name">
                                </asp:TextBox>

                            </div>


                            <div class="form-group">

                                <label>Investigation Score</label>

                                <asp:TextBox ID="TextBoxScore"
                                    runat="server"
                                    CssClass="form-control"
                                    placeholder="Enter score">
                                </asp:TextBox>

                            </div>


                            <div class="form-group full-width">

                                <label>Final Case Solution</label>

                                <asp:TextBox ID="TextBoxSolution"
                                    runat="server"
                                    CssClass="form-control textarea-control"
                                    TextMode="MultiLine"
                                    Rows="4"
                                    placeholder="Explain how the case was solved...">
                                </asp:TextBox>

                            </div>

                        </div>

                    </div>



                    <!-- FORM ACTIONS -->

                    <div class="form-actions">

                        <div class="form-security-note">
                            <i class="fa-solid fa-lock"></i>

                            <span>
                                Investigation records are confidential.
                            </span>
                        </div>


                        <div class="form-buttons">

                            <asp:Button ID="ButtonReset"
                                runat="server"
                                Text="RESET FORM"
                                CssClass="btn-reset"
                                CausesValidation="false"
                                OnClientClick="document.getElementById('caseEntryForm').querySelectorAll('input, textarea, select').forEach(function(el){ if(el.type !== 'file') { el.value = el.defaultValue; } else { el.value = ''; } }); return false;" />


                            <asp:Button ID="Button1"
                                runat="server"
                                Text="REGISTER CASE"
                                CssClass="btn-register" />

                        </div>

                    </div>


                </div>

            </div>


            <!-- BOTTOM SIGNATURE -->

            <div class="case-page-footer">

                <span>
                    <i class="fa-solid fa-fingerprint"></i>
                    MYSTERIOUS CASE FILES
                </span>

                <span>CONFIDENTIAL INVESTIGATION RECORD</span>

            </div>

        </div>

    </div>

</asp:Content>