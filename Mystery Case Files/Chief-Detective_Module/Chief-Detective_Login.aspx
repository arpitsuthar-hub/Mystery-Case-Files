<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Chief-Detective_Login.aspx.cs" Inherits="Mystery_Case_Files.Chief_Detective_Module.Chief_Detective_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />

<meta name="viewport"
    content="width=device-width, initial-scale=1.0" />

<title>Admin Login | Mysterious Case Files</title>

<!-- =========================================================
     GOOGLE FONTS
     ========================================================= -->

<link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@400;500;600;700&family=Playfair+Display:wght@400;500;600&display=swap"
    rel="stylesheet" />

<!-- =========================================================
     FONT AWESOME
     ========================================================= -->

<link rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />


<style type="text/css">

    /* =========================================================
       RESET
       ========================================================= */

    * {
        box-sizing: border-box;
    }

    html,
    body {
        width: 100%;
        height: 100%;
        margin: 0;
        padding: 0;
    }

    body {
        overflow: hidden;
        background: #050505;
        color: #eeeeee;
        font-family: "Playfair Display", Georgia, serif;
    }


    /* =========================================================
       MAIN PAGE
       ========================================================= */

    .login-page {

        position: relative;

        width: 100vw;
        height: 100vh;

        overflow: hidden;

        background-image:
            url("../Images/Admin_Login/Admin_Login10.jpg");

        background-repeat: no-repeat;

        /*
            IMPORTANT:

            100% 100% forces the COMPLETE image
            to fit inside the complete browser window.

            This keeps:
            - Complete lamp
            - Complete detective
            - Complete bottom area
            visible.
        */

        background-size: 100% 100%;

        background-position: center center;
    }


    /* =========================================================
       DARK OVERLAY
       ========================================================= */

    .login-page::after {

        content: "";

        position: absolute;

        inset: 0;

        background:
            linear-gradient(
                90deg,
                rgba(0,0,0,0.18) 0%,
                rgba(0,0,0,0.03) 50%,
                rgba(0,0,0,0.08) 100%
            );

        pointer-events: none;

        z-index: 1;
    }


    /* =========================================================
       RETURN TO MAIN CASE FILES
       
       TOP RIGHT
       ========================================================= */

    .back-link {

        position: absolute;

        top: 28px;

        right: 32px;

        z-index: 20;

        display: flex;

        align-items: center;

        justify-content: center;

        gap: 9px;

        color: #eeeeee;

        font-family: "Playfair Display", Georgia, serif;

        font-size: 11px;

        font-weight: 500;

        text-decoration: none;

        white-space: nowrap;

        text-shadow:
            0 2px 6px #000;

        transition:
            opacity 0.25s ease,
            transform 0.25s ease;
    }


    .back-link:hover {

        opacity: 0.70;

        transform: translateX(-3px);
    }


    .back-link i {

        font-size: 12px;
    }


    /* =========================================================
       ALL MAIN CONTENT
       ========================================================= */

    .page-content {

        position: relative;

        z-index: 5;

        width: 500px;

        margin-left: 7.5vw;

        padding-top: 5.5vh;
    }


    /* =========================================================
       BRAND
       ========================================================= */

    .brand-name {

        margin: 0;

        text-align: center;

        font-family: "Cinzel", Georgia, serif;

        font-size: clamp(32px, 3vw, 48px);

        font-weight: 500;

        letter-spacing: 4px;

        line-height: 1.1;

        color: #eeeeee;

        text-transform: uppercase;

        white-space: nowrap;

        text-shadow:
            0 2px 8px rgba(0,0,0,0.95),
            0 0 15px rgba(0,0,0,0.65);
    }


    /* =========================================================
       TITLE DIVIDER
       ========================================================= */

    .title-divider {

        display: flex;

        align-items: center;

        justify-content: center;

        width: 100%;

        margin: 13px auto 9px;

        gap: 15px;
    }


    .title-line {

        width: 135px;

        height: 1px;

        background:
            linear-gradient(
                90deg,
                transparent,
                rgba(238,238,238,0.85)
            );
    }


    .title-line.right {

        background:
            linear-gradient(
                90deg,
                rgba(238,238,238,0.85),
                transparent
            );
    }


    /* =========================================================
       MAGNIFYING GLASS
       ========================================================= */

    .magnifier {

        position: relative;

        width: 29px;

        height: 29px;

        border: 2px solid #eeeeee;

        border-radius: 50%;

        flex-shrink: 0;

        filter:
            drop-shadow(
                0 2px 5px rgba(0,0,0,0.9)
            );
    }


    .magnifier::after {

        content: "";

        position: absolute;

        width: 14px;

        height: 2px;

        background: #eeeeee;

        right: -10px;

        bottom: -6px;

        transform: rotate(48deg);

        transform-origin: left center;
    }


    /* =========================================================
       RESTRICTED ACCESS
       ========================================================= */

    .restricted-access {

        text-align: center;

        font-family: "Cinzel", Georgia, serif;

        font-size: 13px;

        font-weight: 500;

        letter-spacing: 4px;

        color: #eeeeee;

        text-transform: uppercase;

        text-shadow:
            0 2px 7px rgba(0,0,0,0.95);
    }


    /* =========================================================
       ADMIN ICON
       ========================================================= */

    .admin-icon {

        width: 55px;

        height: 55px;

        margin: 22px auto 12px;

        display: flex;

        align-items: center;

        justify-content: center;

        border: 1px solid rgba(238,238,238,0.85);

        border-radius: 50%;

        color: #eeeeee;

        font-size: 22px;

        text-shadow:
            0 2px 7px #000;

        background: transparent;

        box-shadow:
            0 2px 10px rgba(0,0,0,0.55);
    }


    /* =========================================================
       ADMINISTRATOR ACCESS
       ========================================================= */

    .access-label {

        margin: 0 0 4px;

        text-align: center;

        font-family: "Cinzel", Georgia, serif;

        font-size: 9px;

        font-weight: 500;

        letter-spacing: 3.5px;

        color: #eeeeee;

        text-transform: uppercase;

        text-shadow:
            0 2px 7px rgba(0,0,0,1);
    }


    /* =========================================================
       CASE FILE CONTROL
       ========================================================= */

    .login-title {

        margin: 0;

        text-align: center;

        font-family: "Playfair Display", Georgia, serif;

        font-size: 25px;

        font-weight: 500;

        letter-spacing: 1.5px;

        color: #eeeeee;

        text-transform: uppercase;

        text-shadow:
            0 2px 8px rgba(0,0,0,1);
    }


    /* =========================================================
       DESCRIPTION
       ========================================================= */

    .login-description {

        width: 370px;

        margin: 5px auto 18px;

        text-align: center;

        font-family: "Playfair Display", Georgia, serif;

        font-size: 11px;

        font-weight: 400;

        line-height: 1.4;

        color: #d7d7d7;

        text-shadow:
            0 2px 6px rgba(0,0,0,1);
    }


    /* =========================================================
       FINGERPRINT DIVIDER
       ========================================================= */

    .fingerprint-divider {

        display: flex;

        align-items: center;

        justify-content: center;

        gap: 15px;

        margin: 0 auto 14px;

        width: 370px;
    }


    .fingerprint-line {

        flex: 1;

        height: 1px;

        background:
            linear-gradient(
                90deg,
                transparent,
                rgba(238,238,238,0.65)
            );
    }


    .fingerprint-line.right {

        background:
            linear-gradient(
                90deg,
                rgba(238,238,238,0.65),
                transparent
            );
    }


    .fingerprint-divider i {

        color: #eeeeee;

        font-size: 19px;

        text-shadow:
            0 2px 6px #000;
    }


    /* =========================================================
       FORM
       ========================================================= */

    .login-form {

        width: 370px;

        margin: 0 auto;
    }


    /* =========================================================
       FORM GROUP
       ========================================================= */

    .form-group {

        margin-bottom: 13px;
    }


    /* =========================================================
       LABEL
       ========================================================= */

    .form-label {

        display: block;

        margin-bottom: 5px;

        font-family: "Cinzel", Georgia, serif;

        font-size: 9px;

        font-weight: 500;

        letter-spacing: 1.8px;

        color: #eeeeee;

        text-transform: uppercase;

        text-shadow:
            0 2px 6px #000;
    }


    /* =========================================================
       INPUT WRAPPER
       ========================================================= */

    .input-wrapper {

        position: relative;

        width: 100%;
    }


    /* =========================================================
       INPUT ICON
       ========================================================= */

    .input-icon {

        position: absolute;

        left: 7px;

        top: 50%;

        transform: translateY(-50%);

        color: #eeeeee;

        font-size: 17px;

        z-index: 2;

        text-shadow:
            0 2px 5px #000;
    }


    /* =========================================================
       INPUT
       ========================================================= */

    .login-input {

        width: 100%;

        height: 34px;

        padding:
            0 10px 0 40px;

        border: none;

        border-bottom:
            1px solid
            rgba(238,238,238,0.70);

        outline: none;

        background: transparent;

        color: #ffffff;

        font-family: "Playfair Display", Georgia, serif;

        font-size: 11px;

        letter-spacing: 0.4px;

        text-shadow:
            0 2px 5px #000;

        transition:
            border-color 0.25s ease,
            box-shadow 0.25s ease;
    }


    .login-input::placeholder {

        color: rgba(210,210,210,0.55);

        font-family: "Playfair Display", Georgia, serif;

        font-size: 10px;
    }


    .login-input:focus {

        border-bottom-color: #ffffff;

        box-shadow:
            0 4px 10px rgba(0,0,0,0.25);
    }


    /* =========================================================
       ENTER CONTROL PANEL BUTTON
       ========================================================= */

    .login-button {

        position: relative;

        width: 370px;

        height: 41px;

        margin-top: 2px;

        border: none;

        border-top:
            1px solid
            rgba(238,238,238,0.70);

        border-bottom:
            1px solid
            rgba(238,238,238,0.70);

        background: transparent;

        color: #eeeeee;

        font-family: "Cinzel", Georgia, serif;

        font-size: 10px;

        font-weight: 500;

        letter-spacing: 2.2px;

        cursor: pointer;

        text-shadow:
            0 2px 7px #000;

        transition:
            background 0.3s ease,
            letter-spacing 0.3s ease;
    }


    .login-button::after {

        content: "›";

        position: absolute;

        right: 15px;

        top: 50%;

        transform:
            translateY(-54%);

        font-family: Arial, sans-serif;

        font-size: 23px;

        font-weight: 300;
    }


    .login-button:hover {

        background:
            rgba(255,255,255,0.08);

        letter-spacing: 2.7px;
    }


    /* =========================================================
       SECURITY NOTE

       IMPORTANT:
       Kept compact so it remains visible.
       ========================================================= */

    .security-note {

        display: flex;

        align-items: center;

        justify-content: center;

        gap: 11px;

        margin-top: 15px;

        font-family: "Cinzel", Georgia, serif;

        font-size: 7px;

        font-weight: 500;

        letter-spacing: 1.6px;

        line-height: 1.5;

        color: #eeeeee;

        text-align: left;

        text-transform: uppercase;

        text-shadow:
            0 2px 6px #000;
    }


    .security-note i {

        font-size: 15px;
    }


    /* =========================================================
       BOTTOM CLASSIFIED TEXT
       ========================================================= */

    .bottom-line {

        position: absolute;

        left: 7.5vw;

        bottom: 3.8vh;

        z-index: 5;

        font-family: "Cinzel", Georgia, serif;

        font-size: 6px;

        font-weight: 500;

        letter-spacing: 2.5px;

        color: rgba(238,238,238,0.72);

        text-transform: uppercase;

        text-shadow:
            0 2px 6px #000;
    }


    /* =========================================================
       LARGE SCREEN
       ========================================================= */

    @media (min-width: 1400px) {

        .page-content {

            width: 520px;

            margin-left: 8vw;

            padding-top: 6vh;
        }

        .brand-name {

            font-size: 50px;
        }

        .restricted-access {

            font-size: 14px;
        }

        .login-title {

            font-size: 27px;
        }

        .login-description {

            font-size: 12px;
        }
    }


    /* =========================================================
       MEDIUM SCREEN
       ========================================================= */

    @media (max-width: 1100px) {

        .page-content {

            width: 450px;

            margin-left: 4vw;

            padding-top: 5vh;
        }

        .brand-name {

            font-size: 35px;

            letter-spacing: 3px;
        }

        .title-line {

            width: 110px;
        }

        .restricted-access {

            font-size: 11px;

            letter-spacing: 3px;
        }

        .login-form,
        .fingerprint-divider {

            width: 340px;
        }

        .login-button {

            width: 340px;
        }

        .login-description {

            width: 340px;
        }

        .back-link {

            top: 20px;

            right: 20px;

            font-size: 10px;
        }
    }


    /* =========================================================
       SMALL TABLET
       ========================================================= */

    @media (max-width: 850px) {

        .login-page {

            background-size: 100% 100%;

            background-position: center center;
        }

        .page-content {

            width: 420px;

            margin-left: 3vw;

            padding-top: 4vh;
        }

        .brand-name {

            font-size: 30px;

            letter-spacing: 2.5px;
        }

        .title-line {

            width: 90px;
        }

        .restricted-access {

            font-size: 10px;

            letter-spacing: 2.5px;
        }

        .admin-icon {

            width: 48px;

            height: 48px;

            margin-top: 17px;

            font-size: 19px;
        }

        .login-title {

            font-size: 22px;
        }

        .login-form,
        .fingerprint-divider,
        .login-description {

            width: 320px;
        }

        .login-button {

            width: 320px;
        }

        .security-note {

            font-size: 6.5px;

            letter-spacing: 1.3px;
        }
    }


    /* =========================================================
       MOBILE
       ========================================================= */

    @media (max-width: 650px) {

        body {

            overflow-y: auto;
        }

        .login-page {

            width: 100%;

            min-height: 100vh;

            height: auto;

            overflow-y: auto;

            background-size: 100% 100%;
        }

        .page-content {

            width: calc(100% - 30px);

            margin: 0 15px;

            padding-top: 75px;

            padding-bottom: 70px;
        }

        .brand-name {

            font-size: 24px;

            white-space: normal;

            letter-spacing: 2px;
        }

        .title-divider {

            margin-top: 12px;
        }

        .title-line {

            width: 60px;
        }

        .restricted-access {

            font-size: 9px;

            letter-spacing: 2px;
        }

        .admin-icon {

            width: 46px;

            height: 46px;

            margin-top: 18px;

            font-size: 18px;
        }

        .login-title {

            font-size: 20px;
        }

        .login-description {

            width: 100%;

            max-width: 350px;

            font-size: 10px;
        }

        .login-form,
        .fingerprint-divider,
        .login-button {

            width: 100%;

            max-width: 350px;
        }

        .back-link {

            top: 18px;

            right: 15px;

            font-size: 9px;
        }

        .security-note {

            font-size: 6px;

            letter-spacing: 1px;
        }

        .bottom-line {

            display: none;
        }
    }

