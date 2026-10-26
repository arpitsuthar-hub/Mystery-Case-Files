<%@ Page Title="Add New Detective"
    Language="C#"
    MasterPageFile="~/Master_Pages/Detective_Module.Master"
    AutoEventWireup="true"
    CodeBehind="AddNew_Detective.aspx.cs"
    Inherits="Mystery_Case_Files.Detective_Module.AddNew_Detective" %>

<asp:Content ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <link href="../CSS/Detective_Module/AddNew_Detective.css"
        rel="stylesheet"
        type="text/css" />

</asp:Content>

<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <div class="detective-page">

        <!-- PAGE HEADER -->
        <div class="page-header">
            <div class="page-header-icon">
                <i class="fa-solid fa-user-plus"></i>
            </div>

            <div class="page-header-content">
                <h1>Add New Detective</h1>
                <p>Register a new detective in the investigation department.</p>
            </div>
        </div>


        <!-- DETECTIVE REGISTRATION FORM -->
        <div class="detective-form-card">

            <div class="form-card-header">
                <div>
                    <h2>Detective Registration</h2>
                    <p>Enter the detective's personal and professional details.</p>
                </div>

                <span class="form-badge">
                    <i class="fa-solid fa-shield-halved"></i>
                    Official Record
                </span>
            </div>


            <!-- PERSONAL DETAILS -->
            <div class="form-section">

                <div class="section-heading">
                    <span class="section-icon">
                        <i class="fa-solid fa-user"></i>
                    </span>

                    <div>
                        <h3>Personal Information</h3>
                        <p>Basic information about the detective.</p>
                    </div>
                </div>


                <div class="form-grid">

                    <!-- Detective ID -->
                    <div class="form-group">
                        <asp:Label
                            ID="Label1"
                            runat="server"
                            AssociatedControlID="TextBox1"
                            CssClass="form-label"
                            Text="Detective ID" />

                        <asp:TextBox
                            ID="TextBox1"
                            runat="server"
                            CssClass="form-control"
                            placeholder="Enter detective ID" />
                    </div>


                    <!-- Registration Date -->
                    <div class="form-group">
                        <asp:Label
                            ID="Label2"
                            runat="server"
                            AssociatedControlID="TextBox2"
                            CssClass="form-label"
                            Text="Registration Date" />

                        <asp:TextBox
                            ID="TextBox2"
                            runat="server"
                            CssClass="form-control"
                            placeholder="DD-MM-YYYY" />
                    </div>


                    <!-- Full Name -->
                    <div class="form-group">
                        <asp:Label
                            ID="Label3"
                            runat="server"
                            AssociatedControlID="TextBox3"
                            CssClass="form-label"
                            Text="Full Name" />

                        <asp:TextBox
                            ID="TextBox3"
                            runat="server"
                            CssClass="form-control"
                            placeholder="Enter full name" />
                    </div>


                    <!-- Age -->
                    <div class="form-group">
                        <asp:Label
                            ID="Label4"
                            runat="server"
                            AssociatedControlID="TextBox4"
                            CssClass="form-label"
                            Text="Age" />

                        <asp:TextBox
                            ID="TextBox4"
                            runat="server"
                            CssClass="form-control"
                            placeholder="Enter age" />
                    </div>


                    <!-- Gender -->
                    <div class="form-group full-width">
                        <span class="form-label">Gender</span>

                        <div class="gender-options">

                            <asp:RadioButton
                                ID="RadioButton1"
                                runat="server"
                                Text="Male"
                                GroupName="DetectiveGender"
                                CssClass="gender-option" />

                            <asp:RadioButton
                                ID="RadioButton2"
                                runat="server"
                                Text="Female"
                                GroupName="DetectiveGender"
                                CssClass="gender-option" />

                            <asp:RadioButton
                                ID="RadioButton3"
                                runat="server"
                                Text="Other"
                                GroupName="DetectiveGender"
                                CssClass="gender-option" />

                        </div>
                    </div>

                </div>

            </div>


            <!-- PROFESSIONAL DETAILS -->
            <div class="form-section">

                <div class="section-heading">
                    <span class="section-icon">
                        <i class="fa-solid fa-building-shield"></i>
                    </span>

                    <div>
                        <h3>Professional Information</h3>
                        <p>Department and official contact information.</p>
                    </div>
                </div>


                <div class="form-grid">

                    <!-- Department -->
                    <div class="form-group">
                        <asp:Label
                            ID="Label5"
                            runat="server"
                            AssociatedControlID="TextBox5"
                            CssClass="form-label"
                            Text="Department" />

                        <asp:TextBox
                            ID="TextBox5"
                            runat="server"
                            CssClass="form-control"
                            placeholder="Enter department" />
                    </div>


                    <!-- Contact -->
                    <div class="form-group">
                        <asp:Label
                            ID="Label6"
                            runat="server"
                            AssociatedControlID="TextBox6"
                            CssClass="form-label"
                            Text="Contact Number" />

                        <asp:TextBox
                            ID="TextBox6"
                            runat="server"
                            CssClass="form-control"
                            placeholder="Enter contact number" />
                    </div>


                    <!-- Email -->
                    <div class="form-group full-width">
                        <asp:Label
                            ID="Label7"
                            runat="server"
                            AssociatedControlID="TextBox7"
                            CssClass="form-label"
                            Text="Email Address" />

                        <asp:TextBox
                            ID="TextBox7"
                            runat="server"
                            CssClass="form-control"
                            placeholder="Enter email address" />
                    </div>


                    <!-- Address -->
                    <div class="form-group full-width">
                        <asp:Label
                            ID="Label8"
                            runat="server"
                            AssociatedControlID="TextBox8"
                            CssClass="form-label"
                            Text="Residential Address" />

                        <asp:TextBox
                            ID="TextBox8"
                            runat="server"
                            CssClass="form-control address-control"
                            TextMode="MultiLine"
                            Rows="4"
                            placeholder="Enter complete address" />
                    </div>

                </div>

            </div>


            <!-- LOGIN DETAILS -->
            <div class="form-section">

                <div class="section-heading">
                    <span class="section-icon">
                        <i class="fa-solid fa-lock"></i>
                    </span>

                    <div>
                        <h3>Login Information</h3>
                        <p>Account credentials for detective access.</p>
                    </div>
                </div>


                <div class="form-grid">

                    <!-- Login ID -->
                    <div class="form-group">
                        <asp:Label
                            ID="Label9"
                            runat="server"
                            AssociatedControlID="TextBox9"
                            CssClass="form-label"
                            Text="Login ID" />

                        <asp:TextBox
                            ID="TextBox9"
                            runat="server"
                            CssClass="form-control"
                            placeholder="Create login ID" />
                    </div>


                    <!-- Password -->
                    <div class="form-group">
                        <asp:Label
                            ID="Label10"
                            runat="server"
                            AssociatedControlID="TextBox10"
                            CssClass="form-label"
                            Text="Password" />

                        <asp:TextBox
                            ID="TextBox10"
                            runat="server"
                            CssClass="form-control"
                            TextMode="Password"
                            placeholder="Create password" />
                    </div>

                </div>

            </div>


            <!-- FORM BUTTONS -->
            <div class="form-actions">

                <asp:Button
                    ID="btnReset"
                    runat="server"
                    Text="Clear Form"
                    CssClass="btn-reset"
                    CausesValidation="false" />

                <asp:Button
                    ID="btnAddDetective"
                    runat="server"
                    Text="Register Detective"
                    CssClass="btn-submit" />

            </div>

        </div>


        <!-- FOOTER NOTE -->
        <div class="security-note">
            <i class="fa-solid fa-shield-halved"></i>

            <span>
                Detective records are confidential and intended for authorized personnel only.
            </span>
        </div>

    </div>

</asp:Content>
