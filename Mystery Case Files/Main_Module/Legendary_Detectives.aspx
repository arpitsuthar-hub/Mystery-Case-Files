
<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Legendary_Detectives.aspx.cs"
    Inherits="Mystery_Case_Files.Legendary_Detectives" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <title>Legendary Detectives | Mysterious Case Files</title>

    <!-- GOOGLE FONTS -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="anonymous" />

    <link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@400;500;600;700&family=Playfair+Display:ital,wght@0,400;0,500;0,600;0,700;1,400&family=Poppins:wght@300;400;500;600&display=swap"
        rel="stylesheet" />

    <!-- FONT AWESOME -->
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />

    <!-- EXTERNAL CSS -->
    <link rel="stylesheet" href="../CSS/Legendary_Detectives.css" />

</head>

<body>

    <form id="form1" runat="server">

        <!-- ==================================================
             HEADER
        =================================================== -->

        <header class="legend-header">

            <div class="header-top">

                <a href="Main_Dashboard.aspx" class="back-home">
                    <i class="fa-solid fa-arrow-left"></i>
                    BACK TO HOME
                </a>

                <div class="header-logo">
                    <span>MYSTERIOUS CASE FILES</span>
                </div>

                <div class="header-date">
                    <i class="fa-solid fa-folder-open"></i>
                    <span>LEGENDARY ARCHIVE</span>
                </div>

            </div>

            <div class="header-content">

                <span class="small-title">
                    <i class="fa-solid fa-user-secret"></i>
                    THE LEGENDS OF INVESTIGATION
                </span>

                <h1>
                    LEGENDARY <span>DETECTIVES</span>
                </h1>

                <div class="header-line"></div>

                <p>
                    Behind every mystery lies a hidden truth.
                    Discover the investigators whose intelligence,
                    courage and methods changed the history of investigation.
                </p>

            </div>

            <div class="header-bottom"></div>

        </header>


        <!-- ==================================================
             DETECTIVES SECTION
        =================================================== -->

        <main class="detectives-section">

            <!-- COUNTRY FILTER -->

            <div class="country-filter">

                <label for="ddlCountry">
                    <i class="fa-solid fa-globe"></i>
                    EXPLORE DETECTIVES BY COUNTRY
                </label>

                <select id="ddlCountry" name="ddlCountry">

                    <option value="all">ALL COUNTRIES</option>
                    <option value="india">INDIA</option>
                    <option value="usa">UNITED STATES</option>
                    <option value="uk">UNITED KINGDOM</option>
                    <option value="france">FRANCE</option>
                    <option value="japan">JAPAN</option>
                    <option value="germany">GERMANY</option>
                    <option value="italy">ITALY</option>
                    <option value="australia">AUSTRALIA</option>
                    <option value="canada">CANADA</option>
                    <option value="russia">RUSSIA</option>

                </select>

            </div>


            <!-- ==================================================
                 DETECTIVE GRID
            =================================================== -->

            <div class="detective-grid">


                <!-- ==========================================
                     DETECTIVE 1 - INDIA
                =========================================== -->

                <div class="detective-card" data-country="india">

                    <div class="detective-image">

                        <img src="../../Images/Detectives/K_F_Rustamji.png"
                            alt="K. F. Rustamji" />

                        <div class="image-overlay"></div>

                        <span class="detective-number">01</span>

                    </div>

                    <div class="detective-content">

                        <span class="detective-country">INDIA</span>

                        <h2>K. F. RUSTAMJI</h2>

                        <div class="card-line"></div>

                        <p class="detective-role">
                            INDIAN POLICE LEADER
                        </p>

                        <p>
                            K. F. Rustamji was a prominent Indian police
                            officer known for his contributions to policing
                            and internal security. He played an important
                            role in the development of India's Border
                            Security Force.
                        </p>

                    </div>

                </div>


                <!-- ==========================================
                     DETECTIVE 2 - UNITED STATES
                =========================================== -->

                <div class="detective-card" data-country="usa">

                    <div class="detective-image">

                        <img src="../../Images/Detectives/Allan_Pinkerton.png"
                            alt="Allan Pinkerton" />

                        <div class="image-overlay"></div>

                        <span class="detective-number">02</span>

                    </div>

                    <div class="detective-content">

                        <span class="detective-country">UNITED STATES</span>

                        <h2>ALLAN PINKERTON</h2>

                        <div class="card-line"></div>

                        <p class="detective-role">
                            PRIVATE DETECTIVE PIONEER
                        </p>

                        <p>
                            Allan Pinkerton founded the Pinkerton National
                            Detective Agency. He became a significant figure
                            in the history of private investigation and
                            organized detective work in the United States.
                        </p>

                    </div>

                </div>


                <!-- ==========================================
                     DETECTIVE 3 - UNITED KINGDOM
                =========================================== -->

                <div class="detective-card" data-country="uk">

                    <div class="detective-image">

                        <img src="../../Images/Detectives/Edward_Henry.png"
                            alt="Sir Edward Henry" />

                        <div class="image-overlay"></div>

                        <span class="detective-number">03</span>

                    </div>

                    <div class="detective-content">

                        <span class="detective-country">UNITED KINGDOM</span>

                        <h2>EDWARD HENRY</h2>

                        <div class="card-line"></div>

                        <p class="detective-role">
                            FINGERPRINT CLASSIFICATION PIONEER
                        </p>

                        <p>
                            Sir Edward Henry helped establish a systematic
                            fingerprint classification system that became
                            important for identifying individuals during
                            criminal investigations.
                        </p>

                    </div>

                </div>


                <!-- ==========================================
                     DETECTIVE 4 - FRANCE
                =========================================== -->

                <div class="detective-card" data-country="france">

                    <div class="detective-image">

                        <img src="../../Images/Detectives/Vidocq.png"
                            alt="Eugene Francois Vidocq" />

                        <div class="image-overlay"></div>

                        <span class="detective-number">04</span>

                    </div>

                    <div class="detective-content">

                        <span class="detective-country">FRANCE</span>

                        <h2>EUGÈNE-FRANÇOIS VIDOCQ</h2>

                        <div class="card-line"></div>

                        <p class="detective-role">
                            PIONEER OF DETECTIVE WORK
                        </p>

                        <p>
                            Vidocq was a French investigator whose work
                            influenced modern detective methods. His
                            investigations involved informants, surveillance
                            and criminal identification.
                        </p>

                    </div>

                </div>


                <!-- ==========================================
                     DETECTIVE 5 - JAPAN
                =========================================== -->

                <div class="detective-card" data-country="japan">

                    <div class="detective-image">

                        <img src="../../Images/Detectives/Seicho_Matsumoto.png"
                            alt="Seicho Matsumoto" />

                        <div class="image-overlay"></div>

                        <span class="detective-number">05</span>

                    </div>

                    <div class="detective-content">

                        <span class="detective-country">JAPAN</span>

                        <h2>SEICHO MATSUMOTO</h2>

                        <div class="card-line"></div>

                        <p class="detective-role">
                            CRIME FICTION AUTHOR
                        </p>

                        <p>
                            Seicho Matsumoto was a celebrated Japanese
                            crime novelist whose stories explored criminal
                            motives, investigative procedures and the
                            hidden details behind mysterious cases.
                        </p>

                    </div>

                </div>


                <!-- ==========================================
                     MYSTERY IMAGE 1
                =========================================== -->

                <div class="mystery-project-card">

                    <img src="../../Images/Detective_Room.jpeg"
                        alt="A dark detective investigation room filled with case files" />

                </div>


                <!-- ==========================================
                     DETECTIVE 6 - GERMANY
                =========================================== -->

                <div class="detective-card" data-country="germany">

                    <div class="detective-image">

                        <img src="../../Images/Detectives/Ernst_Gennat.png"
                            alt="Ernst Gennat" />

                        <div class="image-overlay"></div>

                        <span class="detective-number">06</span>

                    </div>

                    <div class="detective-content">

                        <span class="detective-country">GERMANY</span>

                        <h2>ERNST GENNAT</h2>

                        <div class="card-line"></div>

                        <p class="detective-role">
                            CRIMINAL INVESTIGATION PIONEER
                        </p>

                        <p>
                            Ernst Gennat was a German criminal police
                            official known for his work in Berlin and
                            his contributions to organized homicide
                            investigation.
                        </p>

                    </div>

                </div>


                <!-- ==========================================
                     DETECTIVE 7 - ITALY
                =========================================== -->

                <div class="detective-card" data-country="italy">

                    <div class="detective-image">

                        <img src="../../Images/Detectives/Giovanni_Falcone.png"
                            alt="Giovanni Falcone" />

                        <div class="image-overlay"></div>

                        <span class="detective-number">07</span>

                    </div>

                    <div class="detective-content">

                        <span class="detective-country">ITALY</span>

                        <h2>GIOVANNI FALCONE</h2>

                        <div class="card-line"></div>

                        <p class="detective-role">
                            ANTI-MAFIA MAGISTRATE
                        </p>

                        <p>
                            Giovanni Falcone was an Italian magistrate
                            renowned for investigating the Sicilian Mafia
                            and helping advance major organized-crime
                            prosecutions.
                        </p>

                    </div>

                </div>


                <!-- ==========================================
                     DETECTIVE 8 - AUSTRALIA
                =========================================== -->

                <div class="detective-card" data-country="australia">

                    <div class="detective-image">

                        <img src="../../Images/Detectives/Colin_Winchester.png"
                            alt="Colin Winchester" />

                        <div class="image-overlay"></div>

                        <span class="detective-number">08</span>

                    </div>

                    <div class="detective-content">

                        <span class="detective-country">AUSTRALIA</span>

                        <h2>COLIN WINCHESTER</h2>

                        <div class="card-line"></div>

                        <p class="detective-role">
                            AUSTRALIAN POLICE LEADER
                        </p>

                        <p>
                            Colin Winchester was an Australian police
                            officer who served as commissioner of the
                            Australian Capital Territory Police. His
                            murder became a major criminal investigation.
                        </p>

                    </div>

                </div>


                <!-- ==========================================
                     DETECTIVE 9 - CANADA
                =========================================== -->

                <div class="detective-card" data-country="canada">

                    <div class="detective-image">

                        <img src="../../Images/Detectives/John_Wilson_Murray.png"
                            alt="John Wilson Murray" />

                        <div class="image-overlay"></div>

                        <span class="detective-number">09</span>

                    </div>

                    <div class="detective-content">

                        <span class="detective-country">CANADA</span>

                        <h2>JOHN WILSON MURRAY</h2>

                        <div class="card-line"></div>

                        <p class="detective-role">
                            PROVINCIAL DETECTIVE
                        </p>

                        <p>
                            John Wilson Murray served as Ontario's first
                            full-time provincial detective and became
                            known for investigating serious crimes.
                        </p>

                    </div>

                </div>


                <!-- ==========================================
                     DETECTIVE 10 - RUSSIA
                =========================================== -->

                <div class="detective-card" data-country="russia">

                    <div class="detective-image">

                        <img src="../../Images/Detectives/Arkady_Koshko.png"
                            alt="Arkady Koshko" />

                        <div class="image-overlay"></div>

                        <span class="detective-number">10</span>

                    </div>

                    <div class="detective-content">

                        <span class="detective-country">RUSSIA</span>

                        <h2>ARKADY KOSHKO</h2>

                        <div class="card-line"></div>

                        <p class="detective-role">
                            CRIMINAL INVESTIGATION PIONEER
                        </p>

                        <p>
                            Arkady Koshko was a Russian police investigator
                            associated with criminal investigation and
                            forensic identification methods.
                        </p>

                    </div>

                </div>


                <!-- ==========================================
                     MYSTERY IMAGE 2
                =========================================== -->

                <div class="mystery-project-card">

                    <img src="../../Images/Detective_Table.jpeg"
                        alt="Detective examining evidence in a dark mystery room" />

                </div>


            </div>

        </main>


        <!-- ==================================================
             FOOTER
        =================================================== -->

        <footer class="legend-footer">

            <div class="footer-icon">
                <i class="fa-solid fa-magnifying-glass"></i>
            </div>

            <h3>MYSTERIOUS CASE FILES</h3>

            <p>
                Study the legends. Follow the clues. Find the truth.
            </p>

            <div class="footer-line"></div>

            <span>
                © 2026 Mysterious Case Files. All Rights Reserved.
            </span>

        </footer>

    </form>

</body>

</html>
