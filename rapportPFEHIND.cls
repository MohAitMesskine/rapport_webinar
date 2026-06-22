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
\RequirePackage{xcolor}
\RequirePackage{fancyhdr}
\RequirePackage{url}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage[left=2.5cm,right=2.5cm,top=2cm,bottom=3cm]{geometry}
\RequirePackage{tikz}
\usetikzlibrary{calc}
\RequirePackage{mdframed}
\RequirePackage{tabularx}

\definecolor{couleurligne}{RGB}{35,100,170}

\providecommand{\UE}{}
\providecommand{\titre}{}

\titleformat{\chapter}[display]
  {\normalfont\huge\bfseries}{\chaptertitlename\ \thechapter}{20pt}{\Huge}

\titleformat{\section}
  {\normalfont\Large\bfseries}{\thesection}{1em}{}

%-------------------- Informations sur le rapport ----------------------

\newcommand{\fairepagedegarde}{
\begin{titlepage}
\thispagestyle{empty}
\setlength{\parskip}{0pt}

% ---- Logos haut ----
\noindent
\begin{minipage}[c]{0.45\linewidth}
  \begin{flushleft}
    \hspace{0.4cm}%
    \includegraphics[width=6cm,keepaspectratio]{logos/tamtam-logo.png}%
  \end{flushleft}
\end{minipage}
\hfill
\begin{minipage}[c]{0.45\linewidth}
  \begin{flushright}
    \includegraphics[width=7cm,keepaspectratio]{logo_fssm.png}%
  \end{flushright}
\end{minipage}

\vspace{1.6cm}

% ---- Texte institution (taille augmentée, sans lignes) ----
\begin{center}
  {\fontsize{22}{28}\selectfont\bfseries RAPPORT DE STAGE DE FIN D'ÉTUDES}\\[0.7cm]
  {\fontsize{16}{20}\selectfont En vue de l'obtention du diplôme Master :}\\[0.4cm]
  {\fontsize{19}{24}\selectfont\bfseries Ingénierie des Systèmes d'Information (ISI)}\\[1.0cm]
\end{center}

% ---- Titre encadré ----
\begin{center}
  \begin{mdframed}[
    linecolor=couleurligne,
    linewidth=1.5pt,
    innertopmargin=14pt,
    innerbottommargin=14pt,
    innerleftmargin=14pt,
    innerrightmargin=14pt,
    roundcorner=4pt
  ]
    \begin{center}
      {\fontsize{23}{29}\selectfont\bfseries
      Contribution à la conception et au développement d'une application de gestion des webinaires
      }
    \end{center}
  \end{mdframed}
\end{center}

\vspace{0.6cm}

% ---- Réalisé par ----
\begin{center}
  {\large\bfseries Réalisé par :}\\[0.3cm]
  {\large Mohamed Ait Messkine}
\end{center}

\vspace{0.3cm}

% ---- Encadré par ----
\begin{center}
  {\large\bfseries Encadré par :}\\[0.3cm]
  {\large
  \begin{tabular}{l@{\hspace{1cm}}l}
    Pr. Tarik Agouti    & \textit{Professeur, Département d'Informatique, FSSM}\\[0.2cm]
    Mme. ELKHROF Leila  & \textit{Encadrante, Tamtam International}\\
  \end{tabular}}
\end{center}

\vspace{0.3cm}

% ---- Jury ----
\begin{center}
  {\large\bfseries Soutenu le 29 Juin 2026 devant la commission d'examen}\\[0.3cm]
  {\large
  \begin{tabular}{l@{\hspace{1cm}}l}
    Pr. Tarik Agouti & \textit{Professeur, Département d'Informatique, FSSM}\\[0.2cm]
    Pr. Issam Qaffou   & \textit{Professeur, Département d'Informatique, FSSM}\\[0.2cm]
    Pr. Hiba Asri   & \textit{Professeure, Département d'Informatique, FSSM}\\[0.2cm]
  \end{tabular}}
\end{center}

\null\vfill
\vspace{1cm}
% ---- Année universitaire ----
\begin{center}
  {\large\bfseries Année Universitaire : 2025-2026}
\end{center}
% \vspace{1cm}

\end{titlepage}
}


\newcommand{\fairemarges}{
\makenomenclature

%% ---- Style plain : pages de début de chapitre ----
\fancypagestyle{plain}{%
    \fancyhf{}%
    \fancyheadoffset{0pt}%
    \setlength{\headheight}{1.2cm}%
    \lhead{\protect\color{black}\normalfont\small\textbf{Rapport de Stage de Fin d'Études}}%
    \rhead{\protect\color{black}\normalfont\nouppercase{\leftmark}}%
    \renewcommand{\headrulewidth}{0.4pt}%
    \renewcommand{\footrulewidth}{0.4pt}%
    \lfoot{\protect\color{black}\normalfont\small\textbf{Master ISI --- FSSM}}%
    \cfoot{}%
    \rfoot{\protect\color{black}\normalfont\small\thepage}%
}

%% ---- Style fancy : toutes les autres pages ----
\pagestyle{fancy}
\fancyhf{}
\fancyheadoffset{0pt}
\setlength{\headheight}{1.2cm}
\lhead{\protect\color{black}\normalfont\small\textbf{Rapport de Stage de Fin d'Études}}
\rhead{\protect\color{black}\normalfont\nouppercase{\leftmark}}
\renewcommand{\headrulewidth}{0.4pt}
\renewcommand{\footrulewidth}{0.4pt}
\lfoot{\protect\color{black}\normalfont\small\textbf{Master ISI --- FSSM}}
\cfoot{}
\rfoot{\protect\color{black}\normalfont\small\thepage}
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