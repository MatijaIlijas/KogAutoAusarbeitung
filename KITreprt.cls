\NeedsTeXFormat{LaTeX2e}										% We do need LaTeX2e
\ProvidesClass{KITreprt}
\LoadClass[a4paper,twoside,10pt, DIV=12]{scrreprt} % scrartcl


% Am Ende die Dokumentklassen: scrartcl: für kleine bis mittlere Dokumente,
% scrreprt: für grosse Dokumente, scrbook: für Bücher

%\usepackage{setspace} % für die Titelseite

\usepackage[raiselinks=true,
bookmarks=true,
bookmarksopenlevel=1,
bookmarksopen=true,
bookmarksnumbered=true,
hyperindex=true,
plainpages=false,
pdfpagelabels=true,
pdfborder={0 0 0.5},
colorlinks=false,						
linkbordercolor={0 0.61 0.50},   
citebordercolor={0 0.61 0.50}]{hyperref}  %{0.57 0.74 0.57}


\ProcessOptions\relax

\RequirePackage{babel}    %Trennungen, Schriftsatz; Neue deutsche Rechtschreibung
\usepackage[T1]{fontenc}       %Umlaute, Sonderzeichen...

\usepackage[utf8x]{inputenc}
\usepackage{graphicx}   
\usepackage{grffile} %The package extends the file name processing of package graphics to sup- port a larger range of file names.
\usepackage{amsmath}            
\usepackage{amssymb}
\usepackage{amsthm}
\usepackage{color}
\usepackage{subfigure}
\usepackage{bm}  %bold and cursive letters
\usepackage{bbm} %hollow letters -- for homogeneous coordinates
\usepackage{tikz}
\usepackage{eso-pic}
\usepackage{booktabs}

\usepackage[scaled=0.92]{helvet} % Different fonts
\usepackage{courier}
\usepackage{mathptmx}


\usepackage{listings}          % Paket um Quellcode darzustellen
\usepackage{lastpage}          % Spezielles Paket um die Seiten zu zählen

%\usepackage{wallpaper}  % Für den Hintergrund der Titelseite


\usepackage[automark]{scrpage2}          

\usepackage{setspace}
%\onehalfspacing	      %1.5 Zeilenabstand; 1 = \singlespacing; 2 = \doublespacing
%\setlength{\parindent}{1em}     % 1em = Grösse, die ein grosses M der aktuellen Schrift





\definecolor{gray}{rgb}{0.5,0.5,0.5}





\lstloadlanguages{C++, bash,TeX,Python}
\lstset{
language={[LaTeX]TeX},
morekeywords={{\gqq},{includegraphics}}
}

\lstset{%
language=C++,
morekeywords={includegraphics,citet,citep},
showstringspaces=false,
basicstyle=\ttfamily\small,
keywordstyle=\color{blue},
commentstyle=\color{gray},
identifierstyle=\color{black},
stringstyle=\color{red},
captionpos=b,
frame=single,
frameround=tftf,
framesep=0.5cm,
xleftmargin=0.5cm,
xrightmargin=0.5cm,
rulecolor=\color{gray},float=htb,
breaklines=true,
%escapechar=\% %Enter latex commands in listing
}%


