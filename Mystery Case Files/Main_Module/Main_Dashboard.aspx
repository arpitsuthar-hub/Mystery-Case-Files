<%@ Page Language="C#" AutoEventWireup="true"
CodeBehind="Main_Dashboard.aspx.cs"
Inherits="Mystery_Case_Files.Main_Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

<meta charset="utf-8" />

<meta name="viewport"
    content="width=device-width, initial-scale=1.0" />

<title>Mysterious Case Files</title>


<!-- =========================================================
     GOOGLE FONTS
     ========================================================= -->

<link rel="preconnect"
    href="https://fonts.googleapis.com" />

<link rel="preconnect"
    href="https://fonts.googleapis.com"
    crossorigin="anonymous" />

<link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@400;500;600;700&family=Playfair+Display:ital,wght@400;500;600;700&family=Poppins:wght@300;400;500;600&display=swap"
    rel="stylesheet" />


<!-- =========================================================
     FONT AWESOME
     ========================================================= -->

<link rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />


<!-- =========================================================
     MAIN DASHBOARD CSS
     ========================================================= -->

<link rel="stylesheet"
    href="~/CSS/Main_Dashboard.css"  runat="server" />


</head>

<body>


<form id="form1" runat="server">


    <!-- =========================================================
         HEADER / HERO SECTION
         ========================================================= -->

    <section class="header-section">


        <!-- TOP NAVIGATION -->

        <div class="top-navigation">

            <!-- AUTO DATE -->

            <div class="current-date">

                <i class="fa-regular fa-calendar"></i>

                <span id="currentDate"></span>

            </div>


            <!-- CENTER TITLE -->

            <div class="logo">

                <span>
                    Mysterious Case Files
                </span>

            </div>


            <!-- NAVIGATION -->

            <div class="nav-links">

                <a href="Main_Dashboard.aspx">
                    Home
                </a>

                <a href="#about">
                    About
                </a>

                <a href="#detectives">
                    Detectives
                </a>

                <a href="#how-to-play">
                    How To Play
                </a>

            </div>

        </div>


        <!-- =====================================================
             HERO CONTENT
             ===================================================== -->

        <div class="hero-content">


            <div class="hero-small-title">

                <i class="fa-solid fa-magnifying-glass"></i>

                EVERY CLUE MATTERS

            </div>


            <h1 class="hero-title">

                THE CRIME IS ONLY

                <br />

                THE BEGINNING.

                <span>
                    THE REAL QUESTION IS... WHY?
                </span>

            </h1>


            <p class="hero-description">

                Every mystery leaves a trace.
                Every case hides a secret.
                Observe the evidence, investigate the clues,
                connect the details and discover the truth.

            </p>


            <div class="hero-quote">

                "The truth is not always where you expect to find it.
                Sometimes, you have to follow the smallest clue."

            </div>


            <!-- HERO BUTTONS -->

            <div class="hero-buttons">


                <!-- ADMIN LOGIN -->

                <a href="../Chief-Detective_Module/Chief-Detective_Login.aspx"
                    class="btn btn-primary">

                    <i class="fa-solid fa-user-shield"></i>

                    CHIEF LOGIN

                </a>


                <!-- USER LOGIN -->

                <a href="../Detective-Master_Module/Detective_Login.aspx"
                    class="btn btn-secondary">

                    <i class="fa-solid fa-user-secret"></i>

                    DETECTIVE LOGIN

                </a>


                <!-- HOW TO PLAY -->

                <a href="#how-to-play"
                    class="btn btn-secondary">

                    <i class="fa-solid fa-circle-info"></i>

                    HOW TO PLAY

                </a>


            </div>

        </div>


        <!-- BOTTOM FADE -->

        <div class="hero-bottom-fade"></div>


        <!-- SCROLL -->

        <div class="scroll-indicator">

            <span>
                SCROLL TO INVESTIGATE
            </span>

            <i class="fa-solid fa-chevron-down"></i>

        </div>

    </section>



    <!-- =========================================================
         ABOUT SECTION
         ========================================================= -->

    <section class="about-section"
        id="about">


        <div class="about-container">


            <!-- IMAGE -->

            <div class="about-image">

                <img src="../../Images/Detective2.jpeg"
                    alt="Detective Investigation" />

                <div class="about-image-overlay"></div>

            </div>


            <!-- CONTENT -->

            <div class="about-content">


                <span class="section-small-title">

                    <i class="fa-solid fa-file-circle-question"></i>

                    ENTER THE WORLD OF MYSTERY

                </span>


                <h2>

                    EVERY CASE

                    <span>
                        HAS A SECRET.
                    </span>

                </h2>


                <div class="section-line about-line"></div>


                <p class="about-main-text">

                    Welcome to
                    <strong>Mysterious Case Files</strong> —
                    a world where every crime has a story,
                    every story contains clues and every clue
                    could lead you closer to the truth.

                </p>


                <p>

                    Read carefully.
                    Examine the evidence.
                    Question every detail.
                    Then make your decision.

                </p>


                <p>

                    From simple mysteries to highly complex
                    critical cases, every investigation is
                    designed to challenge your observation,
                    reasoning and detective instincts.

                </p>


                <!-- ABOUT FEATURES -->

                <div class="about-features">


                    <div class="about-feature">

                        <i class="fa-solid fa-fingerprint"></i>

                        <div>

                            <h3>
                                EVERY CLUE
                            </h3>

                            <span>
                                Could change the case.
                            </span>

                        </div>

                    </div>


                    <div class="about-feature">

                        <i class="fa-solid fa-eye"></i>

                        <div>

                            <h3>
                                OBSERVE
                            </h3>

                            <span>
                                Nothing is insignificant.
                            </span>

                        </div>

                    </div>


                    <div class="about-feature">

                        <i class="fa-solid fa-brain"></i>

                        <div>

                            <h3>
                                THINK
                            </h3>

                            <span>
                                Connect the evidence.
                            </span>

                        </div>

                    </div>


                </div>

            </div>

        </div>

    </section>



    <!-- =========================================================
         DETECTIVE SECTION
         ========================================================= -->

    <section class="detective-section"
        id="detectives">


        <!-- SECTION HEADING -->

        <div class="section-heading">


            <span class="section-small-title">

                <i class="fa-solid fa-user-secret"></i>

                THE LEGENDS OF INVESTIGATION

            </span>


            <h2>

                DETECTIVES WHO

                <span>
                    CHANGED THE GAME
                </span>

            </h2>


            <div class="section-line"></div>


            <p>

                Before you begin your own investigation,
                meet some of the real-world investigators whose
                work helped shape the art of detection.

            </p>

        </div>



        <!-- =====================================================
             DETECTIVE GRID
             ===================================================== -->

        <div class="detective-grid">


            <!-- =================================================
                 DETECTIVE 01
                 ================================================= -->

            <div class="detective-card">


                <div class="detective-image">

                    <img src="../../Images/Detectives/Vidocq.png"
                        alt="Eugène-François Vidocq" />

                    <div class="image-overlay"></div>

                    <span class="detective-number">
                        01
                    </span>

                </div>


                <div class="detective-content">

                    <span class="detective-country">
                        FRANCE
                    </span>


                    <h3>

                        EUGÈNE-FRANÇOIS

                        <br />

                        VIDOCQ

                    </h3>


                    <div class="card-line"></div>


                    <p>

                        A pioneer of criminal investigation
                        whose methods influenced the development
                        of modern detective work.

                    </p>

                </div>

            </div>



            <!-- =================================================
                 DETECTIVE 02
                 ================================================= -->

            <div class="detective-card">


                <div class="detective-image">

                    <img src="../../Images/Detectives/Allan_Pinkerton.png"
                        alt="Allan Pinkerton" />

                    <div class="image-overlay"></div>

                    <span class="detective-number">
                        02
                    </span>

                </div>


                <div class="detective-content">

                    <span class="detective-country">
                        UNITED STATES
                    </span>


                    <h3>

                        ALLAN

                        <br />

                        PINKERTON

                    </h3>


                    <div class="card-line"></div>


                    <p>

                        Founder of the Pinkerton National
                        Detective Agency and an influential
                        figure in private investigation.

                    </p>

                </div>

            </div>



            <!-- =================================================
                 DETECTIVE 03
                 ================================================= -->

            <div class="detective-card">


                <div class="detective-image">

                    <img src="../../Images/Detectives/Kate_Warna.png"
                        alt="Kate Warne" />

                    <div class="image-overlay"></div>

                    <span class="detective-number">
                        03
                    </span>

                </div>


                <div class="detective-content">

                    <span class="detective-country">
                        UNITED STATES
                    </span>


                    <h3>

                        KATE

                        <br />

                        WARNE

                    </h3>


                    <div class="card-line"></div>


                    <p>

                        A pioneering female private detective
                        remembered for investigative and
                        undercover work.

                    </p>

                </div>

            </div>



            <!-- =================================================
                 DETECTIVE 04
                 ================================================= -->

            <div class="detective-card">


                <div class="detective-image">

                    <img src="../../Images/Detectives/Frances_Glessner_Lee.png"
                        alt="Frances Glessner Lee" />

                    <div class="image-overlay"></div>

                    <span class="detective-number">
                        04
                    </span>

                </div>


                <div class="detective-content">

                    <span class="detective-country">
                        UNITED STATES
                    </span>


                    <h3>

                        FRANCES

                        <br />

                        GLESSNER LEE

                    </h3>


                    <div class="card-line"></div>


                    <p>

                        A pioneer of forensic investigation
                        who created detailed miniature crime
                        scenes for investigator training.

                    </p>

                </div>

            </div>

                    <!-- =================================================
     VIEW MORE CARD
     ================================================= -->

