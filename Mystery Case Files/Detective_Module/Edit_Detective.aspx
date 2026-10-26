<%@ Page Title="Edit Detective" Language="C#" MasterPageFile="~/Master_Pages/Detective_Module.Master" AutoEventWireup="true" CodeBehind="Edit_Detective.aspx.cs" Inherits="Mystery_Case_Files.Detective_Module.Edit_Detective" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"> <link href="../CSS/Detective_Module/Edit_Detective.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="edit-detective-page">

    <!-- PAGE HEADER -->
    <div class="page-header">

        <div class="header-icon">
            <i class="fa-solid fa-user-pen"></i>
        </div>

        <div class="header-content">
            <span class="page-eyebrow">DETECTIVE MANAGEMENT</span>
            <h1>Edit Detective</h1>
            <p>Update the personal and professional information of a registered detective.</p>
        </div>

    </div>

    <!-- EDIT FORM -->
    <section class="edit-panel">

        <!-- PANEL HEADER -->
        <div class="panel-heading">

            <div class="panel-heading-icon">
                <i class="fa-solid fa-address-card"></i>
            </div>

            <div>
                <h2>Detective Information</h2>
                <p>Modify the required details and save your changes.</p>
            </div>

            <span class="edit-status">
                <i class="fa-solid fa-pen-to-square"></i>
                EDIT MODE
            </span>

        </div>

        <!-- PERSONAL INFORMATION -->
        <div class="section-heading">
            <i class="fa-solid fa-user"></i>
            <span>Personal Information</span>
        </div>

        <div class="form-grid">

            <!-- DETECTIVE ID -->
            <div class="form-group">
                <label class="form-label">Detective ID</label>

                <asp:TextBox ID="TextBox1"
                    runat="server"
                    CssClass="form-control readonly-control"
                    ReadOnly="true"
                    placeholder="Detective ID">
                </asp:TextBox>

                <small class="field-hint">
                    Detective ID cannot be changed.
                </small>
            </div>

            <!-- REGISTRATION DATE -->
            <div class="form-group">
                <label class="form-label">Registration Date</label>

                <asp:TextBox ID="TextBox2"
                    runat="server"
                    CssClass="form-control readonly-control"
                    ReadOnly="true"
                    placeholder="Registration date">
                </asp:TextBox>
            </div>

            <!-- FULL NAME -->
            <div class="form-group">
                <label class="form-label">
                    Full Name <span class="required">*</span>
                </label>

                <asp:TextBox ID="TextBox3"
                    runat="server"
                    CssClass="form-control"
                    MaxLength="100"
                    placeholder="Enter full name">
                </asp:TextBox>
            </div>

            <!-- AGE -->
            <div class="form-group">
                <label class="form-label">
                    Age <span class="required">*</span>
                </label>

                <asp:TextBox ID="TextBox4"
                    runat="server"
                    CssClass="form-control"
                    TextMode="Number"
                    placeholder="Enter age">
                </asp:TextBox>
            </div>

            <!-- GENDER -->
            <div class="form-group full-width">
                <label class="form-label">
                    Gender <span class="required">*</span>
                </label>

                <div class="gender-options">

                    <asp:RadioButton ID="RadioButton1"
                        runat="server"
                        Text="Male"
                        GroupName="DetectiveGender"
                        CssClass="gender-option" />

                    <asp:RadioButton ID="RadioButton2"
                        runat="server"
                        Text="Female"
                        GroupName="DetectiveGender"
                        CssClass="gender-option" />

                    <asp:RadioButton ID="RadioButton3"
                        runat="server"
                        Text="Other"
                        GroupName="DetectiveGender"
                        CssClass="gender-option" />

                </div>
            </div>

        </div>

        <!-- PROFESSIONAL INFORMATION -->
        <div class="section-heading">
            <i class="fa-solid fa-building-shield"></i>
            <span>Professional Information</span>
        </div>

        <div class="form-grid">

            <!-- DEPARTMENT -->
            <div class="form-group">
                <label class="form-label">
                    Department <span class="required">*</span>
                </label>

                <asp:TextBox ID="TextBox5"
                    runat="server"
                    CssClass="form-control"
                    MaxLength="100"
                    placeholder="Enter department">
                </asp:TextBox>
            </div>

            <!-- CONTACT -->
            <div class="form-group">
                <label class="form-label">
                    Contact Number <span class="required">*</span>
                </label>

                <asp:TextBox ID="TextBox6"
                    runat="server"
                    CssClass="form-control"
                    TextMode="Phone"
                    MaxLength="15"
                    placeholder="Enter contact number">
                </asp:TextBox>
            </div>

            <!-- EMAIL -->
            <div class="form-group">
                <label class="form-label">Email Address</label>

                <asp:TextBox ID="TextBox7"
                    runat="server"
                    CssClass="form-control"
                    TextMode="Email"
                    MaxLength="150"
                    placeholder="Enter email address">
                </asp:TextBox>
            </div>

            <!-- ADDRESS -->
            <div class="form-group full-width">
                <label class="form-label">Residential Address</label>

                <asp:TextBox ID="TextBox8"
                    runat="server"
                    CssClass="form-control address-control"
                    TextMode="MultiLine"
                    Rows="3"
                    MaxLength="500"
                    placeholder="Enter complete address">
                </asp:TextBox>
            </div>

        </div>

        <!-- ACCOUNT INFORMATION -->
        <div class="section-heading">
            <i class="fa-solid fa-shield-halved"></i>
            <span>Account Information</span>
        </div>

        <div class="form-grid">

            <!-- LOGIN ID -->
            <div class="form-group">
                <label class="form-label">Detective Login ID</label>

                <asp:TextBox ID="TextBox9"
                    runat="server"
                    CssClass="form-control"
                    MaxLength="100"
                    placeholder="Enter login ID">
                </asp:TextBox>
            </div>

            <!-- PASSWORD -->
            <div class="form-group">
                <label class="form-label">New Password</label>

                <asp:TextBox ID="TextBox10"
                    runat="server"
                    CssClass="form-control"
                    TextMode="Password"
                    MaxLength="100"
                    placeholder="Leave blank to keep current password">
                </asp:TextBox>

                <small class="field-hint">
                    Leave blank if the password does not need to be changed.
                </small>
            </div>

        </div>

        <!-- FORM ACTIONS -->
        <div class="form-actions">

            <asp:Button ID="btnCancel"
                runat="server"
                Text="Back to Search"
                CssClass="btn btn-cancel"
                CausesValidation="false"
                PostBackUrl="~/Detective_Module/Search_Detective.aspx" />

            <asp:Button ID="btnUpdateDetective"
                runat="server"
                Text="Update Detective"
                CssClass="btn btn-update" />

        </div>

        <!-- SECURITY NOTE -->
        <div class="security-note">
            <i class="fa-solid fa-lock"></i>

            <span>
                Only authorized administrators should update detective records.
                Existing passwords must never be displayed.
            </span>
        </div>

    </section>

    <!-- PAGE FOOTER -->
    <div class="page-footer">
        <span>MYSTERIOUS CASE FILES</span>
        <span>DETECTIVE RECORD MANAGEMENT</span>
    </div>

</div>


</asp:Content>
