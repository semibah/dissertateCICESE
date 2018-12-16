% -------------------------------------------------------------------
%  @LaTeX-class-file{
%     filename        = "dissertateCICESE.cls",
%     version         = "1.0",
%     date            = "13 Dec 2018",
%     codetable       = "ISO/ASCII",
%     keywords        = "LaTeX, Dissertate",
%     note            = "Based on 'DissertateUSU' by Tyson Barret,
%                        For support, email 'cesarvc@cicese.edu.mx',
%     docstring       = "Class for a dissertation at CICESE."
% --------------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{dissertateCICESE}[2018/12/03 v1.0 dissertateCICESE Class]
\LoadClass[11pt, oneside, letterpaper]{book}

%%%%%%%%%%%%%%%%%
%%   Options   %%
%%%%%%%%%%%%%%%%%
\RequirePackage{etoolbox}

%{{{ Line-spacing control
\RequirePackage{setspace}
\newcommand{\singlespaced}{\singlespacing}
\newcommand{\doublespaced}{\doublespacing}
\newcommand{\triplespaced}{\setstretch {2.6}}
%}}}

% Text layout.
\usepackage{ragged2e}
\RaggedRight
\RequirePackage{graphicx}
\usepackage{fixltx2e}
\usepackage{parskip}
\setlength{\parindent}{1cm}
\RequirePackage{lettrine}
\RequirePackage{setspace}
\RequirePackage{verbatim}
\usepackage{indentfirst}


% Fonts.
\RequirePackage{color}
\RequirePackage{xcolor}
\usepackage{hyperref}
\RequirePackage{url}
\RequirePackage{amssymb}
\RequirePackage{mathspec}
\AtBeginEnvironment{tabular}{\addfontfeature{RawFeature=+tnum}}
\widowpenalty=300
\clubpenalty=300
% \setromanfont[Numbers=OldStyle, Ligatures={Common, TeX}, Scale=1.0]{EB Garamond}
% \newfontfamily{\smallcaps}[RawFeature={+c2sc,+scmp}]{EB Garamond}
% \setsansfont[Scale=MatchLowercase, BoldFont={Lato Bold}]{Lato Regular}
% \setmonofont[Scale=MatchLowercase]{Source Code Pro}
\RequirePackage[labelfont={bf,small,singlespacing},
                textfont={small,singlespacing},
                justification={justified,RaggedRight},
                singlelinecheck=false,
                margin=0pt,
                figurewithin=chapter,
                tablewithin=chapter]{caption}
\RequirePackage{microtype}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%        Headings & Headers         %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{fancyhdr}
\RequirePackage[tiny, md, sc]{titlesec}
\setlength{\headheight}{15pt}
\RequirePackage{titling}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Page number in upper right corner %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\fancypagestyle{plain}{%
\fancyhf{} % clear all header and footer fields
\fancyhead[R]{\thepage} % except the right
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% LAYOUT: TABLE of CONTENTS -auto fill %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setcounter{tocdepth}{2}
\usepackage[titles]{tocloft}
\usepackage[titletoc]{appendix}
\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}
\renewcommand{\cftchapfont}{\normalsize \normalfont}
\renewcommand\contentsname{\fontsize{16pt}{18}\textbf{Table of Contents}}
\renewcommand\listfigurename{List of Figures}
\renewcommand\listtablename{List of Tables}
\renewcommand{\cftchapafterpnum}{\vspace{10pt}}
\newcommand{\hsp}{\hspace{20pt}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% LAYOUT: List of TABLES - auto fill %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%{{{ List of Tables
% LoT should be single-spaced within entries and double-spaced between entries
\renewcommand*{\listoftables}{
    \singlespaced
    % \vskip0pt
    \chapter*{ \begin{raggedright} \fontsize{16pt}{18}\textbf{List of Tables}  \end{raggedright}}
    \addcontentsline{toc}{section}{List of Tables}
    % \addcontentsline{toc}{chapter}{\textnormal{LIST OF TABLES}}
    % \addvspace{10pt}
    % \typeout{!! List of Tables...!!}
    \noindent Table \hfill Page\\         % newline allows us to use a vspace...
    % vspace adjusts spacing to get a doublespace between table headings
    % and table contents
    % \vspace{\baselineskip}
    \@starttoc{lot}     
%Signatures
\newpage
}
% Ensure double-spacing between entries
\renewcommand*\l@table{\par\addvspace{\bigskipamount}\pagebreak[2]
 \@dottedtocline{1}{1.5em}{2.3em}}
%}}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% LAYOUT: List of FIGURES -auto fill %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%{{{ List of Figures
% LoF should be single-spaced within entries and double-spaced between entries 
\renewcommand*{\listoffigures}{
    \singlespaced
    % \vskip0pt
    \chapter*{\begin{raggedright} \fontsize{16pt}{18}\textbf{List of Figures} \end{raggedright}}
    \addcontentsline{toc}{section}{List of Figures}
    % \addcontentsline{toc}{chapter}{\textnormal{LIST OF FIGURES}}
    % \addvspace{10pt} 
    % \typeout{!! List of Figures...!!}
    \noindent Figure \hfill Page\\         % newline allows us to use a vspace...
    % vspace adjusts spacing to get a doublespace between table headings
    % and table contents
    % \vspace{\baselineskip} 
    \@starttoc{lof}     
    \newpage 
    % \doublespaced
}
% Ensure double-spacing between entries
\renewcommand*\l@figure{\par\addvspace{\bigskipamount}\pagebreak[2]
 \@dottedtocline{1}{1.5em}{2.3em}}
%}}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% LAYOUT: SECTION HEADINGS- auto fill %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\renewcommand{\setthesection}{\roman{chapter}.A\roman{section}}
\usepackage{quotchap}
\parskip 0pt

\usepackage{titlesec, blindtext, color}


\titleformat{\chapter}
{\vspace{-60pt}\raggedright}   %% spacing of chapter headings
{\fontsize{16pt}{16}\bfseries Chapter \thechapter: }
{0pt}
{}

%\titleformat{\chapter}[display]
%{\vspace{-60pt}\raggedright}   %% spacing of chapter headings
%{Chapter \thechapter}
%{0pt}
%{}


\titleformat{\section}[display]
{\normalfont\normalsize\bfseries}
{}
{0pt}
{{}}

\titleformat{\subsection}[display]
{\normalfont\normalsize\itshape}
{}
{0pt}
{{}}

\titleformat{\subsubsection}[display]
{\normalfont\normalsize}
{}
{0pt}
{{}}

% An environment for paragraph-style section.
\providecommand\newthought[1]{%
   \addvspace{1.0\baselineskip plus 0.5ex minus 0.2ex}%
   \textsc{#1}%
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Figure numbering - chapter.number %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\thefigure}{\arabic{section}.\arabic{figure}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% LAYOUT: Title Page - info filled above    %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\maketitle}{\thispagestyle{empty}
\begin{center}
\fontsize{16pt}{18}\selectfont
\textbf{Centro de Investigación Científica y de Educación Superior de Ensenada, Baja California}
\vspace{0.9cm}
\begin{figure}[!h]
\begin{center}
\includegraphics[width=2.75in]{./Figures/logoCicese2009.pdf}\\
\end{center}
\end{figure}
\vspace{0.3cm}
\vrule width 15.5cm height .5pt
\fontsize{16pt}{18}\selectfont
\textbf{{\degree}\\
  en \expandafter{\field}}
\vrule width 15.5cm height .1pt
\fontsize{15.84pt}{18}\selectfont
\vspace{0.7cm}
\textbf{\expandafter{\@title}
}
\vspace{0.7cm}
\normalsize
\\ Tesis
\\ para cubrir parcialmente los requisitos necesarios para obtener el grado de
\\
\expandafter{\degreetitle}
\end{center}
\begin{center}

\vspace{1.5cm}
  Presenta: \\
  \textbf{\expandafter{\@author}}
\vspace{4.0cm}
\vfill
  Ensenada, Baja California, México
\\
\yeardegree


\end{center}
%%%% Signature page starts here
\newpage
\begin{center}
\doublespacing
    Tesis defendida por \\
    \vspace{0.5cm}
    \fontsize{16pt}{18}\textbf{\expandafter{\@author}} \\
    \vspace{0.75cm}
    y aprobada por el siguiente Comité
    
\vspace{1.25cm}
  \small
	\begin{tabular}{cc}
	  \centering
    \makebox[2.75in]{\hrulefill} & \makebox[2.75in]{\hrulefill}\\    
    \advisor                     & \coadvisor \\
    Director de Tesis            & Co-Director de Tesis \\
    & \\
    & \\
  \end{tabular}
\vspace{0.3cm}
  \begin{center}
    \committeeone \\         
    \committeetwo \\             
    \committeethree \\               
  \end{center}

 \vspace{1.75cm}

  \begin{figure}[!h]
  \begin{center}
  %change according to logos available in the logos folder.
  \includegraphics[width=12.5mm]{./Figures/logos/compu.jpg}\\
  \end{center}
  \end{figure}
  
 \vspace{1.25cm}

  \begin{center}
    \centering
    \makebox[2.75in]{\hrulefill}\\             
    \coordinator                \\            
    Coordinador del Posgrado en \\            
    \field \\
    \vspace{0.75cm}

    \makebox[2.75in]{\hrulefill}\\
    \director \\
    Director de Estudios de Posgrado \\
    \end{center}
    
\vspace*{\fill}
    \fontsize{9pt}{9}\selectfont
      \textit{\@author \hspace{3pt} \copyright \yeardegree} \\
      \textit{Queda prohibida la reproducción parcial o total de esta obra sin el permiso formal y explícito del autor y director de la tesis}
\end{center}

}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% LAYOUT: Title Page in ENGLISH - info filled above    %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% \iffalse comments chunk, might fail in "unexpected ways"
% uncomment to activate and comment above
% https://tex.stackexchange.com/questions/87303/multi-line-block-comments-in-latex
\iffalse
\renewcommand{\maketitle}{\thispagestyle{empty}
\begin{center}
\fontsize{16pt}{18}\selectfont
\textbf{Ensenada Center for Scientific Research and Higher Education}
\vspace{0.9cm}
\begin{figure}[!h]
\begin{center}
\includegraphics[width=2.75in]{./Figures/logoCicese2009.pdf}\\
\end{center}
\end{figure}
\vspace{0.3cm}
\vrule width 15.5cm height .5pt
\fontsize{16pt}{18}\selectfont
\textbf{{\degree}\\
  in \expandafter{\field}}
\vrule width 15.5cm height .1pt
\fontsize{15.84pt}{18}\selectfont
\vspace{0.7cm}
\textbf{\expandafter{\@title}
}
\vspace{0.7cm}
\normalsize
\\ Thesis
\\ to partially fulfill the necessary requirements to obtain the degree of
\\
\expandafter{\degreetitle}
\end{center}
\begin{center}

\vspace{1.5cm}
  Presenta: \\
  \textbf{\expandafter{\@author}}
\vspace{4.0cm}
\vfill
  Ensenada, Baja California, Mexico
\\
\yeardegree


\end{center}
%%% Signature page starts here
\newpage
\begin{center}
\doublespacing
    Thesis defended by \\
    \vspace{0.5cm}
    \fontsize{16pt}{18}\textbf{\expandafter{\@author}} \\
    \vspace{0.75cm}
    and approved by the following Committee
    
\vspace{1.25cm}
  \small
	\begin{tabular}{cc}
	  \centering
    \makebox[2.75in]{\hrulefill} & \makebox[2.75in]{\hrulefill}\\    
    \advisor                     & \coadvisor \\
    Thesis Director              & Thesis Co-Director \\
    & \\
    & \\
  \end{tabular}
\vspace{0.3cm}
  \begin{center}
    \committeeone \\         
    \committeetwo \\             
    \committeethree \\               
  \end{center}

 \vspace{1.75cm}

  \begin{figure}[!h]
  \begin{center}
  %change according to logos available in the logos folder.
  \includegraphics[width=12.5mm]{./Figures/logos/compu.jpg}\\
  \end{center}
  \end{figure}
  
 \vspace{1.25cm}

  \begin{center}
    \centering
    \makebox[2.75in]{\hrulefill}\\             
    \coordinator                \\            
    Program Coordinator \\            
    \field \\
    \vspace{0.75cm}

    \makebox[2.75in]{\hrulefill}\\
    \director \\
    Director of Postgraduate Studies \\
    \end{center}
    
\vspace*{\fill}
    \fontsize{9pt}{9}\selectfont
      \textit{\@author \hspace{3pt} \copyright \yeardegree} \\
      \textit{Partial or total reproduction of this work without the author's and thesis director's formal and explicit permission is strictly prohibited.}
\end{center}

}
\fi