<a href="Legendary_Detectives.aspx" class="view-more-link"> View More <i class="fa-solid fa-arrow-right"></i> </a>

        </div>



        <!-- =====================================================
             DETECTIVE NOTE
             ===================================================== -->

        <div class="detective-note">

            <i class="fa-solid fa-quote-left"></i>

            <p>

                Observe carefully.
                Question everything.
                Trust the evidence.

            </p>

        </div>

    </section>



    <!-- =========================================================
         HOW TO PLAY
         ========================================================= -->

    <section class="how-to-section"
        id="how-to-play">


        <div class="how-to-container">


            <!-- SECTION HEADING -->

            <div class="section-heading">


                <span class="section-small-title">

                    <i class="fa-solid fa-scroll"></i>

                    BEGIN YOUR INVESTIGATION

                </span>


                <h2>

                    HOW TO

                    <span>
                        PLAY
                    </span>

                </h2>


                <div class="section-line"></div>


                <p>

                    Every case has a story.
                    Every story has clues.
                    Your job is to discover the truth.

                </p>

            </div>



            <!-- =================================================
                 INSTRUCTION GRID
                 ================================================= -->

            <div class="instruction-grid">


                <!-- STEP 01 -->

                <div class="instruction-card">

                    <div class="instruction-number">
                        01
                    </div>

                    <div class="instruction-icon">

                        <i class="fa-solid fa-folder-open"></i>

                    </div>

                    <h3>
                        CHOOSE A CASE
                    </h3>

                    <p>

                        Select a mystery and begin
                        your investigation.

                    </p>

                </div>



                <!-- STEP 02 -->

                <div class="instruction-card">

                    <div class="instruction-number">
                        02
                    </div>

                    <div class="instruction-icon">

                        <i class="fa-solid fa-book-open"></i>

                    </div>

                    <h3>
                        READ THE STORY
                    </h3>

                    <p>

                        Carefully study the case
                        details before making a decision.

                    </p>

                </div>



                <!-- STEP 03 -->

                <div class="instruction-card">

                    <div class="instruction-number">
                        03
                    </div>

                    <div class="instruction-icon">

                        <i class="fa-solid fa-magnifying-glass"></i>

                    </div>

                    <h3>
                        FIND THE CLUES
                    </h3>

                    <p>

                        Examine every clue.
                        Even the smallest detail may matter.

                    </p>

                </div>



                <!-- STEP 04 -->

                <div class="instruction-card">

                    <div class="instruction-number">
                        04
                    </div>

                    <div class="instruction-icon">

                        <i class="fa-solid fa-brain"></i>

                    </div>

                    <h3>
                        THINK CAREFULLY
                    </h3>

                    <p>

                        Connect the evidence and
                        eliminate the impossible.

                    </p>

                </div>



                <!-- STEP 05 -->

                <div class="instruction-card">

                    <div class="instruction-number">
                        05
                    </div>

                    <div class="instruction-icon">

                        <i class="fa-solid fa-list-check"></i>

                    </div>

                    <h3>
                        CHOOSE YOUR ANSWER
                    </h3>

                    <p>

                        Select the answer you believe
                        solves the mystery.

                    </p>

                </div>



                <!-- STEP 06 -->

                <div class="instruction-card">

                    <div class="instruction-number">
                        06
                    </div>

                    <div class="instruction-icon">

                        <i class="fa-solid fa-user-secret"></i>

                    </div>

                    <h3>
                        SOLVE THE CASE
                    </h3>

                    <p>

                        Submit your answer, discover
                        whether you solved the mystery,
                        and continue your investigation.

                    </p>

                </div>


            </div>

        </div>

    </section>



    <!-- =========================================================
         FOOTER
         ========================================================= -->

    <footer class="main-footer">


        <div class="footer-symbol">

            <i class="fa-solid fa-fingerprint"></i>

        </div>


        <h3>
            MYSTERIOUS CASE FILES
        </h3>


        <p>
            Every clue matters. Every case has a truth.
        </p>


        <div class="footer-line"></div>


        <span>
            © 2026 Mysterious Case Files. All Rights Reserved.
        </span>


    </footer>


</form>



<!-- =========================================================
     CURRENT DATE SCRIPT
     ========================================================= -->

<script>

    function showCurrentDate() {

        var today = new Date();

        var options = {
            day: "2-digit",
            month: "short",
            year: "numeric"
        };

        document.getElementById("currentDate").textContent =
            today.toLocaleDateString("en-IN", options);

    }

    showCurrentDate();

</script>


</body>

</html>
