<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Detective_Logout.aspx.cs"
    Inherits="Mystery_Case_Files.User.Detective_Logout" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <title>Investigator Logout | Mysterious Case Files</title>

    <!-- GOOGLE FONTS -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />

    <link rel="preconnect" href="https://fonts.gstatic.com"
        crossorigin="anonymous" />

    <link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@400;500;600;700&family=Playfair+Display:ital,wght@0,400;0,500;0,600;1,400&family=Poppins:wght@300;400;500;600&display=swap"
        rel="stylesheet" />

    <!-- FONT AWESOME -->
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />

    <style>

        /* =====================================================
           RESET
           ===================================================== */

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        html {
            min-height: 100%;
        }

        body {
            min-height: 100vh;
            font-family: "Poppins", Arial, sans-serif;
            color: #e8e2d5;

            background:
                linear-gradient(
                    rgba(5, 5, 5, 0.60),
                    rgba(5, 5, 5, 0.76)
                ),
                url("../Images/User_Login/User_Login1.jpg");

            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            background-attachment: fixed;

            display: flex;
            align-items: center;
            justify-content: center;

            padding: 25px;
        }


        /* =====================================================
           FORM
           ===================================================== */

        #form1 {
            width: 100%;

            display: flex;
            align-items: center;
            justify-content: center;
        }


        /* =====================================================
           LOGOUT CONTAINER
           TRANSPARENT GLASS EFFECT
           ===================================================== */

        .logout-container {
            position: relative;

            width: 100%;
            max-width: 560px;

            padding: 55px 45px 40px;

            text-align: center;

            background: rgba(8, 8, 8, 0.16);

            border: 1px solid rgba(226, 211, 177, 0.55);

            box-shadow:
                0 0 35px rgba(0, 0, 0, 0.20),
                inset 0 0 25px rgba(255, 255, 255, 0.015);

            backdrop-filter: blur(3px);
            -webkit-backdrop-filter: blur(3px);
        }


        /* TOP GOLD LINE */

        .logout-container::before {
            content: "";

            position: absolute;

            top: -1px;
            left: 20%;

            width: 60%;
            height: 2px;

            background: #c7a85c;
        }


        /* =====================================================
           PROJECT BRANDING
           ===================================================== */

        .brand-name {
            font-family: "Cinzel", serif;

            color: #d0ae63;

            font-size: 18px;
            font-weight: 600;

            letter-spacing: 3px;

            margin-bottom: 38px;
        }

        .brand-name i {
            margin-right: 10px;

            font-size: 20px;
        }


        /* =====================================================
           LOGOUT ICON
           ===================================================== */

        .logout-icon {
            width: 95px;
            height: 95px;

            margin: 0 auto 28px;

            display: flex;
            align-items: center;
            justify-content: center;

            border: 1px solid rgba(208, 174, 99, 0.75);

            border-radius: 50%;

            background: rgba(0, 0, 0, 0.15);

            box-shadow: 0 0 25px rgba(208, 174, 99, 0.08);
        }

        .logout-icon i {
            color: #d0ae63;

            font-size: 37px;
        }


        /* =====================================================
           STATUS TEXT
           ===================================================== */

        .status-label {
            color: #d0ae63;

            font-size: 10px;
            font-weight: 500;

            letter-spacing: 4px;
            text-transform: uppercase;

            margin-bottom: 15px;
        }

        .status-label i {
            margin-right: 7px;
        }


        /* =====================================================
           MAIN HEADING
           ===================================================== */

        .logout-container h1 {
            font-family: "Cinzel", serif;

            color: #f0e8d8;

            font-size: 29px;
            font-weight: 500;

            line-height: 1.6;
            letter-spacing: 1px;

            margin-bottom: 18px;
        }


        /* =====================================================
           DESCRIPTION
           ===================================================== */

        .logout-description {
            max-width: 400px;

            margin: 0 auto;

            color: #d0c9bd;

            font-size: 13px;
            font-weight: 300;

            line-height: 2;
        }


        /* =====================================================
           DIVIDER
           ===================================================== */

        .divider {
            display: flex;
            align-items: center;

            gap: 15px;

            margin: 30px 0;
        }

        .divider span {
            height: 1px;

            flex: 1;

            background: rgba(226, 211, 177, 0.35);
        }

        .divider i {
            color: #c7a85c;

            font-size: 13px;
        }


        /* =====================================================
           DETECTIVE QUOTE
           ===================================================== */

        .logout-quote {
            font-family: "Playfair Display", serif;

            color: #d8c9a8;

            font-size: 15px;
            font-style: italic;

            line-height: 1.9;

            margin-bottom: 32px;
        }


        /* =====================================================
           MAIN DASHBOARD BUTTON
           ===================================================== */

        .dashboard-link {
            display: inline-flex;
            align-items: center;
            justify-content: center;

            gap: 11px;

            min-height: 48px;

            padding: 14px 24px;

            background: rgba(199, 168, 92, 0.10);

            border: 1px solid #c7a85c;

            color: #e0c57f !important;

            text-decoration: none;

            font-family: "Cinzel", serif;

            font-size: 10px;
            font-weight: 600;

            letter-spacing: 1.5px;

            transition: all 0.3s ease;
        }

        .dashboard-link:hover {
            background: #c7a85c;

            color: #080808 !important;

            box-shadow: 0 0 25px rgba(199, 168, 92, 0.16);

            transform: translateY(-2px);
        }


        /* =====================================================
           FOOTER
           ===================================================== */

        .logout-footer {
            margin-top: 38px;

            padding-top: 22px;

            border-top: 1px solid rgba(226, 211, 177, 0.20);

            color: #b5ac9b;

            font-size: 9px;

            letter-spacing: 2px;

            line-height: 2;
        }

        .logout-footer span {
            color: #c7a85c;
        }


        /* =====================================================
           RESPONSIVE DESIGN
           ===================================================== */

        @media (max-width: 600px) {

            body {
                padding: 18px;

                background-attachment: scroll;
            }

            .logout-container {
                padding: 42px 22px 30px;
            }

            .brand-name {
                font-size: 14px;

                letter-spacing: 2px;

                margin-bottom: 32px;
            }

            .brand-name i {
                font-size: 16px;
            }

            .logout-icon {
                width: 80px;
                height: 80px;
            }

            .logout-icon i {
                font-size: 30px;
            }

            .logout-container h1 {
                font-size: 23px;
            }

            .logout-description {
                font-size: 12px;
            }

            .logout-quote {
                font-size: 13px;
            }

            .dashboard-link {
                width: 100%;

                padding: 14px 12px;

                font-size: 9px;
                letter-spacing: 1px;
            }

        }

    </style>

