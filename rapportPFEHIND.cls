\LoadClass[a4paper,12pt]{report} % Classe du document

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
\RequirePackage[left=2.5cm,right=2.5cm,top=2cm,bottom=3.5cm]{geometry}
\RequirePackage{tikz} % FIX: était \usepackage{tikz} — doit être \RequirePackage dans un .cls

\providecommand{\UE}{}
\providecommand{\titre}{}

% Customize chapter titles
\titleformat{\chapter}[display]
  {\normalfont\huge\bfseries}{\chaptertitlename\ \thechapter}{20pt}{\Huge}

% Customize section titles
\titleformat{\section}
  {\normalfont\Large\bfseries}{\thesection}{1em}{}

%-------------------- Informations sur le rapport ----------------------

\newcommand{\fairepagedegarde}{
   \AddToShipoutPictureBG*{%
        \begin{tikzpicture}[remember picture, overlay]
            \node[opacity=0.7, rotate=66 ] at ([xshift=0.6cm, yshift=3.55cm] current page.south east) 
                {\includegraphics[scale=3]{logos/logo.png}};
        \end{tikzpicture}%
    }
    
\begin{titlepage}
    \begin{minipage}{0.5\textwidth}
        \includegraphics[width=6cm]{logos/fst-logo.png}
    \end{minipage}
    \hfill
    \begin{minipage}{0.3\textwidth}
        \centering
    \end{minipage}
    \hfill
    \begin{minipage}{0.2\textwidth}
        \centering
        \includegraphics[width=3.5cm]{logos/irisi-logo.png}
    \end{minipage}

    \vspace{1cm}

\begin{center}
    {\large \textbf{RAPPORT DE STAGE DE FIN D'ÉTUDES}} \\
    \vspace{0.3cm}
    {\large En vue de l'obtention du diplôme d'Ingénieur d'État :} \\
    {\large Ingénierie en Réseaux et Systèmes d'Information (IRISI)}
\end{center}

\begin{center}
    \rule{\textwidth}{0.5pt}
    \vspace{0.4cm}\\
    {\Huge \textbf{Contribution à la conception et au développement d'une application de gestion des événements}}
    \vspace{0.3cm}
    \rule{\textwidth}{0.5pt}
\end{center}
    \begin{center}
        \includegraphics[width=7cm]{logos/tamtam-logo.png}
        
        \vspace{0.5cm}
        Du 17 février au 17 Août 2025
    \end{center}

        \vspace{0.5cm}
    \noindent
\begin{minipage}{0.6\textwidth}
    \textbf{Encadré par :} \\
  \hspace*{1cm}   \textbf{Pr. AMIR Laila} \\ 
    \hspace*{2cm}
    Encadrante à la FSTG \\
  \hspace*{1cm}  \textbf{M. IDBRAIM Youssef} \\
     \hspace*{2cm}Encadrants de Stage 
    \hfill
    \\
\end{minipage}
    \begin{minipage}{0.60\textwidth}
        \textbf{Réalisé par :} \\
         \hspace*{2cm}\textbf{AIT TALEB Hind}
    \end{minipage}
 
    \begin{center}
        Soutenu le 24 juin 2025 devant le jury :
    \end{center}
    \begin{center}
        \begin{tabular}{ll}
            \textbf{Pr. AMIR Laila } & Professeur à la FST de Marrakech \\
            \textbf{Pr. KALOUN Soulaimane } & Professeur à la FST de Marrakech \\
            \textbf{Pr. BANOUAR Oumayma } & Professeur à la FST de Marrakech \\
        \end{tabular}
    \end{center}
    
    \vfill
        \vspace{0.5cm}
    \begin{center}
        Année universitaire 2024/2025
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
\cfoot{Rapport - \textbf{\titre}}
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
\label{fig: #4}
\end{figure}
}