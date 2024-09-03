\newcommand\classname{PSIG}
\newcommand\lastmodifieddate{2023/8/28}
\newcommand\versionnumber{0.1}

% Are we printing crop marks?
\newif\if@cropmarkson \@cropmarksontrue

% unsure of what this does
\NeedsTeXFormat{LaTeX2e}[2011/07/05]
\ProvidesClass{\classname}[\lastmodifieddate\space PSIG
                           Version \versionnumber^^J]

% creates new variables
\newif\ifqry\qryfalse
\newif\ifnoquery
\newif\ifrevises
\newif\iferratum\erratumfalse
\newif\ifaddendum\addendumfalse
\newif\ifweb
\newif\ifmathrsfs
\newif\ifprinter
\newif\iffproof
%\newif\ifedtitle

% check out how these change
\setlength{\paperheight}{297truemm}
\setlength{\paperwidth}{210truemm}


% many options
\DeclareOption{draft}{\PassOptionsToPackage{draft}{graphicx}}
\DeclareOption{a4paper}{\PassOptionsToPackage{a4}{crop}}
\DeclareOption{centre}{\PassOptionsToPackage{center}{crop}}
\DeclareOption{courier}{\def\verbatim@font{\normalfont\ttfamily}}
\DeclareOption{times}{\def\verbatim@font{\normalfont\rmfamily}}

% and these?
\ExecuteOptions{a4paper,centre}

\ProcessOptions

% Load all necessary packages
%\RequirePackage[T1]{fontenc}
%\RequirePackage[T1,mtbold,mtplusscr]{mathtime}
\RequirePackage{crop,graphicx,array,amsthm,stfloats,upref,amsfonts,amssymb,cuted}
\RequirePackage{vruler}
\RequirePackage{amsmath}
\usepackage{endnotes,rotating}
\usepackage{times}

\usepackage{vruler}

\def\linenos{\setvruler[55pt][1][5][1][1][590pt][590pt][-14pt][\textheight]
\setvruler[55pt][1][5][1][1][10pt][10pt][-14pt][\textheight]}

\usepackage{xcolor}
\definecolor{col1}{gray}{0.3}

%\newcommand\@ptsize{0}

% Set twoside printing
\@twosidetrue

% Marginal notes are on the outside edge
\@mparswitchtrue

% Default font sizes
\renewcommand\normalsize{%
  \@setfontsize\normalsize{10\p@}{12\p@}%
  \abovedisplayskip 12\p@ \@plus 3\p@ \@minus4\p@
  \abovedisplayshortskip 3\p@ \@plus 1\p@ \@minus1\p@
  \belowdisplayshortskip 6\p@ \@plus 1\p@ \@minus2\p@
  \belowdisplayskip \abovedisplayskip
  \let\@listi\@listI}

\normalsize
\let\@bls\baselineskip

\newcommand\small{%
  \@setfontsize\small{9\p@}{11\p@}%
  \abovedisplayskip 12\p@ \@plus1\p@ \@minus1\p@
  \abovedisplayshortskip 3\p@ \@plus 1\p@ \@minus1\p@
  \belowdisplayshortskip 2\p@ \@plus 1\p@ \@minus1\p@
  \def\@listi{\leftmargin\leftmargini
              \listparindent \parindent
              \topsep 6\p@ \@plus2\p@ \@minus1\p@
              \parsep \z@ \itemsep \z@}%
  \belowdisplayskip \abovedisplayskip}

\newcommand\ssmall{%
  \@setfontsize\ssmall{8\p@}{9\p@}%
  \abovedisplayskip 12\p@ \@plus2\p@ \@minus4\p@
  \abovedisplayshortskip \z@ \@plus \p@
  \belowdisplayshortskip 1\p@ \@plus2\p@ \@minus2\p@
  \def\@listi{\leftmargin\leftmargini
              \listparindent 1em
              \topsep 5\p@ \@plus 2\p@ \@minus 1\p@
              \parsep \z@ \itemsep \z@}%
  \belowdisplayskip \abovedisplayskip}

\newcommand\footnotesize{%
  \@setfontsize\footnotesize{8.25\p@}{12.5\p@}%
  \abovedisplayskip 12\p@ \@plus2\p@ \@minus4\p@
  \abovedisplayshortskip \z@ \@plus \p@
  \belowdisplayshortskip 1\p@ \@plus2\p@ \@minus2\p@
  \def\@listi{\leftmargin\leftmargini
              \listparindent 1em
              \topsep 5\p@ \@plus 2\p@ \@minus 1\p@
              \parsep \z@ \itemsep \z@}%
  \belowdisplayskip \abovedisplayskip}

\def\scriptsize{\@setfontsize\scriptsize{7\p@}{9\p@}}
\def\tiny{\@setfontsize\tiny{6\p@}{7\p@}}
\def\little{\@setfontsize\little{5\p@}{6\p@}}
\def\large{\@setfontsize\large{12\p@}{14\p@}}
\def\Large{\@setfontsize\Large{14\p@}{16\p@}}
\def\LARGE{\@setfontsize\LARGE{16\p@}{18\p@}}
\def\huge{\@setfontsize\huge{24\p@}{26\p@}}
\def\Huge{\@setfontsize\Huge{25\p@}{27\p@}}

\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}

% Line spacing
\setlength\lineskip{1\p@} % adjusts space between math elements
\setlength\normallineskip{0\p@}
\renewcommand\baselinestretch{1.1} % actual line spaces

