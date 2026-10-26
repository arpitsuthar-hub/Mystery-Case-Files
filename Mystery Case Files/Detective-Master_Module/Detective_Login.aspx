<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Detective_Login.aspx.cs"
    Inherits="Mystery_Case_Files.User.Detective_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <meta charset="utf-8" />

    <meta name="viewport"
        content="width=device-width, initial-scale=1.0" />

    <title>User Login - Mysterious Case Files</title>

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@400;500;600;700&family=Playfair+Display:wght@400;500;600&display=swap"
        rel="stylesheet" />

    <!-- Font Awesome -->
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />

    <style type="text/css">
        /* =========================================================
   MYSTERIOUS CASE FILES
   USER LOGIN
   SAME TYPOGRAPHY AS ADMIN LOGIN
   ========================================================= */

* {
    box-sizing: border-box;
}

html,
body {
    margin: 0;
    padding: 0;
    width: 100%;
    height: 100%;
}

body {
    background: #000;
}


/* =========================================================
   LOGIN PAGE
   ========================================================= */

.login-page {
    position: relative;
    width: 100vw;
    height: 100vh;
    overflow: hidden;

    background-image:
        url("../Images/User_Login/User_Login3.png");

    background-repeat: no-repeat;

    /* DO NOT CHANGE IMAGE SIZE */
    background-size: 100% 100%;

    background-position: center center;
}


/* =========================================================
   OVERLAY
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
   RETURN LINK
   SAME AS ADMIN LOGIN
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

    text-shadow: 0 2px 6px #000;

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
   MAIN CONTENT
   SAME AS ADMIN LOGIN
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
   SAME AS ADMIN LOGIN
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
   SAME AS ADMIN LOGIN
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
   MAGNIFIER
   SAME AS ADMIN LOGIN
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
   USER ACCESS
   SAME SIZE AS ADMIN "RESTRICTED ACCESS"
   ========================================================= */