</style>
</head>
<body>
    <form id="form1" runat="server">

    <div class="login-page">


        <!-- =================================================
             RETURN TO MAIN CASE FILES
             TOP RIGHT
             ================================================= -->

        <a href="../Main_Module/Main_Dashboard.aspx"
           class="back-link">

            <i class="fa-solid fa-arrow-left"></i>

            Return to Main Case Files

        </a>


        <!-- =================================================
             MAIN CONTENT
             ================================================= -->

        <div class="page-content">


            <!-- =================================================
                 BRAND
                 ================================================= -->

            <h1 class="brand-name">
                Mysterious Case Files
            </h1>


            <!-- =================================================
                 MAGNIFYING GLASS DIVIDER
                 ================================================= -->

            <div class="title-divider">

                <span class="title-line"></span>

                <span class="magnifier"></span>

                <span class="title-line right"></span>

            </div>


            <!-- =================================================
                 RESTRICTED ACCESS
                 ================================================= -->

            <div class="restricted-access">

                Restricted Investigation Access

            </div>


            <!-- =================================================
                 ADMIN ICON
                 ================================================= -->

            <div class="admin-icon">

                <i class="fa-solid fa-user-secret"></i>

            </div>


            <!-- =================================================
                 ACCESS LABEL
                 ================================================= -->

            <div class="access-label">

                Administrator Access

            </div>


            <!-- =================================================
                 TITLE
                 ================================================= -->

            <h2 class="login-title">

                Case File Control

            </h2>


            <!-- =================================================
                 DESCRIPTION
                 ================================================= -->

            <p class="login-description">

                Authorized personnel only.
                Enter your credentials
                to access the investigation control panel.

            </p>


            <!-- =================================================
                 FINGERPRINT DIVIDER
                 ================================================= -->

            <div class="fingerprint-divider">

                <span class="fingerprint-line"></span>

                <i class="fa-solid fa-fingerprint"></i>

                <span class="fingerprint-line right"></span>

            </div>


            <!-- =================================================
                 LOGIN FORM
                 ================================================= -->

            <div class="login-form">


                <!-- USERNAME -->

                <div class="form-group">

                    <label class="form-label">

                        Administrator Username

                    </label>


                    <div class="input-wrapper">

                        <i class="fa-regular fa-user input-icon"></i>

                        <asp:TextBox
                            ID="txtUsername"
                            runat="server"
                            CssClass="login-input"
                            placeholder="Enter administrator username">
                        </asp:TextBox>

                    </div>

                </div>


                <!-- PASSWORD -->

                <div class="form-group">

                    <label class="form-label">

                        Security Password

                    </label>


                    <div class="input-wrapper">

                        <i class="fa-solid fa-key input-icon"></i>

                        <asp:TextBox
                            ID="txtPassword"
                            runat="server"
                            TextMode="Password"
                            CssClass="login-input"
                            placeholder="Enter security password">
                        </asp:TextBox>

                    </div>

                </div>


                <!-- =================================================
                     LOGIN BUTTON
                     ================================================= -->

                <asp:Button
                    ID="btnAdminLogin"
                    runat="server"
                    Text="ENTER CONTROL PANEL"
                    CssClass="login-button" OnClick="btnAdminLogin_Click" />


            </div>


            <!-- =================================================
                 SECURITY NOTE
                 ================================================= -->

            <div class="security-note">

                <i class="fa-solid fa-lock"></i>

                <span>
                    Secure Administrator Area<br />
                    Unauthorized Access Prohibited
                </span>

            </div>


        </div>


        <!-- =================================================
             BOTTOM CLASSIFIED TEXT
             ================================================= -->

        <div class="bottom-line">

            Mysterious Case Files
            &nbsp; • &nbsp;
            Classified Investigation System

        </div>


    </div>

</form>
</body>
</html>
