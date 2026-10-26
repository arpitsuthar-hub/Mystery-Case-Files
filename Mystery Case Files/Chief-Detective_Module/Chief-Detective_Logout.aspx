<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Chief-Detective_Logout.aspx.cs"
    Inherits="Mystery_Case_Files.Chief_Detective_Module.Chief_Detective_Logout" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <title>Chief Detective Logout | Mysterious Case Files</title>

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@500;600;700&family=Poppins:wght@300;400;500;600&display=swap"
          rel="stylesheet" />

    <!-- Font Awesome -->
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />

    <style>
        /* =========================================
           01. GLOBAL RESET
        ========================================= */

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        html,
        body {
            width: 100%;
            min-height: 100%;
        }

        body {
            font-family: 'Poppins', sans-serif;
            background: #050607;
            color: #f5f0e6;
        }

        /* =========================================
           02. FULL-SCREEN BACKGROUND
        ========================================= */

        .logout-page {
            position: relative;

            width: 100%;
            min-height: 100vh;
            min-height: 100dvh;

            display: flex;
            align-items: center;
            justify-content: flex-start;

            padding: 45px 5.5%;

            /*
               Replace the image path with your generated
               background image's actual project path.
            */

            background-image:
                linear-gradient(
                    90deg,
                    rgba(3, 4, 5, 0.10) 0%,
                    rgba(3, 4, 5, 0.03) 55%,
                    rgba(3, 4, 5, 0.12) 100%
                ),
                url('../Images/Admin_Login/Admin_Logout.png');

            background-size: cover;
            background-position: center center;
            background-repeat: no-repeat;
            background-attachment: fixed;

            overflow: hidden;
        }

        /* Subtle cinematic vignette */

        .logout-page::before {
            content: "";
            position: absolute;
            inset: 0;

            background:
                linear-gradient(
                    90deg,
                    rgba(0, 0, 0, 0.20) 0%,
                    transparent 58%
                ),
                radial-gradient(
                    ellipse at center,
                    transparent 35%,
                    rgba(0, 0, 0, 0.25) 100%
                );

            pointer-events: none;
        }

        /* =========================================
           03. LOGOUT CARD POSITION
        ========================================= */

        .logout-wrapper {
            position: relative;
            z-index: 1;

            width: 100%;
            max-width: 530px;

            animation: fadeInLeft 0.9s ease both;
        }

        /* =========================================
           04. FROSTED GLASS PANEL
        ========================================= */

        .logout-card {
            position: relative;

            width: 100%;
            padding: 43px 42px 30px;

            text-align: center;

            /*
               Transparent glass allows the background
               image to remain visible through the panel.
            */

            background: rgba(9, 11, 12, 0.43);

            -webkit-backdrop-filter: blur(18px) saturate(125%);
            backdrop-filter: blur(18px) saturate(125%);

            border: 1px solid rgba(214, 177, 101, 0.48);
            border-radius: 17px;

            box-shadow:
                0 25px 75px rgba(0, 0, 0, 0.38),
                inset 0 1px 0 rgba(255, 255, 255, 0.08),
                0 0 35px rgba(196, 154, 69, 0.045);

            overflow: hidden;
        }

        /* Fine gold line along the top */

        .logout-card::before {
            content: "";
            position: absolute;

            top: 0;
            left: 18%;
            right: 18%;

            height: 1px;

            background: linear-gradient(
                90deg,
                transparent,
                rgba(224, 185, 105, 0.9),
                transparent
            );
        }

        /* =========================================
           05. DETECTIVE ICON
        ========================================= */

        .detective-icon {
            width: 86px;
            height: 86px;

            display: flex;
            align-items: center;
            justify-content: center;

            margin: 0 auto 20px;

            border: 1.5px solid #d8ae59;
            border-radius: 50%;

            background: rgba(196, 154, 69, 0.09);

            box-shadow:
                0 0 25px rgba(196, 154, 69, 0.09),
                inset 0 0 20px rgba(196, 154, 69, 0.06);
        }

        .detective-icon i {
            color: #e0b65e;
            font-size: 35px;
        }

        /* =========================================
           06. BRAND NAME
        ========================================= */

        .brand-name {
            font-family: 'Cinzel', serif;
            font-size: 15px;
            font-weight: 700;
            letter-spacing: 4px;
            line-height: 1.8;

            color: #e1b65e;

            margin-bottom: 17px;
        }

        /* =========================================
           07. DECORATIVE DIVIDER
        ========================================= */

        .gold-divider {
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 11px;

            width: 100%;
            max-width: 255px;

            margin: 0 auto 25px;
        }

        .gold-divider span {
            height: 1px;
            flex: 1;

            background: linear-gradient(
                90deg,
                transparent,
                rgba(215, 176, 94, 0.8)
            );
        }

        .gold-divider span:last-child {
            background: linear-gradient(
                90deg,
                rgba(215, 176, 94, 0.8),
                transparent
            );
        }

        .gold-divider i {
            color: #d9ad54;
            font-size: 11px;
        }

        /* =========================================
           08. HEADING
        ========================================= */

        .logout-card h1 {
            font-family: 'Cinzel', serif;
            font-size: clamp(23px, 2.2vw, 31px);
            font-weight: 600;
            line-height: 1.45;

            color: #fffdf8;

            margin-bottom: 23px;

            text-shadow: 0 2px 15px rgba(0, 0, 0, 0.4);
        }

        /* =========================================
           09. MESSAGE
        ========================================= */

        .logout-message {
            color: #e0ded9;
            font-size: 13.5px;
            font-weight: 300;
            line-height: 2;

            margin-bottom: 15px;

            text-shadow: 0 1px 7px rgba(0, 0, 0, 0.55);
        }

        .logout-message strong {
            color: #e7c477;
            font-weight: 500;
        }

        .logout-submessage {
            color: #c9c6bf;
            font-size: 12.5px;
            line-height: 1.9;

            margin: 17px 0 28px;
        }

        /* =========================================
           10. DASHBOARD BUTTON
        ========================================= */

        .dashboard-button {
            position: relative;

            width: 100%;
            min-height: 53px;

            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 13px;

            padding: 14px 20px;

            color: #fff9e9;
            text-decoration: none;

            font-family: 'Poppins', sans-serif;
            font-size: 13px;
            font-weight: 500;
            letter-spacing: 1.1px;
            text-transform: uppercase;

            background: rgba(174, 125, 42, 0.34);

            border: 1.5px solid #d9ae55;
            border-radius: 8px;

            box-shadow:
                inset 0 0 15px rgba(196, 154, 69, 0.06),
                0 6px 20px rgba(0, 0, 0, 0.15);

            transition:
                background 0.3s ease,
                box-shadow 0.3s ease,
                transform 0.3s ease,
                border-color 0.3s ease;
        }

        .dashboard-button i {
            color: #f0c66e;
            font-size: 17px;

            transition: transform 0.3s ease;
        }

        .dashboard-button:hover {
            color: #fffdf6;

            background: rgba(196, 154, 69, 0.43);
            border-color: #f1ce7d;

            box-shadow:
                0 0 24px rgba(196, 154, 69, 0.16),
                0 8px 25px rgba(0, 0, 0, 0.2);

            transform: translateY(-2px);
        }

        .dashboard-button:hover i {
            transform: translateX(4px);
        }

        .dashboard-button:focus-visible {
            outline: 2px solid #f0ca78;
            outline-offset: 4px;
        }

        /* =========================================
           11. FOOTER
        ========================================= */

        .footer-divider {
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 13px;

            margin: 29px auto 18px;
        }

        .footer-divider span {
            width: 75px;
            height: 1px;
            background: rgba(215, 176, 94, 0.48);
        }

        .footer-divider i {
            color: #d8ad56;
            font-size: 17px;
        }

        .footer-title {
            color: #dcb45f;

            font-size: 10px;
            font-weight: 500;
            letter-spacing: 2.2px;
            line-height: 2;
        }

        .footer-copyright {
            margin-top: 3px;

            color: #c0b7a4;

            font-size: 9px;
            letter-spacing: 1.7px;
            line-height: 2;
        }

        /* =========================================
           12. ENTRANCE ANIMATION
        ========================================= */

        @keyframes fadeInLeft {
            from {
                opacity: 0;
                transform: translateX(-24px);
            }

            to {
                opacity: 1;
                transform: translateX(0);
            }
        }

        /* =========================================
           13. LAPTOP / TABLET
        ========================================= */

        @media (max-width: 900px) {
            .logout-page {
                padding: 35px 4%;
                background-position: 58% center;
            }

            .logout-wrapper {
                max-width: 470px;
            }

            .logout-card {
                padding: 36px 30px 27px;
            }

            .brand-name {
                font-size: 13px;
                letter-spacing: 3px;
            }
        }

        /* =========================================
           14. MOBILE
        ========================================= */

        @media (max-width: 600px) {
            .logout-page {
                justify-content: center;
                padding: 22px 16px;

                background-position: 65% center;
                background-attachment: scroll;
            }

            .logout-page::before {
                background: rgba(0, 0, 0, 0.25);
            }

            .logout-wrapper {
                max-width: 430px;
            }

            .logout-card {
                padding: 31px 23px 24px;
                border-radius: 14px;

                background: rgba(7, 9, 10, 0.57);

                -webkit-backdrop-filter: blur(15px);
                backdrop-filter: blur(15px);
            }

            .detective-icon {
                width: 70px;
                height: 70px;
                margin-bottom: 16px;
            }

            .detective-icon i {
                font-size: 29px;
            }

            .brand-name {
                font-size: 11px;
                letter-spacing: 2.5px;
                margin-bottom: 13px;
            }

            .gold-divider {
                margin-bottom: 19px;
            }

            .logout-card h1 {
                font-size: 22px;
                margin-bottom: 17px;
            }

            .logout-message {
                font-size: 12px;
                line-height: 1.9;
            }

            .logout-submessage {
                font-size: 11.5px;
                margin: 14px 0 23px;
            }

            .dashboard-button {
                min-height: 49px;
                font-size: 11px;
                letter-spacing: 0.7px;
                padding: 12px 10px;
            }

            .footer-divider {
                margin-top: 23px;
            }

            .footer-title {
                font-size: 9px;
                letter-spacing: 1.5px;
            }

            .footer-copyright {
                font-size: 8px;
                letter-spacing: 1px;
            }
        }

        /* =========================================
           15. REDUCED MOTION ACCESSIBILITY
        ========================================= */

        @media (prefers-reduced-motion: reduce) {
            *,
            *::before,
            *::after {
                animation-duration: 0.01ms !important;
                transition-duration: 0.01ms !important;
            }
        }
    </style>

