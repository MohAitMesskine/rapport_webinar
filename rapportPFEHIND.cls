\LoadClass[a4paper,12pt]{report}

%--------------------- Packages ------------------------

\RequirePackage{titlesec}
\RequirePackage{tocloft}
\RequirePackage[french]{babel}
\RequirePackage[utf8]{inputenc}
\RequirePackage[section]{placeins}
\RequirePackage[T1]{fontenc}
\RequirePackage{mathtools}
\RequirePackage{siunitx}
\RequirePackage{float}
\RequirePackage{graphicx}
\RequirePackage[justification=centering]{caption}
\RequirePackage{subcaption}
\RequirePackage{wallpaper}
\RequirePackage{nomencl}
\RequirePackage{fancyhdr}
\RequirePackage{url}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage[left=2.5cm,right=2.5cm,top=2cm,bottom=2cm]{geometry}
\RequirePackage{tikz}

\providecommand{\UE}{}
\providecommand{\titre}{}

\titleformat{\chapter}[display]
  {\normalfont\huge\bfseries}{\chaptertitlename\ \thechapter}{20pt}{\Huge}

\titleformat{\section}
  {\normalfont\Large\bfseries}{\thesection}{1em}{}

%-------------------- Informations sur le rapport ----------------------

\newcommand{\fairepagedegarde}{
   \AddToShipoutPictureBG*{%
        \begin{tikzpicture}[remember picture, overlay]
            \node[opacity=0.7, rotate=66] at ([xshift=0.6cm, yshift=3.55cm] current page.south east)
                {\includegraphics[scale=3]{logos/logo.png}};
        \end{tikzpicture}%
    }

\begin{titlepage}
\setlength{\parskip}{0pt}

    % ---- Logos haut ----
    \noindent
    \begin{minipage}[c]{0.45\textwidth}
      \includegraphics[width=16cm]{logo_fssm.png}
    \end{minipage}
    \hfill
    
    \vspace{0.5cm}

    % ---- Titre principal ----
    \begin{center}
        {\large \textbf{RAPPORT DE STAGE DE FIN D'ÉTUDES}} \\[3pt]
        {\normalsize En vue de l'obtention du diplôme Master :} \\[2pt]
        {\normalsize \textbf{Ingénierie des Systèmes d'Information (ISI)}}
    \end{center}

    \vspace{0.2cm}

    \begin{center}
        \rule{\textwidth}{0.5pt}
        \vspace{0.25cm}\\
        {\LARGE \textbf{CONTRIBUTION À LA CONCEPTION ET AU DÉVELOPPEMENT}}\\[4pt]
        {\LARGE \textbf{D'UNE APPLICATION DE GESTION DES WEBINAIRES}}
        \vspace{0.25cm}\\
        \rule{\textwidth}{0.5pt}
    \end{center}

    \vspace{0.3cm}

    % ---- Logo TamTam + Dates ----
    \begin{center}
        \includegraphics[width=5.5cm]{logos/tamtam-logo.png}\\[5pt]
        {\small \textit{Du 17 février au 17 Août 2026}}
    \end{center}

    \vspace{0.35cm}

    % ---- Encadrants / Réalisé par ----
    \noindent
    \begin{minipage}[t]{0.55\textwidth}
        \textbf{Encadré par :} \\[3pt]
        \hspace*{0.5cm}\textbf{Pr. Tarik Agouti} \\
        \hspace*{1cm}{\small \textit{Encadrante à la FSSM}} \\[3pt]
        \hspace*{0.5cm}\textbf{Mme. ELKHROF Leila} \\
        \hspace*{1cm}{\small \textit{Encadrante de Stage}}
    \end{minipage}
    \hfill
    \begin{minipage}[t]{0.40\textwidth}
        \textbf{Réalisé par :} \\[3pt]
        \hspace*{0.5cm}\textbf{Mohamed Ait Messkine}
    \end{minipage}

    \vspace{0.4cm}

    % ---- Jury ----
    \begin{center}
        {\small \textit{Soutenu le 26 juin 2026 devant le jury composé de :}}
    \end{center}
    \vspace{0.1cm}
    \begin{center}
        \begin{tabular}{ll}
            \textbf{Pr. ..........}     & Professeur, Département d’Informatique, FSSM \\[2pt]
            \textbf{Pr. ...... ....} & Professeur, Département d’Informatique, FSSM \\[2pt]
            \textbf{Pr. ..... ....}  & Professeur, Département d’Informatique, FSSM \\
        \end{tabular}
    \end{center}

    \vfill

    % ---- Année universitaire ----
    \begin{center}
        \textbf{Année universitaire 2025/2026}
    \end{center}

\end{titlepage}
}


\newcommand{\fairemarges}{
\makenomenclature
\pagestyle{fancy}
\fancyheadoffset{1cm}
\setlength{\headheight}{2cm}
\lhead{\includegraphics[scale=0.1]{logos/tamtam-logo.png}}
\rhead{\nouppercase{\leftmark}}
\rfoot{\thepage}
\cfoot{Rapport -- \textbf{\titre}}
\lfoot{\UE}
}

\newcommand{\tabledematieres}{
\tableofcontents
\newpage
}

\newcommand{\insererfigure}[4]{
\begin{figure}[ht]
\centering
\includegraphics[height=#2]{#1}
\caption{#3}
\label{fig:#4}
\end{figure}
}