\newcommand{\termpaper}{\iflanguage{english}{Term Paper}{Seminararbeit}}
\newcommand{\mastersthesis}{\iflanguage{english}{Master's Thesis}{Masterarbeit}}
\newcommand{\bachelorsthesis}{\iflanguage{english}{Bachelors's Thesis}{Bachelorarbeit}}
\newcommand{\protocol}{\iflanguage{english}{Protocol}{Protokoll}}
\newcommand{\studienarbeit}{\iflanguage{english}{Student Research Project}{Studienarbeit}}
\newcommand{\diplomarbeit}{\iflanguage{english}{Diploma Thesis}{Diplomarbeit}}


\newcommand{\mytitle} 
{\textcolor{red} {Please redefine the \texttt{mytitle} macro \\ \texttt{\Large\textbackslash renewcommand\{\textbackslash mytitle\}\{\dots\}}}}
\newcommand{\mythesis}
{\textcolor{red} {\small Please redefine the \texttt{mythesis} macro, \\ e.g., \texttt{\textbackslash renewcommand\{\textbackslash mythesis\}\{\textbackslash termpaper\}},\\ options: \texttt{\textbackslash mastersthesis, \textbackslash bachelorsthesis, \textbackslash studienarbeit, \textbackslash diplomarbeit}} }


%{\textcolor{red} {\large Please define the \texttt{mythesis} macro:  \texttt{ \textbackslash renewcommand\{\textbackslash mythesis\}\{\dots\}}
%\\ predefined macros are: \textbackslash termpaper, \textbackslash mastersthesis, \textbackslash bachelorsthesis, \textbackslash studienarbeit,
%\textbackslash dioplomarbeit 
%}}
\newcommand{\timestart}
{\textcolor{red} {\small Please redefine the \texttt{timestart} macro: \texttt{ \textbackslash renewcommand\{\textbackslash timestart\}\{\dots\}}}}
\newcommand{\timeend}
{\textcolor{red} {\small Please redefine the \texttt{timeend} macro:  \texttt{ \textbackslash renewcommand\{\textbackslash timeend\}\{\dots\}}}}
\newcommand{\myname}
 {\textcolor{red} {\large Please redefine the \texttt{myname} macro:  \texttt{ \textbackslash newcommand\{\textbackslash myname\}\{\dots\}}}}
\newcommand{\myshorttitle}
{\textcolor{red}{\small Please redefine the \texttt{myshorttitle} macro (may be empty):  \texttt{ \textbackslash newcommand\{\textbackslash myshorttitle\}\{\dots\}}}}
\newcommand{\noadvisors}
{\textcolor{red}{\small You can specify the advisors and/or reviewers with \\ 
\textbackslash advisor, \textbackslash advisortwo, \textbackslash reviewer, \textbackslash reviewertwo. \\
If none needed:  \texttt{ \textbackslash newcommand\{\textbackslash noadvisors\}\{\}}}}



%Minted ist nett nur es kann kein line break und keine abgrundeten ecken.
%\newminted[KITcpp]{cpp}{fontfamily=helvetica, frame=single, linenos,mathescape,numberblanklines=false q}

\newcommand{\gqq}[1]{\glqq{}#1\grqq{}}
\newcommand{\gq}[1]{\glq{}#1\grq{}}

\newcommand{\myinstitute}{\iflanguage{english}{Institute for Anthropomatics}{Institut f\"ur Anthropomatik} (IFA)\\ Humanoids and Intelligence Systems Laboratories (HIS)} %\\Prof. Dr.-Ing. Rüdiger Dillmann}


\ihead{}%[\mytitle]{\myname}
\rehead{ \leftmark}%\chaptername~\thechapter}
\lohead{ \rightmark} 
\ohead{\sf \iflanguage{english}{Page}{Seite} \pagemark}
\ifoot{}%irgendwas}
\cfoot{\mytitle~---~\myshorttitle}%Letzte \"Anderung: \today}
\ofoot{}%Seitenanzahl: \pageref{LastPage}}
\setheadsepline{0.5pt} %Dicke der Trennlinie Kopfzeile - Text
\setheadtopline{1pt}
\setfootsepline{0.5pt} %Dicke der Trennlinie Fusszeile - Text

% Left/Right mark cannot be influenced directly:
\newcommand{\sectionname} {\iflanguage{english}{Section}{Abschnitt}}
\renewcommand{\chaptermark}[1]{\markboth{\textsf{\chaptername\ \thechapter.\ #1}}{}}
\renewcommand{\sectionmark}[1]{\markright{\textsf{\sectionname{} \thesection:~#1}}{}}



\pagestyle{scrheadings} %gemachte Einstellungen anwenden
\renewcommand{\chapterpagestyle}{scrheadings}

\usepackage[round]{natbib}


%\bibliographystyle{dinat}

%\bibliographystyle{abbrvdin}%dinat



\renewcommand{\maketitle}{
\begin{titlepage}
\thispagestyle{empty}
\definecolor{cffffff}{RGB}{255,255,255}
\definecolor{c231f20}{RGB}{35,31,32}
\definecolor{c00a990}{RGB}{0,169,144}


\AddToShipoutPictureBG*{


\begin{tikzpicture}[y=0.80pt, x=0.8pt,yscale=-1, inner sep=0pt, outer sep=0pt]
  \path[miter limit=4.00,line width=0.570pt,rounded corners=0.0000cm]
    (0.0096,0.0020) rectangle (744.0891,1052.3536);
  \path[xscale=0.985,yscale=1.015,fill=black] (62.491817,123.01997) node[above
    right] (text3239) {\footnotesize\iflanguage{english}{Karlsruhe Institute of Technology}{Karlsruher Institut für Technologie}        };
  \path[fill=black] (65.175926,1034.4189) node[above right] (text5152-5) {
  \iflanguage{english}{  \scriptsize KIT – University of the State of Baden-Wuerttemberg and National Research Center of the Helmholtz Association}
  {  \scriptsize KIT – Universität des Landes Baden-Württemberg und nationales Forschungszentrum in
    der Helmholtz-Gesellschaft          }  \hspace{1cm} \large{\textbf{www.kit.edu}}   };
  \path[draw=black,line join=miter,line cap=butt,miter limit=4.00,line
    width=0.570pt] (28.7710,39.6666) -- (648.1273,39.9866) .. controls
    (656.3774,39.9909) and (663.0021,46.6285) .. (663.0192,54.8786) --
    (663.0012,1011.3115) -- (663.0012,1011.3115) -- (44.0639,1011.2625) ..
    controls (35.8138,1011.2618) and (29.1755,1004.6207) .. (29.1720,996.3706) --
    cycle;
  \begin{scope}[cm={{0.75021666,0.0,0.0,-0.75021666,(62.419386,112.66122)}}]
  \end{scope}
  \path[fill=c231f20,even odd rule] (154.2286,111.5159) -- (138.1860,111.5159) --
    (119.1185,91.0439) -- (119.1185,79.3225) -- (137.5918,58.9054) --
    (154.1206,58.9054) -- (132.8385,85.3723) -- (154.2287,111.5159) --
    cycle(156.6593,58.9587) -- (171.0815,58.9587) -- (171.0815,111.5159) --
    (156.6593,111.5159) -- (156.6593,58.9587) -- cycle(209.2705,58.9587) --
    (174.5385,58.9587) -- (174.5385,70.7881) -- (184.6934,70.7881) --
    (184.6934,111.5706) -- (199.1156,111.5706) -- (199.1156,70.7881) --
    (209.2705,70.7881) -- (209.2705,58.9587);
  \path[fill=c231f20,nonzero rule] (115.6615,97.5158) -- (115.6615,97.5158);
  \path[fill=c231f20,nonzero rule] (115.6615,97.5158) -- (115.6615,97.5158);
  \path[fill=c00a990,even odd rule] (74.5556,78.1890) .. controls
    (71.8008,81.5379) and (69.4242,85.2110) .. (67.5876,89.1534) --
    (115.6615,111.5159) -- (74.5556,78.1890);
  \path[fill=c00a990,even odd rule] (115.6615,111.5159) -- (93.2450,63.8201) ..
    controls (89.2479,65.6574) and (85.5748,67.9253) .. (82.2259,70.6268) --
    (115.6615,111.5159);
  \path[fill=c231f20,even odd rule] (115.6615,111.5159) -- (115.7155,58.9587) ..
    controls (115.5535,58.9587) and (115.4454,58.9587) .. (115.2834,58.9587) ..
    controls (111.0162,58.9587) and (106.8570,59.4996) .. (102.8598,60.4711) --
    (115.6615,111.5159);
  \path[fill=c231f20,even odd rule] (115.6615,97.5158) -- (115.6615,97.5158);
  \path[fill=c231f20,even odd rule] (115.6615,97.5158) -- (115.6615,97.5158);
  \path[fill=c00a990,even odd rule] (64.1306,98.6609) .. controls
    (63.0503,102.7661) and (62.5102,107.0866) .. (62.4561,111.5159) --
    (115.6615,111.5159) -- (64.1306,98.6609);
  \begin{scope}[cm={{1.2794935,0.0,0.0,-1.2794935,(-10.107091,1063.9579)}}]
  \end{scope}
  \begin{scope}[cm={{1.2794935,0.0,0.0,-1.2794935,(-10.107091,1063.9579)}}]
      \begin{scope}[cm={{0.24,0.0,0.0,0.24,(370.967,34.00002)}}]
      \end{scope}
  \end{scope}
  \begin{scope}[cm={{1.2794935,0.0,0.0,-1.2794935,(-10.107091,1063.9579)}}]
      \begin{scope}[cm={{0.24,0.0,0.0,0.24,(475.1687,34.00002)}}]
      \end{scope}
  \end{scope}
  \begin{scope}[cm={{1.2794935,0.0,0.0,-1.2794935,(-10.107091,1063.9579)}}]
      \begin{scope}[cm={{0.24,0.0,0.0,0.24,(296.6399,797.44)}}]
      \end{scope}
  \end{scope}
  \begin{scope}[cm={{1.2794935,0.0,0.0,-1.2794935,(-10.107091,1063.9579)}}]
      \begin{scope}[cm={{0.24,0.0,0.0,0.24,(56.63989,762.88)}}]
      \end{scope}
      \begin{scope}[cm={{0.24,0.0,0.0,0.24,(56.63989,747.28)}}]
      \end{scope}
      \begin{scope}[cm={{0.24,0.0,0.0,0.24,(56.63989,731.68)}}]
      \end{scope}
      \begin{scope}[cm={{0.24,0.0,0.0,0.24,(56.63989,716.32)}}]
      \end{scope}
      \begin{scope}[cm={{0.24,0.0,0.0,0.24,(56.63989,700.72)}}]
      \end{scope}
      \begin{scope}[cm={{0.24,0.0,0.0,0.24,(56.63989,685.36)}}]
      \end{scope}
      \begin{scope}[cm={{0.24,0.0,0.0,0.24,(56.63989,669.76)}}]
      \end{scope}
  \end{scope}
  \path[miter limit=4.00,line width=0.570pt,rounded corners=0.0000cm]
    (2.4762,25.6666) rectangle (91.6188,61.8891);

\end{tikzpicture}
}


%\begin{tikzpicture}[y=0.80pt, x=0.8pt,yscale=-1, inner sep=0pt, outer sep=0pt]
%  \path[miter limit=4.00,line width=0.570pt,rounded corners=0.0000cm]
%    (-0.5055,13.2304) rectangle (744.0457,1065.6179);
%  \path[xscale=0.985,yscale=1.015,fill=black] (62.491817,109.22409) node[above
%    right] (text3239) {\footnotesize\iflanguage{english}{Karlsruhe Institute of Technology}{Karlsruher Institut für Technologie}     };
%  \path[fill=black] (65.175926,1020.4189) node[above right] (text5152-5) {
%  \iflanguage{english}{  \scriptsize KIT – University of the State of Baden-Wuerttemberg and National Research Center of the Helmholtz Association}
%  {  \scriptsize KIT – Universität des Landes Baden-Württemberg und nationales Forschungszentrum in
%    der Helmholtz-Gesellschaft          }  \hspace{1cm} \large{\textbf{www.kit.edu}}   };
%%    singlepage
%%    \path[draw=black,line join=miter,line cap=butt,miter limit=4.00,line
%%    width=0.570pt] (28.7710,25.6666) -- (700.1273,25.9866) .. controls
%%    (708.3774,25.9905) and (715.0194,32.6284) .. (715.0192,40.8786) --
%%    (715.0012,997.3115) -- (715.0012,997.3115) -- (44.0639,997.2624) .. controls
%%    (35.8138,997.2618) and (29.1755,990.6206) .. (29.1720,982.3705) -- cycle;
%%     
%	%twopage
%  \path[draw=black,line join=miter,line cap=butt,miter limit=4.00,line
%    width=0.570pt] (28.7710,41.6666) -- (648.1273,41.9866) .. controls
%    (656.3774,41.9909) and (663.0194,48.6284) .. (663.0192,56.8786) --
%    (663.0012,1013.3115) -- (663.0012,1013.3115) -- (44.0639,1013.2625) ..
%    controls (35.8138,1013.2618) and (29.1755,1006.6207) .. (29.1720,998.3706) --
%    cycle;
%    
%  \begin{scope}[cm={{0.75021666,0.0,0.0,-0.75021666,(62.419386,112.66122)}}]
%  \end{scope}
%  \path[fill=c231f20,even odd rule] (154.2286,97.5158) -- (138.1860,97.5158) --
%    (119.1185,77.0439) -- (119.1185,65.3225) -- (137.5918,44.9054) --
%    (154.1206,44.9054) -- (132.8385,71.3723) -- (154.2287,97.5158) --
%    cycle(156.6593,44.9587) -- (171.0815,44.9587) -- (171.0815,97.5158) --
%    (156.6593,97.5158) -- (156.6593,44.9587) -- cycle(209.2705,44.9587) --
%    (174.5385,44.9587) -- (174.5385,56.7881) -- (184.6934,56.7881) --
%    (184.6934,97.5706) -- (199.1156,97.5706) -- (199.1156,56.7881) --
%    (209.2705,56.7881) -- (209.2705,44.9587);
%  \path[fill=c231f20,nonzero rule] (115.6615,97.5158) -- (115.6615,97.5158);
%  \path[fill=c231f20,nonzero rule] (115.6615,97.5158) -- (115.6615,97.5158);
%  \path[fill=c00a990,even odd rule] (74.5556,64.1890) .. controls
%    (71.8008,67.5379) and (69.4242,71.2110) .. (67.5876,75.1534) --
%    (115.6615,97.5158) -- (74.5556,64.1890);
%  \path[fill=c00a990,even odd rule] (115.6615,97.5158) -- (93.2450,49.8201) ..
%    controls (89.2479,51.6574) and (85.5748,53.9253) .. (82.2259,56.6268) --
%    (115.6615,97.5158);
%  \path[fill=c231f20,even odd rule] (115.6615,97.5158) -- (115.7155,44.9587) ..
%    controls (115.5535,44.9587) and (115.4454,44.9587) .. (115.2834,44.9587) ..
%    controls (111.0162,44.9587) and (106.8570,45.4996) .. (102.8598,46.4711) --
%    (115.6615,97.5158);
%  \path[fill=c231f20,even odd rule] (115.6615,97.5158) -- (115.6615,97.5158);
%  \path[fill=c231f20,even odd rule] (115.6615,97.5158) -- (115.6615,97.5158);
%  \path[fill=c00a990,even odd rule] (64.1306,84.6609) .. controls
%    (63.0503,88.7661) and (62.5102,93.0866) .. (62.4561,97.5158) --
%    (115.6615,97.5158) -- (64.1306,84.6609);
%  \begin{scope}[cm={{1.2794935,0.0,0.0,-1.2794935,(-10.107091,1063.9579)}}]
%  \end{scope}
%  \begin{scope}[cm={{1.2794935,0.0,0.0,-1.2794935,(-10.107091,1063.9579)}}]
%      \begin{scope}[cm={{0.24,0.0,0.0,0.24,(370.967,34.00002)}}]
%      \end{scope}
%  \end{scope}
%  \begin{scope}[cm={{1.2794935,0.0,0.0,-1.2794935,(-10.107091,1063.9579)}}]
%      \begin{scope}[cm={{0.24,0.0,0.0,0.24,(475.1687,34.00002)}}]
%      \end{scope}
%  \end{scope}
%  \begin{scope}[cm={{1.2794935,0.0,0.0,-1.2794935,(-10.107091,1063.9579)}}]
%      \begin{scope}[cm={{0.24,0.0,0.0,0.24,(296.6399,797.44)}}]
%      \end{scope}
%  \end{scope}
%  \begin{scope}[cm={{1.2794935,0.0,0.0,-1.2794935,(-10.107091,1063.9579)}}]
%      \begin{scope}[cm={{0.24,0.0,0.0,0.24,(56.63989,762.88)}}]
%      \end{scope}
%      \begin{scope}[cm={{0.24,0.0,0.0,0.24,(56.63989,747.28)}}]
%      \end{scope}
%      \begin{scope}[cm={{0.24,0.0,0.0,0.24,(56.63989,731.68)}}]
%      \end{scope}
%      \begin{scope}[cm={{0.24,0.0,0.0,0.24,(56.63989,716.32)}}]
%      \end{scope}
%      \begin{scope}[cm={{0.24,0.0,0.0,0.24,(56.63989,700.72)}}]
%      \end{scope}
%      \begin{scope}[cm={{0.24,0.0,0.0,0.24,(56.63989,685.36)}}]
%      \end{scope}
%      \begin{scope}[cm={{0.24,0.0,0.0,0.24,(56.63989,669.76)}}]
%      \end{scope}
%  \end{scope}
%  \path[miter limit=4.00,line width=0.570pt,rounded corners=0.0000cm]
%    (2.4762,25.6666) rectangle (91.6188,61.8891);
%\end{tikzpicture}
%}

\sffamily
\bfseries
%\ThisCenterWallPaper{1.0}{images/titlepage}
~\\[3cm]
\begin{center}
\Huge
\begin{spacing}{1.3}
\mytitle \\
\Large
\myshorttitle
\end{spacing}
~\\[0cm]
\Large 
\mythesis
\\
\iflanguage{english}{of}{von} \\[0.5cm]
\Huge 
 \myname
 \\[1cm]
\large
\iflanguage{english}{At the Department of Informatics}{An der Fakult\"at f\"ur Informatik} \\
\myinstitute \\[4cm]
 \ifundefinedorrelax{reviewer}{
  \ifundefinedorrelax{reviewertwo}{
  \ifundefinedorrelax{advisor}{
  \ifundefinedorrelax{advisortwo}{ \noadvisors } {}
   } {}
   } {}
   } {}

  
\begin{tabular}[ht]{p{0.4\textwidth}p{0.5\textwidth}}
	Referees: & Prof. Dr.-Ing. Rüdiger Dillmann\\
   \ifundefinedorrelax{reviewer}{} 
  { \iflanguage{english}{Reviewer}{Erstgutachter}:  & \reviewer\\}
  \ifundefinedorrelax{reviewertwo}{} 
  { \iflanguage{english}{Second reviewer}{Zweitgutachter}:   & \reviewertwo\\}
  \ifundefinedorrelax{advisor}{}
  {\iflanguage{english}{Advisor}{Betreuender Mitarbeiter}: &  \advisor\\}
  \ifundefinedorrelax{advisortwo}{}
  {\iflanguage{english}{Second advisor}{Zweiter betreuender Mitarbeiter}:   & \advisortwo\\}
\end{tabular}\\[2cm]
\large 
\vfill
\iflanguage{english}{Duration}{Bearbeitungszeit}:
\timestart \hspace*{0.25cm} -- \hspace*{0.25cm} \timeend
\end{center}
\end{titlepage}
}



