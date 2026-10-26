<%@ Page Title="Register New Case"
    Language="C#"
    MasterPageFile="~/Master_Pages/Case.Master"
    AutoEventWireup="true"
    CodeBehind="AddNew_Case.aspx.cs"
    Inherits="Mystery_Case_Files.Case_Management_Module.AddNew_Case" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@400;500;600;700&family=Poppins:wght@300;400;500;600&display=swap"
          rel="stylesheet" />

    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
          rel="stylesheet" />

    <link href="../CSS/Case-Management/AddNew_Case.css" rel="stylesheet" />

</asp:Content>


<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <div class="case-page">

        <div class="case-container">

            <!-- PAGE HEADER -->

            <div class="case-header">

                <h1>
                    <i class="fa-solid fa-folder-plus"></i>
                    Register New Case
                </h1>

                <p>
                    Create and register a new criminal investigation case
                </p>

                <div class="header-line"></div>

            </div>


            <div class="case-form">

                <asp:Label ID="LabelMessage"
                    runat="server"
                    CssClass="message">
                </asp:Label>


                <!-- =====================================
                     SECTION 1 : CASE INFORMATION
                ====================================== -->

                <div class="form-section">

                    <h2 class="section-title">
                        <i class="fa-solid fa-folder-open"></i>
                        Case Information
                    </h2>

                    <div class="form-grid">

                        <div class="form-group">

                            <label>Case Number</label>

                            <asp:Label ID="Label1"
                                runat="server"
                                CssClass="readonly-box"
                                Text="CASE-101">
                            </asp:Label>

                        </div>


                        <div class="form-group">

                            <label>Registration Date</label>

                            <asp:Label ID="Label2"
                                runat="server"
                                CssClass="readonly-box">
                            </asp:Label>

                        </div>


                        <div class="form-group full-width">

                            <label>
                                Case Name
                                <span class="required">*</span>
                            </label>

                            <asp:TextBox ID="TextBox1"
                                runat="server"
                                CssClass="form-control"
                                MaxLength="150"
                                placeholder="Enter case title">
                            </asp:TextBox>

                        </div>


                        <div class="form-group">

                            <label>
                                Case Category
                                <span class="required">*</span>
                            </label>

                            <asp:DropDownList ID="DropDownListCategory"
                                runat="server"
                                CssClass="form-control">

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


                        <div class="form-group">

                            <label>
                                Difficulty Level
                                <span class="required">*</span>
                            </label>

                            <asp:DropDownList ID="DropDownListDifficulty"
                                runat="server"
                                CssClass="form-control">

                                <asp:ListItem Value="">Select Difficulty</asp:ListItem>
                                <asp:ListItem>Easy</asp:ListItem>
                                <asp:ListItem>Normal</asp:ListItem>
                                <asp:ListItem>Intermediate</asp:ListItem>
                                <asp:ListItem>Hard</asp:ListItem>
                                <asp:ListItem>Critical</asp:ListItem>

                            </asp:DropDownList>

                        </div>


                        <div class="form-group">

                            <label>Case Priority</label>

                            <asp:DropDownList ID="DropDownListPriority"
                                runat="server"
                                CssClass="form-control">

                                <asp:ListItem>Low</asp:ListItem>
                                <asp:ListItem Selected="True">Medium</asp:ListItem>
                                <asp:ListItem>High</asp:ListItem>
                                <asp:ListItem>Urgent</asp:ListItem>

                            </asp:DropDownList>

                        </div>


                        <div class="form-group">

                            <label>Case Status</label>

                            <asp:DropDownList ID="DropDownListStatus"
                                runat="server"
                                CssClass="form-control">

                                <asp:ListItem>Open</asp:ListItem>
                                <asp:ListItem>Under Investigation</asp:ListItem>
                                <asp:ListItem>Closed</asp:ListItem>

                            </asp:DropDownList>

                        </div>


                        <div class="form-group full-width">

                            <label>
                                Case Details
                                <span class="required">*</span>
                            </label>

                            <asp:TextBox ID="TextBox3"
                                runat="server"
                                TextMode="MultiLine"
                                CssClass="form-control"
                                placeholder="Enter complete case description...">
                            </asp:TextBox>

                        </div>

                    </div>

                </div>



                <!-- =====================================
                     SECTION 2 : INCIDENT DETAILS
                ====================================== -->

                <div class="form-section">

                    <h2 class="section-title">
                        <i class="fa-solid fa-location-dot"></i>
                        Incident Details
                    </h2>

                    <div class="form-grid">

                        <div class="form-group">

                            <label>Incident Date</label>

                            <asp:TextBox ID="TextBoxIncidentDate"
                                runat="server"
                                TextMode="Date"
                                CssClass="form-control">
                            </asp:TextBox>

                        </div>


                        <div class="form-group">

                            <label>Incident Time</label>

                            <asp:TextBox ID="TextBoxIncidentTime"
                                runat="server"
                                TextMode="Time"
                                CssClass="form-control">
                            </asp:TextBox>

                        </div>


                        <div class="form-group">

                            <label>Incident Location</label>

                            <asp:TextBox ID="TextBoxLocation"
                                runat="server"
                                CssClass="form-control"
                                placeholder="Enter incident location">
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

                            <label>Crime Scene Description</label>

                            <asp:TextBox ID="TextBoxCrimeScene"
                                runat="server"
                                TextMode="MultiLine"
                                CssClass="form-control"
                                placeholder="Describe the crime scene...">
                            </asp:TextBox>

                        </div>

                    </div>

                </div>



                <!-- =====================================
                     SECTION 3 : PEOPLE INVOLVED
                ====================================== -->

                <div class="form-section">

                    <h2 class="section-title">
                        <i class="fa-solid fa-users"></i>
                        People Involved
                    </h2>

                    <div class="form-grid">

                        <div class="form-group full-width">

                            <label>
                                Victim Details
                                <span class="required">*</span>
                            </label>

                            <asp:TextBox ID="TextBox2"
                                runat="server"
                                TextMode="MultiLine"
                                CssClass="form-control"
                                placeholder="Enter victim names and details...">
                            </asp:TextBox>

                        </div>


                        <div class="form-group full-width">

                            <label>Suspect Details</label>

                            <asp:TextBox ID="TextBox5"
                                runat="server"
                                TextMode="MultiLine"
                                CssClass="form-control"
                                placeholder="Enter possible suspects and their information...">
                            </asp:TextBox>

                        </div>


                        <div class="form-group full-width">

                            <label>Witness Information</label>

                            <asp:TextBox ID="TextBoxWitness"
                                runat="server"
                                TextMode="MultiLine"
                                CssClass="form-control"
                                placeholder="Enter witness names and statements...">
                            </asp:TextBox>

                        </div>

                    </div>

                </div>



                <!-- =====================================
                     SECTION 4 : EVIDENCE
                ====================================== -->

                <div class="form-section">

                    <h2 class="section-title">
                        <i class="fa-solid fa-fingerprint"></i>
                        Evidence & Clues
                    </h2>

                    <div class="form-grid">

                        <div class="form-group full-width">

                            <label>
                                Evidence Details
                                <span class="required">*</span>
                            </label>

                            <asp:TextBox ID="TextBox4"
                                runat="server"
                                TextMode="MultiLine"
                                CssClass="form-control"
                                placeholder="Describe the evidence collected...">
                            </asp:TextBox>

                        </div>


                        <div class="form-group full-width">

                            <label>Investigation Clues</label>

                            <asp:TextBox ID="TextBoxClues"
                                runat="server"
                                TextMode="MultiLine"
                                CssClass="form-control"
                                placeholder="Enter important clues...">
                            </asp:TextBox>

                        </div>


                        <div class="form-group full-width">

                            <label>Case Cover Image</label>

                            <asp:FileUpload ID="FileUploadCase"
                                runat="server"
                                CssClass="file-upload"
                                accept=".jpg,.jpeg,.png,.webp" />

                        </div>

                    </div>

                </div>



                <!-- =====================================
                     SECTION 5 : INVESTIGATION STORY
                ====================================== -->

                <div class="form-section">

                    <h2 class="section-title">
                        <i class="fa-solid fa-book-open"></i>
                        Investigation Story
                    </h2>

                    <div class="form-grid">

                        <div class="form-group full-width">

                            <label>Case Background Story</label>

                            <asp:TextBox ID="TextBoxStory"
                                runat="server"
                                TextMode="MultiLine"
                                CssClass="form-control"
                                placeholder="Write the mysterious background story...">
                            </asp:TextBox>

                        </div>


                        <div class="form-group full-width">

                            <label>Suspicious Circumstances</label>

                            <asp:TextBox ID="TextBoxSuspicious"
                                runat="server"
                                TextMode="MultiLine"
                                CssClass="form-control"
                                placeholder="Describe suspicious activities and circumstances...">
                            </asp:TextBox>

                        </div>


                        <div class="form-group full-width">

                            <label>Investigation Questions</label>

                            <asp:TextBox ID="TextBoxQuestions"
                                runat="server"
                                TextMode="MultiLine"
                                CssClass="form-control"
                                placeholder="Enter questions the detective must solve...">
                            </asp:TextBox>

                        </div>


                        <div class="form-group full-width">

                            <label>Investigation Hint</label>

                            <asp:TextBox ID="TextBoxHint"
                                runat="server"
                                TextMode="MultiLine"
                                CssClass="form-control"
                                placeholder="Enter an optional hint...">
                            </asp:TextBox>

                        </div>

                    </div>

                </div>



                <!-- =====================================
                     SECTION 6 : CASE SOLUTION
                ====================================== -->

                <div class="form-section">

                    <h2 class="section-title">
                        <i class="fa-solid fa-user-secret"></i>
                        Confidential Case Solution
                    </h2>

                    <div class="form-grid">

                        <div class="form-group">

                            <label>
                                Correct Culprit / Answer
                                <span class="required">*</span>
                            </label>

                            <asp:TextBox ID="TextBoxCulprit"
                                runat="server"
                                CssClass="form-control"
                                placeholder="Enter correct culprit name">
                            </asp:TextBox>

                        </div>


                        <div class="form-group">

                            <label>Maximum Case Score</label>

                            <asp:TextBox ID="TextBoxScore"
                                runat="server"
                                TextMode="Number"
                                CssClass="form-control"
                                Text="100">
                            </asp:TextBox>

                        </div>


                        <div class="form-group full-width">

                            <label>
                                Final Case Explanation
                                <span class="required">*</span>
                            </label>

                            <asp:TextBox ID="TextBoxSolution"
                                runat="server"
                                TextMode="MultiLine"
                                CssClass="form-control"
                                placeholder="Explain who committed the crime, how and why...">
                            </asp:TextBox>

                        </div>

                    </div>

                </div>



                <!-- =====================================
                     FORM BUTTONS
                ====================================== -->

                <div class="form-actions">

                    <asp:Button ID="Button1"
                        runat="server"
                        Text="Register Case"
                        CssClass="btn btn-save"
                         />

                    <asp:Button ID="ButtonReset"
                        runat="server"
                        Text="Reset Form"
                        CssClass="btn btn-reset"
                        CausesValidation="false"
                        />

                </div>

            </div>

        </div>

    </div>

</asp:Content>