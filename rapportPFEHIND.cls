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

\vspace{0.6cm}
\noindent\rule{\linewidth}{1.5pt}

% ---- Texte institution ----
\begin{center}
  \vspace{0.3cm}
  {\large\bfseries RAPPORT DE STAGE DE FIN D'ÉTUDES}\\[0.4cm]
  {\normalsize En vue de l'obtention du diplôme Master :}\\[0.2cm]
  {\large\bfseries Ingénierie des Systèmes d'Information (ISI)}\\[0.2cm]
\end{center}

\noindent\rule{\linewidth}{1.5pt}

\vspace{0.5cm}

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
      {\fontsize{20}{26}\selectfont\bfseries
      Contribution à la conception et au développement d'une application de gestion des webinaires
      }
    \end{center}
  \end{mdframed}
\end{center}

\vspace{2.5cm}

% ---- Réalisé par / Encadrants / Jury ----
\noindent
\begin{minipage}[t]{0.50\linewidth}
  \textbf{Réalisé par :}\\[0.4cm]
  \hspace*{0.5cm}Mohamed Ait Messkine\\[0.6cm]
  \textbf{Encadré par (Entreprise) :}\\[0.4cm]
  \hspace*{0.5cm}Mme. ELKHROF Leila\\[0.6cm]
  \textbf{Encadré par (FSSM) :}\\[0.4cm]
  \hspace*{0.5cm}Pr. Tarik Agouti\\[0.2cm]
\end{minipage}
\hfill
\begin{minipage}[t]{0.45\linewidth}
  \textbf{Membres du jury :}\\[0.4cm]
  \hspace*{0.5cm}Pr. Tarik Agouti\\[0.2cm]
  \hspace*{0.5cm}Pr. Prénom Nom\\[0.2cm]
  \hspace*{0.5cm}Pr. Prénom Nom
\end{minipage}

\vfill

% ---- Année universitaire ----
\begin{center}
  {\large\bfseries Année Universitaire : 2025-2026}
\end{center}

\end{titlepage}
}


\newcommand{\fairemarges}{
\makenomenclature

%% ---- Style plain : pages de début de chapitre ----
\fancypagestyle{plain}{%
    \fancyhf{}%
    \fancyheadoffset{1cm}%
    \setlength{\headheight}{2cm}%
    \lhead{\includegraphics[scale=0.1]{logos/tamtam-logo.png}}%
    \rhead{\protect\color{black}\normalfont\nouppercase{\leftmark}}%
    \renewcommand{\headrulewidth}{0.4pt}%
    \renewcommand{\footrulewidth}{0.4pt}%
    \lfoot{\protect\color{black}\normalfont\small\textbf{Rapport de PFE}}%
    \cfoot{}%
    \rfoot{\protect\color{black}\normalfont\small\thepage}%
}

%% ---- Style fancy : toutes les autres pages ----
\pagestyle{fancy}
\fancyhf{}
\fancyheadoffset{1cm}
\setlength{\headheight}{2cm}
\lhead{\includegraphics[scale=0.1]{logos/tamtam-logo.png}}
\rhead{\protect\color{black}\normalfont\nouppercase{\leftmark}}
\renewcommand{\headrulewidth}{0.4pt}
\renewcommand{\footrulewidth}{0.4pt}
\lfoot{\protect\color{black}\normalfont\small\textbf{Rapport de PFE}}
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