% Paragraph dimensions and inter-para spacing
\setlength\parskip{0\p@}
\setlength\parindent{10pt}

% Set inter-para skips
\setlength\smallskipamount{6\p@ \@plus 1\p@ \@minus 1\p@}
\setlength\medskipamount{9\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\bigskipamount{12\p@ \@plus 4\p@ \@minus 4\p@}

% Page break penalties
\@lowpenalty   51
\@medpenalty  151
\@highpenalty 301

% Disallow widows and orphans
\clubpenalty 10000
\widowpenalty 10000

% Disable page breaks before equations, allow pagebreaks after
% equations and discourage widow lines before equations.
\displaywidowpenalty 100
\predisplaypenalty   10000
\postdisplaypenalty  2500

% Allow breaking the page in the middle of a paragraph
\interlinepenalty 0

% Disallow breaking the page after a hyphenated line
\brokenpenalty 10000
\hyphenpenalty 10000
\exhyphenpenalty 1000

% Hyphenation; don't split words into less than three characters
\lefthyphenmin=3
\righthyphenmin=3


% Page layout dimensions
\setlength\headheight{3mm}%height of running head
\setlength\topmargin{18.1mm}% top margin 24.5mm
\addtolength\topmargin{-1in}% subtract out the 1 inch driver margin
\addtolength\topmargin{-\headheight}%  and the running head

\setlength\topskip{6.5\p@}% height of first line of text%% {10\p@}
\setlength\headsep{1.35pc}% space below running head
\addtolength\headsep{9pt}%   base to base with first line of text
\addtolength\headsep{-\topskip}%   base to base with first line of text

\setlength\footskip{44.2\p@}
\setlength\maxdepth{.5\topskip}% pages can be short or deep by half a line?

\setlength\textwidth{180mm}% text measure excluding margins
\setlength\columnwidth{86mm}

\setlength\textheight{60\@bls}% text height is 72 baselines,
\addtolength\textheight{\topskip}%56+1-including first line of text

% Set the margins
\setlength\marginparsep{10\p@}
\setlength\marginparpush{15\p@}
\setlength\marginparwidth{1.5pc}

\newlength{\insidemargin}
\setlength{\insidemargin}{15mm}
\setlength\oddsidemargin{\insidemargin}
\addtolength\oddsidemargin{-1in}%subtract out the 1 inch driver margin
\setlength\@tempdima{\paperwidth}
\addtolength\@tempdima{-\textwidth}
\addtolength\@tempdima{-\insidemargin}
\setlength\evensidemargin{\@tempdima}
\addtolength\evensidemargin{-1in}

\setlength\columnsep{8mm}          % space between columns for double-column text
\setlength\columnseprule{0\p@}      % width of rule between two columns

% Footnotes
\setlength\footnotesep{0\p@}     % space between footnotes
% space between text and footnote
\setlength{\skip\footins}{23\p@ \@plus 3\p@ \@minus 3\p@}

% Float placement parameters
\setcounter{totalnumber}{10}
\setcounter{topnumber}{5}
\setcounter{bottomnumber}{5}

% The maximum part of the top or bottom of a text page that can be
% occupied by floats. This is set so that at least four lines of text
% fit on the page.
\renewcommand\topfraction{.921}
\renewcommand\bottomfraction{.921}
\renewcommand\textfraction{.079}
\renewcommand\floatpagefraction{.887}

% The same parameters repeated for double column output
\renewcommand\dbltopfraction{.965}
\renewcommand\dblfloatpagefraction{.077}

% Space between floats
\setlength\floatsep{18\p@ \@plus 2\p@ \@minus 2\p@}
% Space between floats and text
\setlength\textfloatsep{20\p@ \@plus 2\p@ \@minus 4\p@}
% Space above and below an inline figure
\setlength\intextsep{18\p@ \@plus 2\p@ \@minus 2\p@}

% For double column floats
%\setlength\dblfloatsep{18\p@ \@plus 3\p@ \@minus 1\p@}
%\setlength\dbltextfloatsep{20\p@ \@plus 3\p@ \@minus 1\p@}

\setlength\dblfloatsep{30\p@ \@plus 3\p@ \@minus 1\p@}
\setlength\dbltextfloatsep{70\p@ \@plus 3\p@ \@minus 1\p@}

% Space left at top, bottom and inbetween floats on a float page.
\setlength\@fptop{0\p@}% no space above float page figures
\setlength\@fpsep{12\p@ \@plus 2fil}
\setlength\@fpbot{0\p@}

% The same for double column
\setlength\@dblfptop{0\p@}
\setlength\@dblfpsep{12\p@}
\setlength\@dblfpbot{0\p@}


%##############################################################################

%%%%%%%%%%%%%%%%%%%%%%%%%%%% Article Identification %%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\papernumber@info{000000}
\def\year@info{\the\year}
\def\cyear@info{2021}
\def\presdate@info{000000}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\CYear#1{\gdef\cyear@info{#1}}
\def\Year#1{\gdef\year@info{#1}}
\def\papernumber#1{\gdef\papernumber@info{#1}}
\def\presdate#1{\gdef\presdate@info{#1}}

%%% use subtitle for shortened title in header
%\let\@subtitle\empty % default value
%\protected\def\subtitle#1{\gdef\@subtitle{#1}}


\def\headertitle#1{\gdef\@headertitle{#1}}

\newif\ifheadertitle
\headertitlefalse % Set default value of conditional to false
\def\@headertitle{} % Set default value of \@author to empty

\newcommand{\headertitlecheck}{%
    \ifx\@headertitle\empty
    \headertitlefalse
    \else
    \headertitletrue
    \fi
}




%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Firstpage %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
% this is where the footer can be hidden
\newcommand{\oddpagefootline}{%
     %\hbox to \textwidth{\fontsize{8}{10}\selectfont\sf\oddpagefooter\hfill}
     }%
\newcommand{\evenpagefootline}{%
     %\hbox to \textwidth{\fontsize{8}{10}\selectfont\sf\evenpagefooter}
     }%
\renewcommand\thefootnote{\@fnsymbol\c@footnote}

\def\ps@headings{%
  \let\@evenhead\@empty%
  \let\@oddhead\@empty%
  \def\@oddfoot{\oddpagefootline}%
  \def\@evenfoot{\evenpagefootline}%
  \def\authormark##1{\def\leftmark{##1}}%
%  \def\titlemark#1#2{\markboth{##1}{##2}}}
  \def\titlemark##1{\markboth{##1}{##1}}}
  
% Sectional units
%

% Counters
\newcounter{part}
\newcounter{section}
\newcounter{rsection}
\newcounter{subsection}[section]
\newcounter{rsubsection}[section]
\newcounter{subsubsection}[subsection]
\newcounter{paragraph}[subsubsection]
\newcounter{subparagraph}[paragraph]
\newcounter{refsection}[section]
\newcounter{figure}
\newcounter{scolfig}[figure]
\newcounter{table}

% Form of the numbers
\newcommand\thepage{\arabic{page}}
\renewcommand\thesection{\arabic{section}}
\renewcommand\thesubsection{{\thesection.\arabic{subsection}}}
\renewcommand\thesubsubsection{{\thesubsection.\arabic{subsubsection}}}
\renewcommand\theparagraph{\thesubsubsection.\arabic{paragraph}}
\renewcommand\thesubparagraph{\theparagraph.\arabic{subparagraph}}
\renewcommand\theequation{\arabic{equation}}

% Form of the words
\newcommand\appendixname{Appendix}
%\newcommand\abstractname{Abstract}
\newcommand\refname{References}
\newcommand\bibname{Bibliography}

\newcommand\figurename{Figure}
\newcommand\scolfigname{Figure}
\newcommand\tablename{Table}
\newcommand\keywordsname{Keywords}

% Clearemptydoublepage should really clear the running heads too
\newcommand{\clearemptydoublepage}{\newpage{\pagestyle{empty}\cleardoublepage}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Titling Macros %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Reset default command signatures

%\def\title{\@ifnextchar[{\@title@wst@}{\@title@nst@}}
%\def\@title@wst@[#1]{\titlemark{#1}\@title@assign@}
%\def\@title@nst@#1{\titlemark{#1}\@title@assign@{#1}}
%\def\@title@assign@#1{\def\@title{#1}}



\def\author{\@ifnextchar[{\@author@wst@}{\@author@nst@}}
\def\@author@wst@[#1]{\authormark{#1}\@author@assign@}
\def\@author@nst@#1{\authormark{#1}\@author@assign@{#1}} % this is the one that gets called
\def\@author@assign@#1{\gdef\@author{#1}\global\@author@providedtrue}



% It is for titling commands
\newif\if@supertitle@provided \@supertitle@providedfalse
\newif\if@author@provided \@author@providedfalse
\newif\if@date@provided \@date@providedfalse
\newif\if@rec@provided \@rec@providedfalse
\newif\if@rev@provided \@rev@providedfalse
\newif\if@acc@provided \@acc@providedfalse


% title page heading
\newif\if@keywords@provided \@keywords@providedfalse
\def\keywords#1{\gdef\@keywords{#1}\global\@keywords@providedtrue}
\def\supertitle#1{\def\@supertitle{#1}\global\@supertitle@providedtrue}
\def\address#1{\gdef\@address{{#1}}}



% copyright section formatting
\def\copyrightsection{%
\renewcommand{\@seccntformat}[1]{{{\csname the##1\endcsname\hskip16pt}}}
  \@startsection{copyrightsection}{1}{\z@}
  {-18\p@ plus -2\p@ minus -1\p@}{10\p@}
  {\reset@font\fontsize{6}{6}\sf\raggedright}}

% make copyright section
\newenvironment{copyrightsec}{%
\scriptsize
\copyrightsection*{\copyright \hspace{0.1cm} Copyright 2024, PSIG, Inc.}

This paper was prepared for presentation at the PSIG Annual Meeting held in Charleston, South Carolina, 6 May – 10 May 2024.

\vspace{0.3cm}
\noindent
This paper was selected for presentation by the PSIG Board of Directors following review of information contained in an abstract submitted by the author(s). The material, as presented, does not necessarily reflect any position of the Pipeline Simulation Interest Group, its officers, or members. Papers presented at PSIG meetings are subject to publication review by Editorial Committees of the Pipeline Simulation Interest Group. Electronic reproduction, distribution, or storage of any part of this paper for commercial purposes without the written consent of PSIG is prohibited. Permission to reproduce in print is restricted to an abstract of not more than 300 words; illustrations may not be copied. The abstract must contain conspicuous acknowledgment of where and by whom the paper was presented. Write Librarian, Pipeline Simulation Interest Group, 945 McKinney, Suite \#106, Houston, TX 77002, USA – info@psig.org.   
}


% make abstract section
\newenvironment{abstract}{%
      \section*{Abstract}%
}

% counter for number of authors
\newcounter{qauth}%
\setcounter{qauth}{0}%
\def\theqauth{\arabic{qauth}}%
\def\au#1{#1\refstepcounter{qauth}\expandafter\gdef\csname qau\theqauth\endcsname{#1}}%
\def\add#1#2{$^{#1}$#2}
\def\email#1{\par \corr\ E-mail: #1}


% sets symbols for multiple footnotes
\def\@fnsymbol#1{\ifcase#1\or *\or \dagger\or \ddagger\or
    \S\or \P\or \|\or **\or \dagger\dagger
    \or \ddagger\ddagger \else\@ctrerr\fi}

%% Reimplement Titling Layout
\newcommand\maketitle{\par%
  \twocolumn[
  \begingroup
  \renewcommand\footnoterule{\begingroup\leftskip\z@\noindent
  \rule{84mm}{0.5\p@}\vspace{8\p@}\endgroup}
    \renewcommand\thefootnote{\@fnsymbol\c@footnote}%
    \global\@topnum\z@%Prevents figures from going at top of page.
    \@maketitle
    \twocolumn
  \endgroup]
  \@afterindentfalse
  \@afterheading
  \begingroup
  \def\thefootnote{}
  \endgroup
  \global\let\maketitle\relax
  \global\let\@maketitle\relax}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% make the title page

\iferratum\relax%
\let\normalsize\erratumsize%
\def\@maketitle{%
%  \ifx\@journal@title\@default@journal@title
%  \ClassError{TandF}{Journal Code not specified. Processing stopped.}
%  {The journal code is a required field. Your LaTeX file must contain\MessageBreak
%   \protect\journal{JJJJ}, where JJJJ is the four letter journal code.}%
%  \fi
  \begingroup%
  \vskip15.5pt%
   \vbox{\fontsize{20}{22}\selectfont\sf\bfseries\raggedright%
   {\@title\vphantom{yqQl}}\par}\par%
  \endgroup%
  \vspace{14\p@ plus 4\p@ minus 3\p@}%
  }
\else%
%###############################################################################################
\def\@maketitle{%
  % Check if necessary information is present:
  \raggedright%
  \begingroup
  \vspace*{-22pt}
  \hbox to \textwidth{\begin{minipage}[b]{280pt}
%    {\fontsize{9}{10}\sf\selectfont\raggedright\@journal@title}\par%
%    \vskip14pt%
   \if@supertitle@provided
    {\fontsize{14}{10}\sf\selectfont\raggedright%
    {{\color{col1}\papernumber@info\vphantom{yqQl}}}\par}%
   \else
    \vspace{10\p@}%
   \fi%
   \end{minipage}\hfill% 
   \begin{minipage}[b]{200pt}
   \hbox{\raise-2pt\hbox{\includegraphics[width=190pt]{psig_required_latex_files/psig_logo.png}}}% this is the correct one
   \end{minipage}}\par%
  \nointerlineskip\vskip6.3pt\nointerlineskip%
  %\iferratum\else\rule{\textwidth}{.5pt}\par\fi%
  \iferratum\else\par\fi%
  \nointerlineskip\vskip16.12pt\nointerlineskip%
  \hbox to \textwidth{\begin{minipage}[t]{378pt}\vspace*{0pt}%
   {\fontsize{22}{20}\selectfont\sf\bfseries\raggedright%
   {\@title\vphantom{yqQl}}\par}%
   \vspace{12pt}%
  \end{minipage}\hfill%
  \begin{minipage}[t]{115pt}\vspace*{0pt}%
  %\jourinf%
  \end{minipage}}\par%
   {\begingroup
     \if@author@provided%
	  {\fontsize{12}{13}\sf\selectfont\@author}      
      \vspace{3.8\p@}%
     \else
      \vspace{0\p@}%
     \fi
    \endgroup\par}%
    {\fontsize{8}{10}\sf\selectfont{\@address}}%
   
  \vspace{13.7\p@}%
  \endgroup
  
  % keywords
  \if@keywords@provided%
  \begingroup
   {\parindent=4pt\fontsize{9}{11}\selectfont
    \@keywords\par}%
   \vspace{5.2\p@}
   \endgroup
  \else%
   \vspace{0\p@}%
  \fi%  
  
  \vspace{20\p@ plus 4\p@ minus 3\p@}%
  }
\fi


% this part defines how sections are handled
% Lowest level heading that takes a number by default
\setcounter{secnumdepth}{2}

% H1
\def\section{%
\renewcommand{\@seccntformat}[1]{{{\csname the##1\endcsname\hskip16pt}}}
  \@startsection{section}{1}{\z@}
  {-18\p@ plus -2\p@ minus -1\p@}{10\p@}
  {\reset@font\fontsize{16}{11}\sf\bfseries\raggedright\MakeUppercase}}

% H2
\def\subsection{%
\renewcommand{\@seccntformat}[1]{{{\it\csname the##1\endcsname\hskip12.5pt}}}
  \@startsection{subsection}{2}{\z@}
  {-13\p@ plus -2\p@ minus -1\p@}{9\p@}
  {\reset@font\normalsize\sf\fontshape{it}\selectfont\raggedright}}

% H3
\def\subsubsection{%
  \@startsection{subsubsection}{3}{\z@}
  {-7\p@ plus -2\p@ minus -1\p@}{10\p@}
  {\reset@font\normalsize\sf\fontshape{it}\selectfont\raggedright} }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Footnotes %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\@makefnmark{$^{\@thefnmark}$}%
\renewcommand\footnoterule{\begingroup\leftskip\z@\noindent
  \rule{84mm}{0.5\p@}\vspace{5\p@}\setcounter{footnote}{0}\endgroup}

\newcommand\@makefntext[1]{%
  \begingroup%
    \leftskip=\z@\rightskip=\z@%
    \footnotesize%
    \setlength\parindent{0pt}%
    \@makefnmark\ignorespaces \textit{#1}%
  \endgroup}%


%%%%%%%%%%%%%%%%%%%%%%%% PostScript Rotation Macros %%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newif\if@rotate \@rotatefalse
\newif\if@rotatecenter \@rotatecenterfalse
\def\rotatecenter{\global\@rotatecentertrue}
\def\rotateendcenter{\global\@rotatecenterfalse}
\def\rotate{\global\@rotatetrue}
\def\endrotate{\global\@rotatefalse}
\newdimen\rotdimen
\def\rotstart#1{\special{ps: gsave currentpoint currentpoint translate
    #1 neg exch neg exch translate}}
\def\rotfinish{\special{ps: currentpoint grestore moveto}}
\def\rotl#1{\rotdimen=\ht#1\advance\rotdimen by \dp#1
    \hbox to \rotdimen{\vbox to\wd#1{\vskip \wd#1
    \rotstart{270 rotate}\box #1\vss}\hss}\rotfinish}
\def\rotr#1{\rotdimen=\ht #1\advance\rotdimen by \dp#1
    \hbox to \rotdimen{\vbox to \wd#1{\vskip \wd#1
    \rotstart{90 rotate}\box #1\vss}\hss}\rotfinish}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%% Figures and Tables %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\renewcommand \thefigure {\@arabic\c@figure}
\def\fps@figure{tbp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{\figurename\nobreakspace\thefigure}
\newenvironment{figure}
               {\@float{figure}}
               {\end@float}
\newenvironment{figure*}
               {\@dblfloat{figure}}
               {\end@dblfloat}
\renewcommand\thetable{\@arabic\c@table}
\def\fps@table{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{\tablename\nobreakspace\thetable}
\newenvironment{table}
               {\@float{table}}
               {\end@float}
\newenvironment{table*}
               {\@dblfloat{table}}
               {\end@dblfloat}
\newlength\abovecaptionskip
\newlength\belowcaptionskip
  
\setlength\abovecaptionskip{7.5\p@}
\setlength\belowcaptionskip{0\p@}

% make only figure and number bold
\def\fnum@figure{\sf\textbf{Figure~\thefigure}}

\newcommand{\figfooter}[2]{\par\fontsize{7}{9}\selectfont\textit{#1\ }#2\par}%

\long\def\@makecaption#1#2{\fontsize{10}{9}\selectfont%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{#1: #2}%
  \ifdim \wd\@tempboxa >\hsize
    {#1}\enskip \textbf{#2}\par
  \else
  	{#1}\enskip \textbf{#2}\par
    %\global \@minipagefalse
    %\hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}
  
\begingroup
\catcode`\Q=3
\long\gdef\@ifmtarg#1{\@xifmtarg#1QQ\@secondoftwo\@firstoftwo\@nil}
\long\gdef\@xifmtarg#1#2Q#3#4#5\@nil{#4}
\long\gdef\@ifnotmtarg#1{\@xifmtarg#1QQ\@firstofone\@gobble\@nil}
\endgroup

% table caption defined
\newbox\tablecaptionbox
\long\def\@tablecaption#1#2{\par%
  \setbox\tablecaptionbox=\vbox{\hsize 0.45\textwidth%
    {{\sf\fontsize{10}{9}\selectfont\bfseries #1}\enskip {\sf\fontsize{9}{9}\selectfont#2}}\strut}%
    \unvbox\tablecaptionbox\par%
  \vspace{\belowcaptionskip}
  }%

\def\tablesource#1{\@hangfrom{\textit{Source:\hskip6pt}}#1\par}
\def\tablenote#1{\@hangfrom{\textit{Note:\hskip6pt}}#1\par}
\def\tablefoot#1{%
\def\tfmark##1{\@hangfrom{\textsuperscript{##1}\hskip5pt}}%
#1\par}

\def\ttext#1#2{{#1\enspace}{#2\par}\par}
\def\tabletext#1#2{\@hangfrom{#1\enspace}{#2}\par}

\def\hrulefill{\leavevmode\leaders\hrule height 0.5pt\hfill\kern\z@}

\def\thetable{\@arabic\c@table}%
\def\fps@table{tbp}%
\def\ftype@table{3}%
\def\ext@table{lot}%
\def\fnum@table{\tablename\,\thetable}%
\def\table{\let\@makecaption\@tablecaption\@float{table}}%
\def\endtable{\end@float}%
\@namedef{table*}{\let\@makecaption\@tablecaption\@dblfloat{table}}%
\@namedef{endtable*}{\end@dblfloat}%

\newdimen\tempdime%
\newbox\temptbox%

\newlength{\abovefigskip}%
\newlength{\belowfigskip}%
\setlength{\abovefigskip}{\z@}%
\setlength{\belowfigskip}{\z@}%

\def\toprule{\noalign{\ifnum0=`}\fi%
  \hrule \@height 1.2\p@ \@width \z@%
  \hrule \@height 1\p@ \@width\hsize%
  \hrule \@height 3.5\p@ \@width \z@%
  \futurelet \@tempa\@xhline}%

\def\midrule{\noalign{\ifnum0=`}\fi%
  \hrule \@height 3.5\p@ \@width \z@%
  \hrule \@height 0.5\p@ \@width\hsize%
  \hrule \@height 6.5\p@ \@width\z@%
  \futurelet \@tempa\@xhline}%

\def\botrule{\noalign{\ifnum0=`}\fi%
  \hrule \@height 3.5\p@ \@width \z@%
  \hrule \@height 1\p@ \@width\hsize%
  \futurelet \@tempa\@xhline}%

% Table and array parameters%
\setlength\arraycolsep{.5em}%
\setlength\tabcolsep{.5em}%
\setlength\arrayrulewidth{.25pt}%
\setlength\doublerulesep{2.5pt}%
\renewcommand\arraystretch{1}%

\def\hrulefill{\leavevmode\leaders\hrule height .25pt\hfill\kern\z@}%

\newcolumntype{P}[1]{>{\raggedright\let\\\@arraycr\hangindent1em}p{#1}}%

\newenvironment{processtable}[3]{\setbox\temptbox=\hbox{{\fontsize{7}{8}\selectfont\sf #2}}%
\tempdime\wd\temptbox\@processtable{#1}{#2}{#3}{\tempdime}}%
{\relax}%

\newenvironment{fwprocesstable}[3]{\setbox\temptbox=\hbox{{\fontsize{7}{8}\selectfont\sf #2}}%
\tempdime\wd\temptbox\@fwprocesstable{#1}{#2}{#3}{\tempdime}}%
{\relax}%

\newcommand{\@processtable}[4]{%
\if!#1!%
\addtocounter{table}{-1}%%ADDED ON 21/12/05
\def\fnum@table{}%
\else%
\def\fnum@table{{\tablename}\enspace\thetable}%
\fi%
\let\@makecaption\@tablecaption
\if@rotate
\setbox4=\vbox to \hsize{\vss\hbox to \textheight{%
\begin{minipage}{#4}%
\@ifmtarg{#1}{}{\caption{#1}}{\fontsize{7}{8}\selectfont\sf #2}%
\vskip5\p@\noindent
\parbox{#4}{\fontsize{7}{8}\selectfont\sf #3\par}%
\end{minipage}}\vss}%
\rotr{4}
\else
\hbox to \hsize{\hfil\begin{minipage}[t]{#4}%
%\vskip2.9pt
\@ifmtarg{#1}{}{\caption{#1}}{\fontsize{7}{8}\selectfont\sf #2}%
\vskip5\p@\noindent
\parbox{#4}{\fontsize{7}{8}\selectfont\sf #3\par}%
\end{minipage}\hfil}\fi}%



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Lists %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\labelenumi{{\rm\arabic{enumi}.}}
\def\theenumi{\arabic{enumi}}
\def\labelenumii{{\rm(\alph{enumii})}}
\def\theenumii{\alph{enumii}}
\def\p@enumii{\theenumi}
\def\labelenumiii{{\rm(\arabic{enumiii})}}
\def\theenumiii{\roman{enumiii}}
\def\p@enumiii{\theenumi(\theenumii)}
\def\labelenumiv{{\rm(\arabic{enumiv})}}
\def\theenumiv{\Alph{enumiv}}
\def\p@enumiv{\p@enumiii\theenumiii}
\def\labelitemi{$\bullet$}
\def\labelitemii{$\circ$}
\def\labelitemiii{$\bullet$}
\def\labelitemiv{$\bullet$}

\setlength{\leftmargini}{\z@}
\setlength{\leftmarginii}{\z@}
\setlength{\leftmarginiii}{\z@}
\setlength{\leftmarginiv}{\z@}

\def\enumargs{%
   \partopsep     \z@
   \itemsep       \z@
   \parsep        \z@
   \rightmargin   \z@
%   \labelsep      0.5em
   \listparindent \parindent
   \itemindent    \z@}

\def\enumerate{%
    \@ifnextchar[{\@numerate}{\@numerate[3.]}}

\def\@numerate[#1]{%
     \ifnum \@enumdepth >3 \@toodeep\else
     \advance\@enumdepth \@ne
     \edef\@enumctr{enum\romannumeral\the\@enumdepth}
     \list{\csname label\@enumctr\endcsname}{%
       \enumargs
       \setlength{\leftmargin}{\csname leftmargin\romannumeral\the\@listdepth\endcsname}
       \usecounter{\@enumctr}
       \def\makelabel##1{{##1\hskip5pt}}}%
     \fi
   }
\def\endenumerate{\endlist\advance \@listdepth -1}

% Changes to the list parameters for itemize
\def\itemargs{%
   \partopsep     \z@
   \itemsep       \z@
   \parsep        \z@
   \rightmargin   \z@
%   \labelsep      0.5em
   \listparindent \parindent
   \itemindent    \z@}

\def\itemize{%
    \@ifnextchar[{\@itemize}{\@itemize[$\bullet$]}}

\def\@itemize[#1]{%
     \ifnum \@itemdepth >3 \@toodeep\else
     \advance\@itemdepth \@ne
     \edef\@itemctr{item\romannumeral\the\@itemdepth}
     \list{\csname label\@itemctr\endcsname}{%
       \itemargs
       \setlength{\leftmargin}{\csname leftmargin\romannumeral\the\@listdepth\endcsname}
       \def\makelabel##1{{##1\hskip5pt}}}%
     \fi
   }
\let\enditemize\endlist

\setlength{\topsep}{6\p@}%
\setlength{\itemsep}{\z@}

\def\@listI{\leftmargin\leftmargini\topsep10.5\p@ plus 1\p@}
\let\@listi\@listI
\@listi
\def\@listii{\leftmargin\leftmarginii\topsep\z@}
\def\@listiii{\leftmargin\leftmarginiii\topsep\z@}
\def\@listiv{\leftmargin\leftmarginiv\topsep\z@}
\def\@listv{\leftmargin\leftmarginv\topsep\z@}
\def\@listvi{\leftmargin\leftmarginvi\topsep\z@}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% unnumbered list %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newenvironment{description}{%
  \begin{list}{}{%
      \usecounter{enumi}%
      \setlength{\itemsep}{\z@}%
      \setlength{\labelwidth}{\z@}%
      \setlength{\leftmargin}{1em}%
      \setlength{\itemindent}{-1em}}}%
{\end{list}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Extracts %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\quotation{\par\begin{list}{}{\small%  Extracts in small type
      \setlength{\topsep}{6.5\p@}%
      \setlength{\itemsep}{\z@}%
      \setlength\labelwidth{\z@}%
      \setlength\labelsep{\z@}%
      \setlength\leftmargin{20\p@}%
      \listparindent \parindent}%
  \item[\vrule width\z@ height 9\p@]}
\def\endquotation{\end{list}}
\let\quote\quotation
\let\endquote\endquotation
\newcommand{\source}[1]{\newline\hbox{}\hfill{#1}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% for \begin{proof}
\renewcommand{\qedsymbol}{\ensuremath{\square}}%\ensuremath{\blacksquare}
\renewenvironment{proof}[1][\proofname]{
  \pushQED{\qed}%
  \normalfont \topsep12\p@\@plus3\p@\relax
  \trivlist
  \item[\hskip\labelsep
        \itshape
    #1:]\ \ignorespaces
}{%
  \popQED\endtrivlist\@endpefalse
}
\providecommand{\proofname}{Proof}


% ---------------------------------------------------------------------------
%                           Bibliography 
% ---------------------------------------------------------------------------
% This generates the format for the bibliography enties. It is taken from
% the article class.

\newdimen\bibindent
\bibindent=3.5em
\setlength{\labelsep}{1em}
\setlength{\itemsep}{4pt}
\newenvironment{thebibliography}[1]
     {\section*{\refname}
        \@mkboth{\MakeUppercase\refname}{\MakeUppercase\refname}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%

      \renewcommand\newblock{\hskip .11em \@plus.33em \@minus.07em}%
      \sloppy\clubpenalty4000\widowpenalty4000%
      \sfcode`\.=\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}
\newcommand\newblock{\hskip .11em\@plus.33em\@minus.07em}

% Override settings in MathTime back to TeX defaults
\DeclareMathSizes{5}{5}{5}{5}
\DeclareMathSizes{6}{6}{5}{5}
\DeclareMathSizes{7}{7}{5}{5}
\DeclareMathSizes{8}{8}{5.33}{5}
\DeclareMathSizes{9}{9}{7}{5}
\DeclareMathSizes{9.25}{9.25}{6.1}{5}
\DeclareMathSizes{10}{10}{6.5}{5}
\DeclareMathSizes{11}{11}{7.7}{6}
\DeclareMathSizes{12}{12}{9}{7}

%Math parameters
\setlength{\jot}{5\p@}
\skip\@mpfootins = \skip\footins
\fboxsep=6\p@
\fboxrule=.25\p@
\@mathmargin1em
\medmuskip=4mu% plus 2mu minus 4mu
\thickmuskip=5mu% plus 5mu

\vbadness=9999
\tolerance=9999
\doublehyphendemerits=10000
\doublehyphendemerits 640000
\finalhyphendemerits  1000000

\flushbottom
\frenchspacing
\onecolumn
\pagestyle{headings}

%--------------------------------
% Useful Short-form coding
\newcommand\tetal{{{\rm et~al.}}}
\newcommand\etal{\textit{et~al.}}
\newcommand\eg{\textit{e.g.}\ }
\newcommand\ie{\textrm{i.e.}\ }
\let\endash\textendash
\def\dd{{\rm d}}
\def\ee{{\rm e}}

\chardef\permil="89%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%For New Table

\newcount\mscount
\def\multispan#1{\omit \mscount#1\relax
  \loop\ifnum\mscount>\@ne \sp@n\repeat}
\def\sp@n{\span\omit\advance\mscount\m@ne}

\hyphenation{Table}
\hyphenation{Figure}
\hyphenation{Section}
\hyphenation{equation}
\hyphenation{Theorem}
\hyphenation{Lemma}
\hyphenation{Algorithm}
\hyphenation{Definition}
\hyphenation{Corollary}
\hyphenation{Proof}
\hyphenation{Remark}

\def\bcontinued{({\it continued\/})}
\def\tcontinued{Continued}

\newenvironment{tabenumerate}[1][10pc]{
\begin{minipage}[t]{#1}
\begin{enumerate}
}{\end{enumerate}
\end{minipage}}

\newenvironment{tabitemize}[1][10pc]{
\begin{minipage}[t]{#1}
\begin{itemize}
}{\end{itemize}
\end{minipage}}




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\long\def\onecoleqn#1{\begin{figure}[!b]\par\llap{\hbox to 267pt{\begin{minipage}{\textwidth}%
\vrule height.5pt width\textwidth%
#1%
\end{minipage}}}\par\end{figure}}

\long\def\twocoleqn#1{\begin{figure}[!b]\par\rlap{\hbox to \textwidth{\begin{minipage}{\textwidth}%
\vrule height.5pt width\textwidth%
#1%
\end{minipage}}}\par\end{figure}}

\long\def\onetwoeqn#1{\begin{figure}[!b]\par\llap{\hbox to 267pt{\begin{minipage}{\textwidth}%
#1%
\end{minipage}}}\par\end{figure}}

\long\def\twooneeqn#1{\begin{figure}[!b]\par\rlap{\hbox to \textwidth{\begin{minipage}{\textwidth}%
#1%
\end{minipage}}}\par\end{figure}}


\CYear{\the\year}
\Year{\the\year}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% update conference information here
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\supertitle{PSIG}
%\keywords{
%\noindent
%This paper was presented at the \emph{PSIG Annual Meeting} held virtually \textbf{11 May – 19 May 2022}. \\
%%
%\vspace{5pt}
%\noindent
%{\ssmall
%{\color{col1}
%This  paper  was  selected  for  presentation  by  the  PSIG  Board  of  Directors  following  review  of 
%information  contained  in  an  abstract  submitted  by  the  author(s).  The  material,  as  presented, 
%does not necessarily reflect any position of the Pipeline Simulation Interest Group, its officers, 
%or members. Papers presented at PSIG meetings are subject to publication review by Editorial 
%Committees  of the Pipeline Simulation Interest Group. Electronic reproduction, distribution, or 
%storage of any part of this paper for commercial purposes without the written consent of PSIG 
%is prohibited. Permission to reproduce in print is restricted to an abstract  of not more than 300 
%words; illustrations may not be copied. The abstract must contain conspicuous 
%acknowledgment  of  where  and  by  whom  the  paper  was  presented.  Write  Librarian,  Pipeline 
%Simulation Interest Group, 945 McKinney, Suite \#106, Houston, TX 77002, USA; info@psig.org. }}}

% for corresponding author
\def\corr{*}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage{lipsum}
%\usepackage[hyphens]{url}
%\usepackage{hyperref}
\usepackage{listofitems}
\usepackage{xpatch}
\usepackage{mhchem}
\usepackage{fancyhdr}
\usepackage{enumitem}
\setlist[itemize]{leftmargin=2.5em}
\setlist[enumerate]{leftmargin=2.5em}

\newcommand{\searchreplace}[3]{\patchcmd{#1}{#2}{#3}{}{}}


% setup math environments
\newtheoremstyle{thmstyle}
  {1em} % Space above
  {1em} % Space below
  {} % Body font
  {} % Indent amount
  {\bfseries} % Theorem head font
  {.} % Punctuation after theorem head
  {.5em} % Space after theorem head
  {} % Theorem head spec (can be left empty, meaning `normal')

% set theorem style
\theoremstyle{thmstyle}
\newtheorem{theorem}{Theorem}{}
\newtheorem{lemma}{Lemma}{}
\newtheorem{corollary}{Corollary}{}

% set equation numbering
\numberwithin{equation}{section}


% setup first page
\thispagestyle{empty} % stops header on first page
\pagestyle{fancy}
\fancyhf{}
\fancyhead[LE,RO]{{\color{col1}\thepage}}


% set what the center even header looks like depending on how many authors given.
% todo: make sure character length doesn't exceed a threshold

% understanding the author list
%      \au{name1}~\add{address_number1}{\corr},~
%      \au{name2}~\add{address_number2}{},~
%      \au{name3}~\add{address_number1}{}
% the variable \mylist will look like (with 1-indexing):
% 	[name,address_numer1*,name2,address_numer2,name3,address_number1]
% and \mylist[3] = name2

%single author:
%\au{First Author}~\add{1}{\corr}

% use \showitems\mylist to see the whole list

%

\setsepchar{~}
\fancyhead[CE]{\sffamily
	{\begingroup
     \if@author@provided
     	\readlist*\mylist{\@author}
		
		% single author
		\ifnum \mylistlen < 3
			{\sffamily\color{col1} \mylist[1]}
		\else
			% two authors
			\ifnum \mylistlen < 5
				{\sffamily\color{col1} \mylist[1], \mylist[3]}
	    	\else
	    		% three authors
	    		\ifnum \mylistlen < 7
	    			{\sffamily\color{col1} \mylist[1], \mylist[3], \mylist[5]}
	    		\else
	    			\ifnum \mylistlen < 9
	    				{\sffamily\color{col1} \mylist[1], \mylist[3], \mylist[5], \mylist[7]}
	    			\else
						{\sffamily\color{col1} \mylist[1], \mylist[3], \mylist[5], \mylist[7], \textit{et. al.}}
					\fi
				\fi
        	\fi
     	\fi
     \vspace{-3pt}%
	 \fi 
   \endgroup
   }
}

% check for shortened title in subtitle
\newcommand{\checkheadertitle}{%
    \headertitlecheck
    \ifheadertitle
	% not empty
	\fancyhead[CO]{{\sffamily\color{col1} \@headertitle}}
	\else
	\fancyhead[CO]{{\sffamily\color{col1} \@title}}
%	\fancyhead[CO]{{\color{col1} \@headertitle}}
	\fi
}




\fancyhead[RE,LO]{{\sffamily\color{col1}\papernumber@info}}

\endinput





