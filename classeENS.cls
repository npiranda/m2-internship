\LoadClass[a4paper,12pt]{report} % Classe du document

%--------------------- Packages ------------------------

\RequirePackage[french]{babel} %Langue du document
\RequirePackage[utf8]{inputenc} %Caractères spéciaux
\RequirePackage[section]{placeins}%Pour placement de section
\RequirePackage[T1]{fontenc} %Quelques lettres qui sont pas inclus dans UTF-8
\RequirePackage{mathtools} %Paquet pour des équations et symboles mathématiques
\RequirePackage{siunitx} %Pour écrire avec la notation scientifique (Ex.: \num{2e+9})
\RequirePackage{float} %Pour placement d'images
\RequirePackage{graphicx} %Paquet pour insérer des images
\RequirePackage[justification=centering]{caption} %Pour les légendes centralisées
\RequirePackage{subcaption}
\RequirePackage{wallpaper}
\RequirePackage{nomencl}
%\makenomenclature
\RequirePackage{fancyhdr}
%\pagestyle{fancy}
%\fancyheadoffset{1cm}
%\setlength{\headheight}{2cm}
\RequirePackage{url}
\RequirePackage[hidelinks]{hyperref}%Paquet pour insérer légendes dans des sous-figures comme Figure 1a, 1b
\RequirePackage[left=2.5cm,right=2.5cm,top=2cm,bottom=3.5cm]{geometry} %Configuration de la page
\RequirePackage{changepage}
\usepackage{lastpage}
\RequirePackage{url}
\RequirePackage{pdftricks2}
\RequirePackage{enumitem}
\RequirePackage[retainorgcmds]{IEEEtrantools}
\numberwithin{equation}{section}
\RequirePackage{xcolor}
\RequirePackage{amsfonts}

%-------------------- Informations sur le rapport ----------------------

\newcommand{\departement}[1]{\renewcommand{\departement}{#1}}
\newcommand{\matiere}[1]{\renewcommand{\matiere}{#1}}
\newcommand{\motif}[1]{\renewcommand{\motif}{#1}}
\newcommand{\titre}[1]{\renewcommand{\titre}{#1}}
\newcommand{\enseignant}[1]{\renewcommand{\enseignant}{#1}}
\newcommand{\eleves}[1]{\renewcommand{\eleves}{#1}}
\newcommand{\tuteurpcp}[1]{\renewcommand{\tuteurpcp}{#1}}
\newcommand{\fairemarges}{
\makenomenclature
\pagestyle{fancy}
\fancyheadoffset{1cm}
\setlength{\headheight}{2cm}
\lhead{\includegraphics[scale=0.035]{logos/LOGO UNIV-FC_COULEUR.png}} %Affichage de l'image au top de la page
\rhead{\includegraphics[scale=0.15]{logos/Jaeger-LeCoultre-logo.png}}
\rfoot{\thepage~sur~\pageref{LastPage}}
\cfoot{\titre}
\lfoot{\eleves}
}

\newcommand{\fairepagedegarde}{
\begin{titlepage}
\changepage{2cm}%amount added to textheight
           {}%amount added to textwidth
           {}%amount added to evensidemargin
           {}%amount added to oddsidemargin
           {}%amount added to columnsep
           {-2cm}%amount added to topmargin
           {}%amount added to headheight
           {}%amount added to headsep
           {}%amount added to footskip

\setlength{\wpYoffset}{-8cm}    
	\flushleft
	\includegraphics[width=0.27\textwidth]{logos/LOGO UNIV-FC_COULEUR.png} %Insertion du logo
	\hfill
	\includegraphics[width=0.37\textwidth]{logos/Jaeger-LeCoultre-logo.png}\par\vspace{1cm}
	\centering %Centraliser le contenu
	{\scshape\LARGE Université de Franche-Comté \par} %Nom de l'université
	\vspace{1.5cm}%Espace de 1,5cm
	{\scshape\Large \departement \\ \matiere \\ \motif\par} %sous-titre
	\vspace{1cm}%Espace de 1cm
    \rule{\linewidth}{0.2 mm} \\[0.4 cm]
	{\huge\bfseries \titre \par} \
    \rule{\linewidth}{0.2 mm} \\[1.5 cm]
	\vspace{3cm}%Espace de 3cm
    
	\begin{minipage}{0.4\textwidth} %Minipage pour faire deux colonnes
		\begin{flushleft} \large %Envoyer à gauche
		\emph{\textbf{Étudiant :}}\\ %Pour le titre au dessus des noms à gauche
        \eleves\\ %Remplacer pour chacun
		\end{flushleft}
	\end{minipage}
	~
	\begin{minipage}{0.5\textwidth}
		\begin{flushright} \large
		\emph{\textbf{Tuteur universitaire :}} \\
		 \enseignant \\
		 \vspace{0.5cm}
		\emph{\textbf{Maître de stage :}}\\
		 \tuteurpcp 
		\end{flushright}
	\end{minipage}\\[1cm]
    
	\vfill
	{\large \today\par} %Affichage de la date

\end{titlepage}
}

\newcommand{\tabledematieres}{
\tableofcontents
%\newpage
}

\newcommand{\tabledefigure}{
\listoffigures
\newpage}

\newcommand{\tabledetableau}{
\listoftables
\newpage}

\newcommand{\insererfigure}[4]{
\begin{figure}[ht]
\centering
\includegraphics[height=#2]{#1}
\caption{#3}
\label{fig: #4}
\end{figure}
}
\captionsetup{font=footnotesize,labelfont=small}