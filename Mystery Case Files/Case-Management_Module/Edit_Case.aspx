<%@ Page Title="Edit Case"
    Language="C#"
    MasterPageFile="~/Master_Pages/Case.Master"
    AutoEventWireup="true"
    CodeBehind="Edit_Case.aspx.cs"
    Inherits="Mystery_Case_Files.Case_Management_Module.Edit_Case" %>

<asp:Content ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <link href="../CSS/Case-Management/Edit_Case.css"
        rel="stylesheet"
        type="text/css" />

</asp:Content>


<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <div class="edit-case-page">

        <!-- PAGE HEADER -->
        <div class="page-header">

            <div class="header-content">

                <div class="header-icon">
                    <i class="fa-solid fa-file-pen"></i>
                </div>

                <div class="header-text">
                    <span class="page-eyebrow">
                        CASE MANAGEMENT SYSTEM
                    </span>

                    <h1>Edit Case</h1>

                    <p>
                        Review and update the selected investigation record.
                    </p>
                </div>

            </div>

            <asp:HyperLink ID="lnkBack"
                runat="server"
                NavigateUrl="~/Case_Management_Module/Search_Case.aspx"
                CssClass="back-button">

                <i class="fa-solid fa-arrow-left"></i>
                Back to Search

            </asp:HyperLink>

        </div>


        <!-- STATUS MESSAGE -->
        <asp:Panel ID="pnlMessage"
            runat="server"
            CssClass="message-panel"
            Visible="false">

            <i class="fa-solid fa-circle-info"></i>

            <asp:Label ID="lblMessage"
                runat="server"
                Text="">
            </asp:Label>

        </asp:Panel>


        <!-- EDIT FORM -->
        <asp:Panel ID="pnlEditCase"
            runat="server"
            CssClass="edit-card">

            <div class="card-header">

                <div>
                    <span class="section-label">
                        CASE RECORD
                    </span>

                    <h2>Investigation Details</h2>

                    <p>
                        Update the information below and save your changes.
                    </p>
                </div>

                <div class="record-icon">
                    <i class="fa-solid fa-folder-open"></i>
                </div>

            </div>


            <div class="form-grid">

                <!-- CASE NUMBER -->
                <div class="form-group">

                    <label for="<%= txtCaseNo.ClientID %>">
                        Case Number
                    </label>

                    <asp:TextBox ID="txtCaseNo"
                        runat="server"
                        CssClass="form-control readonly-control"
                        ReadOnly="true">
                    </asp:TextBox>

                    <span class="field-hint">
                        Case number cannot be changed.
                    </span>

                </div>


                <!-- REGISTRATION DATE -->
                <div class="form-group">

                    <label for="<%= txtRegisterDate.ClientID %>">
                        Registration Date
                    </label>

                    <asp:TextBox ID="txtRegisterDate"
                        runat="server"
                        CssClass="form-control readonly-control"
                        ReadOnly="true">
                    </asp:TextBox>

                    <span class="field-hint">
                        Original registration date.
                    </span>

                </div>


                <!-- CASE NAME -->
                <div class="form-group full-width">

                    <label for="<%= txtCaseName.ClientID %>">
                        Case Name <span class="required">*</span>
                    </label>

                    <asp:TextBox ID="txtCaseName"
                        runat="server"
                        CssClass="form-control"
                        MaxLength="150"
                        placeholder="Enter case name">
                    </asp:TextBox>

                    <asp:RequiredFieldValidator
                        ID="rfvCaseName"
                        runat="server"
                        ControlToValidate="txtCaseName"
                        ErrorMessage="Case name is required."
                        CssClass="validation-message"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>

                </div>


                <!-- CATEGORY -->
                <div class="form-group">

                    <label for="<%= ddlCategory.ClientID %>">
                        Case Category <span class="required">*</span>
                    </label>

                    <asp:DropDownList ID="ddlCategory"
                        runat="server"
                        CssClass="form-control">

                        <asp:ListItem Text="Select Category"
                            Value="">
                        </asp:ListItem>

                        <asp:ListItem Text="Homicide"
                            Value="Homicide">
                        </asp:ListItem>

                        <asp:ListItem Text="Missing Person"
                            Value="Missing Person">
                        </asp:ListItem>

                        <asp:ListItem Text="Theft"
                            Value="Theft">
                        </asp:ListItem>

                        <asp:ListItem Text="Fraud"
                            Value="Fraud">
                        </asp:ListItem>

                        <asp:ListItem Text="Cyber Crime"
                            Value="Cyber Crime">
                        </asp:ListItem>

                        <asp:ListItem Text="Kidnapping"
                            Value="Kidnapping">
                        </asp:ListItem>

                        <asp:ListItem Text="Other"
                            Value="Other">
                        </asp:ListItem>

                    </asp:DropDownList>

                    <asp:RequiredFieldValidator
                        ID="rfvCategory"
                        runat="server"
                        ControlToValidate="ddlCategory"
                        InitialValue=""
                        ErrorMessage="Please select a case category."
                        CssClass="validation-message"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>

                </div>


                <!-- STATUS -->
                <div class="form-group">

                    <label for="<%= ddlStatus.ClientID %>">
                        Case Status <span class="required">*</span>
                    </label>

                    <asp:DropDownList ID="ddlStatus"
                        runat="server"
                        CssClass="form-control">

                        <asp:ListItem Text="Open"
                            Value="Open">
                        </asp:ListItem>

                        <asp:ListItem Text="Assigned"
                            Value="Assigned">
                        </asp:ListItem>

                        <asp:ListItem Text="Solved"
                            Value="Solved">
                        </asp:ListItem>

                        <asp:ListItem Text="Closed"
                            Value="Closed">
                        </asp:ListItem>

                    </asp:DropDownList>

                </div>


                <!-- VICTIM DETAILS -->
                <div class="form-group full-width">

                    <label for="<%= txtVictimDetails.ClientID %>">
                        Victim Details
                    </label>

                    <asp:TextBox ID="txtVictimDetails"
                        runat="server"
                        CssClass="form-control textarea-control"
                        TextMode="MultiLine"
                        Rows="4"
                        placeholder="Enter victim details">
                    </asp:TextBox>

                </div>


                <!-- CASE DETAILS -->
                <div class="form-group full-width">

                    <label for="<%= txtCaseDetails.ClientID %>">
                        Case Details <span class="required">*</span>
                    </label>

                    <asp:TextBox ID="txtCaseDetails"
                        runat="server"
                        CssClass="form-control textarea-control"
                        TextMode="MultiLine"
                        Rows="6"
                        placeholder="Describe the incident, circumstances, and investigation details">
                    </asp:TextBox>

                    <asp:RequiredFieldValidator
                        ID="rfvCaseDetails"
                        runat="server"
                        ControlToValidate="txtCaseDetails"
                        ErrorMessage="Case details are required."
                        CssClass="validation-message"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>

                </div>


                <!-- EVIDENCE -->
                <div class="form-group full-width">

                    <label for="<%= txtEvidence.ClientID %>">
                        Evidence
                    </label>

                    <asp:TextBox ID="txtEvidence"
                        runat="server"
                        CssClass="form-control textarea-control"
                        TextMode="MultiLine"
                        Rows="4"
                        placeholder="Enter available evidence">
                    </asp:TextBox>

                </div>


                <!-- SUSPECTS -->
                <div class="form-group full-width">

                    <label for="<%= txtSuspects.ClientID %>">
                        Suspect Details
                    </label>

                    <asp:TextBox ID="txtSuspects"
                        runat="server"
                        CssClass="form-control textarea-control"
                        TextMode="MultiLine"
                        Rows="4"
                        placeholder="Enter known suspect details">
                    </asp:TextBox>

                </div>

            </div>


            <!-- FORM FOOTER -->
            <div class="form-footer">

                <div class="footer-note">
                    <i class="fa-solid fa-shield-halved"></i>

                    <span>
                        Verify the details before saving changes.
                    </span>
                </div>

                <div class="form-actions">

                    <asp:HyperLink ID="lnkCancel"
                        runat="server"
                        NavigateUrl="~/Case_Management_Module/Search_Case.aspx"
                        CssClass="cancel-button">

                        Cancel

                    </asp:HyperLink>


                    <asp:Button ID="btnUpdateCase"
                        runat="server"
                        Text="Save Changes"
                        CssClass="save-button"
                       
                        CausesValidation="true" />

                </div>

            </div>

        </asp:Panel>

    </div>

</asp:Content>