</head>

<body>

    <form id="form1" runat="server">

        <div class="logout-container">


            <!-- PROJECT BRANDING -->

            <div class="brand-name">

                <i class="fa-solid fa-user-secret"></i>

                MYSTERIOUS CASE FILES

            </div>


            <!-- LOGOUT ICON -->

            <div class="logout-icon">

                <i class="fa-solid fa-check"></i>

            </div>

            <!-- DESCRIPTION -->

            <p class="logout-description">

                Your investigator session has ended successfully.

                The investigation may be over for now,
                but every mystery holds another secret.

            </p>


            <!-- DIVIDER -->

            <div class="divider">

                <span></span>

                <i class="fa-solid fa-fingerprint"></i>

                <span></span>

            </div>


            <!-- QUOTE -->

            <p class="logout-quote">

                "Observe carefully. Question everything.
                Trust the evidence."

            </p>


            <!-- MAIN DASHBOARD BUTTON -->

            <asp:HyperLink
                ID="lnkMainDashboard"
                runat="server"
                NavigateUrl="~/Main_Dashboard.aspx"
                CssClass="dashboard-link">

                <i class="fa-solid fa-house"></i>

                RETURN TO MAIN DASHBOARD

            </asp:HyperLink>


            <!-- FOOTER -->

            <div class="logout-footer">

                MYSTERIOUS CASE FILES

                <br />

                <span>EVERY CLUE MATTERS. EVERY TRUTH COUNTS.</span>

            </div>


        </div>

    </form>

</body>

</html>