</head>

<body>

    <form id="form1" runat="server">

        <main class="logout-page">

            <div class="logout-wrapper">

                <section class="logout-card"
                         aria-labelledby="logoutHeading">

                    <!-- Detective Icon -->
                    <div class="detective-icon">
                        <i class="fa-solid fa-user-secret"
                           aria-hidden="true"></i>
                    </div>

                    <!-- Brand -->
                    <div class="brand-name">
                        MYSTERIOUS CASE FILES
                    </div>

                    <!-- Decorative Divider -->
                    <div class="gold-divider" aria-hidden="true">
                        <span></span>
                        <i class="fa-solid fa-diamond"></i>
                        <span></span>
                    </div>

                    <!-- Heading -->
                    <h1 id="logoutHeading">
                        Chief Detective Logout
                    </h1>

                    <!-- Main Message -->
                    <p class="logout-message">
                        Your investigation session is ready to close.
                        <br />
                        Thank you for your service,
                        <strong>Chief Detective.</strong>
                    </p>

                    <!-- Supporting Message -->
                    <p class="logout-submessage">
                        Return to your dashboard whenever you are ready
                        <br class="desktop-break" />
                        to continue your investigation.
                    </p>

                    <!-- Dashboard Navigation -->
                    <asp:HyperLink
                        ID="lnkDashboard"
                        runat="server"
                        CssClass="dashboard-button"
                        NavigateUrl="~/Chief-Detective_Module/Chief_Dashboard.aspx">

                        <i class="fa-solid fa-arrow-right-to-bracket"
                           aria-hidden="true"></i>

                        <span>Return to Dashboard</span>

                    </asp:HyperLink>

                    <!-- Footer Divider -->
                    <div class="footer-divider" aria-hidden="true">
                        <span></span>
                        <i class="fa-solid fa-shield-halved"></i>
                        <span></span>
                    </div>

                    <!-- Footer -->
                    <div class="footer-title">
                        SECURE INVESTIGATION PORTAL
                    </div>

                    <div class="footer-copyright">
                        MYSTERIOUS CASE FILES &copy; 2026
                    </div>

                </section>

            </div>

        </main>

    </form>

</body>
</html>