.investigation-access {
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
   USER ICON
   SAME AS ADMIN ICON
   ========================================================= */

.user-icon {
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
   ACCESS LABEL
   SAME AS ADMIN LOGIN
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
   LOGIN TITLE
   SAME AS ADMIN LOGIN
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
   SAME AS ADMIN LOGIN
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
   SAME AS ADMIN LOGIN
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
   LOGIN FORM
   SAME AS ADMIN LOGIN
   ========================================================= */

.login-form {
    width: 370px;

    margin: 0 auto;
}

.form-group {
    margin-bottom: 13px;
}


/* =========================================================
   LABEL
   SAME AS ADMIN LOGIN
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
   INPUT
   SAME AS ADMIN LOGIN
   ========================================================= */

.input-wrapper {
    position: relative;

    width: 100%;
}

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

.login-input {
    width: 100%;

    height: 34px;

    padding: 0 10px 0 40px;

    border: none;

    border-bottom:
        1px solid rgba(238,238,238,0.70);

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
   BUTTON
   SAME AS ADMIN LOGIN
   ========================================================= */

.login-button {
    position: relative;

    width: 370px;

    height: 41px;

    margin-top: 2px;

    border: none;

    border-top:
        1px solid rgba(238,238,238,0.70);

    border-bottom:
        1px solid rgba(238,238,238,0.70);

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

    transform: translateY(-54%);

    font-family: Arial, sans-serif;

    font-size: 23px;

    font-weight: 300;
}

.login-button:hover {
    background: rgba(255,255,255,0.08);

    letter-spacing: 2.7px;
}


/* =========================================================
   REGISTER
   ========================================================= */

.register-text {
    margin-top: 14px;

    text-align: center;

    font-family: "Playfair Display", Georgia, serif;

    font-size: 10px;

    font-weight: 400;

    color: #eeeeee;

    text-shadow:
        0 2px 6px #000;
}

.register-link {
    margin-left: 5px;

    color: #eeeeee;

    font-family: "Cinzel", Georgia, serif;

    font-size: 9px;

    font-weight: 500;

    letter-spacing: 1px;

    text-decoration: none;

    text-transform: uppercase;

    border-bottom:
        1px solid rgba(238,238,238,0.65);

    transition: 0.25s ease;
}

.register-link:hover {
    color: #ffffff;

    border-bottom-color: #ffffff;
}


/* =========================================================
   SECURITY NOTE
   SAME AS ADMIN LOGIN
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
   BOTTOM LINE
   SAME AS ADMIN LOGIN
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

    .investigation-access {
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
   MAX 1100
   ========================================================= */

@media (max-width: 1100px) {

    .page-content {
        width: 450px;

        margin-left: 4vw;

        padding-top: 5vh;
    }

    .brand-name {
        font-size: 35px;
    }

    .title-line {
        width: 110px;
    }

    .investigation-access {
        font-size: 11px;
    }

    .fingerprint-divider,
    .login-form {
        width: 340px;
    }

    .login-description {
        width: 340px;
    }

    .login-button {
        width: 340px;
    }

    .back-link {
        top: 20px;
        right: 20px;

        font-size: 10px;
    }
}


/* =========================================================
   MAX 850
   ========================================================= */

@media (max-width: 850px) {

    .page-content {
        width: 420px;

        margin-left: 3vw;

        padding-top: 4vh;
    }

    .brand-name {
        font-size: 30px;
    }

    .title-line {
        width: 90px;
    }

    .investigation-access {
        font-size: 10px;
    }

    .user-icon {
        width: 48px;
        height: 48px;

        font-size: 19px;
    }

    .login-title {
        font-size: 22px;
    }

    .fingerprint-divider,
    .login-form {
        width: 320px;
    }

    .login-description {
        width: 320px;
    }

    .login-button {
        width: 320px;
    }

    .security-note {
        font-size: 6.5px;
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

        overflow: hidden;
    }

    .page-content {
        width: calc(100% - 30px);

        margin: 15px;

        padding-top: 75px;

        padding-bottom: 70px;
    }

    .brand-name {
        font-size: 24px;

        letter-spacing: 2px;

        white-space: normal;
    }

    .title-line {
        width: 60px;
    }

    .investigation-access {
        font-size: 9px;

        letter-spacing: 2.5px;
    }

    .user-icon {
        width: 46px;
        height: 46px;

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

    .fingerprint-divider,
    .login-form {
        width: 100%;
        max-width: 350px;
    }

    .login-button {
        width: 100%;
    }

    .back-link {
        top: 18px;
        right: 15px;

        font-size: 9px;
    }

    .security-note {
        font-size: 6px;
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

            <!-- Return Link -->

            <a href="../Main_Module/Main_Dashboard.aspx"
               class="back-link">

                <i class="fa-solid fa-arrow-left"></i>

                Return to Main Case Files

            </a>


            <!-- Main Login Content -->

            <div class="page-content">


                <!-- Brand -->

                <h1 class="brand-name">
                    Mysterious Case Files
                </h1>


                <!-- Magnifying Glass Divider -->

                <div class="title-divider">

                    <span class="title-line"></span>

                    <span class="magnifier"></span>

                    <span class="title-line right"></span>

                </div>


                <!-- Access Type -->

                <div class="investigation-access">
                    Investigation Access
                </div>


                <!-- User Icon -->

                <div class="user-icon">

                    <i class="fa-solid fa-user-secret"></i>

                </div>


                <!-- Access Label -->

                <div class="access-label">
                    Investigator Access
                </div>


                <!-- Login Title -->

                <h2 class="login-title">
                    Enter The Case
                </h2>


                <!-- Description -->

                <p class="login-description">

                    Every mystery leaves a trace.
                    Enter your credentials
                    to continue your investigation.

                </p>


                <!-- Fingerprint Divider -->

                <div class="fingerprint-divider">

                    <span class="fingerprint-line"></span>

                    <i class="fa-solid fa-fingerprint"></i>

                    <span class="fingerprint-line right"></span>

                </div>


                <!-- Login Form -->

                <div class="login-form">


                    <!-- Username -->

                    <div class="form-group">

                        <label class="form-label">
                            Investigator Username
                        </label>

                        <div class="input-wrapper">

                            <i class="fa-regular fa-user input-icon"></i>

                            <asp:TextBox
                                ID="txtUsername"
                                runat="server"
                                CssClass="login-input"
                                placeholder="Enter investigator username">
                            </asp:TextBox>

                        </div>

                    </div>


                    <!-- Password -->

                    <div class="form-group">

                        <label class="form-label">
                            Investigation Password
                        </label>

                        <div class="input-wrapper">

                            <i class="fa-solid fa-key input-icon"></i>

                            <asp:TextBox
                                ID="txtPassword"
                                runat="server"
                                TextMode="Password"
                                CssClass="login-input"
                                placeholder="Enter investigation password">
                            </asp:TextBox>

                        </div>

                    </div>


                    <!-- Login Button -->

                    <asp:Button
                        ID="btnUserLogin"
                        runat="server"
                        Text="CONTINUE INVESTIGATION"
                        CssClass="login-button" OnClick="btnUserLogin_Click" />

                </div>


                <!-- Registration -->

                <div class="register-text">

                    New investigator?

                    <a href="User_Registration.aspx"
                       class="register-link">

                        Create Account

                    </a>

                </div>


                <!-- Security Note -->

                <div class="security-note">

                    <i class="fa-solid fa-lock"></i>

                    <span>

                        Secure Investigation Area
                        <br />
                        Unauthorized Access Prohibited

                    </span>

                </div>


            </div>


            <!-- Bottom Text -->

            <div class="bottom-line">

                Mysterious Case Files
                &nbsp; • &nbsp;
                Investigation System

            </div>

        </div>

    </form>

</body>

</html>