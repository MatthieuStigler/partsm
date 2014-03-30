%%
%% Any modified versions of this file must be renamed
%% with new filenames distinct from partsm.cls.
%%
\def\fileversion{0.1}
\def\filename{partsm}
\def\filedate{2005/8/17}
%%
%% File 'partsm.cls', for documenting the partsm R package as a Bilcodec publication.
%%   http://www.et.ehu.es/biltoki/
%%
%% This file is mainly based on the package 'jss'
%% to use with LaTeX2e for publications in Journal of Statistical Software.
%%   http://www.jstatsoft.org/
%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{partsm}[\filedate\space\fileversion\space based on jss class by Achim Zeileis]
%% options
\newif\if@article
\newif\if@codesnippet
\newif\if@bookreview
\newif\if@softwarereview
\newif\if@review
\newif\if@shortnames

\@articletrue
\@codesnippetfalse
\@bookreviewfalse
\@softwarereviewfalse
\@reviewfalse
\@shortnamesfalse

\DeclareOption{article}{\@articletrue%
  \@codesnippetfalse \@bookreviewfalse \@softwarereviewfalse}
\DeclareOption{codesnippet}{\@articlefalse%
  \@codesnippettrue \@bookreviewfalse \@softwarereviewfalse}
\DeclareOption{bookreview}{\@articlefalse%
  \@codesnippetfalse \@bookreviewtrue \@softwarereviewfalse}
\DeclareOption{softwarereview}{\@articlefalse%
  \@codesnippetfalse \@bookreviewfalse \@softwarereviewtrue}
\DeclareOption{shortnames}{\@shortnamestrue}

\ProcessOptions
\LoadClass[11pt,a4paper,twoside]{article}
%% required packages
\RequirePackage{graphicx,a4wide,color,hyperref,ae,fancyvrb}
\RequirePackage[T1]{fontenc}

%% bibliography
\usepackage[round]{natbib}
\bibliographystyle{agsm}

%% paragraphs
\setlength{\parskip}{0.7ex plus0.1ex minus0.1ex}
\setlength{\parindent}{0em}

%% commands
\newcommand{\file}[1]{`\textsf{#1}'}
\let\code=\texttt
\let\proglang=\textsf
\newcommand{\pkg}[1]{{\normalfont\fontseries{b}\selectfont #1}}
\newcommand{\email}[1]{\href{mailto:#1}{\normalfont\texttt{#1}}}
\newcommand{\E}{\mathsf{E}}
\newcommand{\VAR}{\mathsf{VAR}}
\newcommand{\COV}{\mathsf{COV}}
\newcommand{\Prob}{\mathsf{P}}
%% for all publications
\newcommand{\Address}[1]{\def\@Address{#1}}
\newcommand{\Plaintitle}[1]{\def\@Plaintitle{#1}}
\newcommand{\Shorttitle}[1]{\def\@Shorttitle{#1}}
\newcommand{\Plainauthor}[1]{\def\@Plainauthor{#1}}
%\newcommand{\Volume}[1]{\def\@Volume{#1}}
\newcommand{\Year}[1]{\def\@Year{#1}}
\newcommand{\Month}[1]{\def\@Month{#1}}
\newcommand{\Issue}[1]{\def\@Issue{#1}}
%\newcommand{\Submitdate}[1]{\def\@Submitdate{#1}}
%% for articles and code snippets
\newcommand{\Acceptdate}[1]{\def\@Acceptdate{#1}}
\newcommand{\Abstract}[1]{\def\@Abstract{#1}}
\newcommand{\Keywords}[1]{\def\@Keywords{#1}}
\newcommand{\Plainkeywords}[1]{\def\@Plainkeywords{#1}}
%% for book and software reviews
\newcommand{\Reviewer}[1]{\def\@Reviewer{#1}}
\newcommand{\Booktitle}[1]{\def\@Booktitle{#1}}
\newcommand{\Bookauthor}[1]{\def\@Bookauthor{#1}}
\newcommand{\Publisher}[1]{\def\@Publisher{#1}}
\newcommand{\Pubaddress}[1]{\def\@Pubaddress{#1}}
\newcommand{\Pubyear}[1]{\def\@Pubyear{#1}}
\newcommand{\ISBN}[1]{\def\@ISBN{#1}}
\newcommand{\Pages}[1]{\def\@Pages{#1}}
\newcommand{\Price}[1]{\def\@Price{#1}}
\newcommand{\Plainreviewer}[1]{\def\@Plainreviewer{#1}}
\newcommand{\Softwaretitle}[1]{\def\@Softwaretitle{#1}}
\newcommand{\URL}[1]{\def\@URL{#1}}
%% for internal use
\newcommand{\Seriesname}[1]{\def\@Seriesname{#1}}
\newcommand{\Hypersubject}[1]{\def\@Hypersubject{#1}}
\newcommand{\Hyperauthor}[1]{\def\@Hyperauthor{#1}}
\newcommand{\Footername}[1]{\def\@Footername{#1}}
%\newcommand{\Firstdate}[1]{\def\@Firstdate{#1}}
%\newcommand{\Seconddate}[1]{\def\@Seconddate{#1}}
\newcommand{\Reviewauthor}[1]{\def\@Reviewauthor{#1}}
%% defaults
\author{Firstname Lastname\\Author(s)}
\title{Title}
\Abstract{--- --- an abstract is required --- ---}
\Plainauthor{\@author}
%\Volume{VV}
\Year{YYYY}
\Month{MMMMMM}
%\Issue{II}
%\Submitdate{yyyy-mm-dd}
%\Acceptdate{yyyy-mm-dd}
\Address{
  Firstname Lastname\\
  Author(s)\\
  Address, Country\\
  E-mail: \email{name@address}\\
  URL: \url{http://link/to/webpage/}
}

\Reviewer{Firstname Lastname\\Author(s)}
\Plainreviewer{Firstname Lastname}
\Booktitle{Book Title}
\Bookauthor{Book Author}
\Publisher{Publisher}
\Pubaddress{Publisher's Address}
\Pubyear{YYY}
\ISBN{x-xxxxx-xxx-x}
\Pages{xv + 123}
\Price{\$69.95 (P)}
\URL{http://link/to/webpage/}
\if@article
  \Seriesname{Issue}
  \Hypersubject{R-package documentation}
  \Plaintitle{\@title}
  \Shorttitle{\@title}
  \Plainkeywords{\@Keywords}

\Hyperauthor{\@Plainauthor}
\Keywords{---!!!---at least one keyword is required---!!!---}
\Footername{Author(s)}
%\Firstdate{\textit{Submitted:} \@Submitdate}
%\Seconddate{\textit{Accepted:} \@Acceptdate}

%% Sweave(-like)
\DefineVerbatimEnvironment{Sinput}{Verbatim}{fontshape=sl}
\DefineVerbatimEnvironment{Soutput}{Verbatim}{}
\DefineVerbatimEnvironment{Scode}{Verbatim}{fontshape=sl}
\newenvironment{Schunk}{}{}
\DefineVerbatimEnvironment{Code}{Verbatim}{}
\DefineVerbatimEnvironment{CodeInput}{Verbatim}{fontshape=sl}
\DefineVerbatimEnvironment{CodeOutput}{Verbatim}{}
\newenvironment{CodeChunk}{}{}
\setkeys{Gin}{width=0.8\textwidth}
%% new \maketitle
\def\@myoddhead{
%  {\color{white} R-package documentation}\\[-1.42cm]
%  \hspace{-2em} \includegraphics[height=23mm,keepaspectratio]{upv-ehu-logo} \hfill
%  \parbox[b][23mm]{118mm}{\hrule height 3pt
%           \center{
%           {\fontfamily{pzc} \fontsize{28}{32} \selectfont R-package documentation}
%   \vfill
%           {\it \small \@Month{} \@Year %
%    \hfill \href{http://www.et.ehu.es/biltoki/}{http://www.et.ehu.es/biltoki/}}}\\[0.1cm]
%     \hrule height 3pt}
}
\if@review
  \renewcommand{\maketitle}{\@oddhead{\@myoddhead}\\[3\baselineskip]
    {\large
    \noindent
    Reviewer: \@Reviewer
    \vspace{\baselineskip}
    \hrule
    \vspace{\baselineskip}
    \textbf{\@Booktitle}
    \begin{quotation} \noindent
    \@Reviewauthor
    \end{quotation}
    \vspace{0.7\baselineskip}
    \hrule
    \vspace{1.3\baselineskip}
    }

    \thispagestyle{empty}
    \markboth{\centerline{\@Shorttitle}}{\centerline{\@Hypersubject}}
    \pagestyle{myheadings}
  }
\else
  \def\maketitle{\@oddhead{\@myoddhead} \par
   \begingroup
     \def\thefootnote{\fnsymbol{footnote}}
     \def\@makefnmark{\hbox to 0pt{$^{\@thefnmark}$\hss}}
     \long\def\@makefntext##1{\parindent 1em\noindent
                              \hbox to1.8em{\hss $\m@th ^{\@thefnmark}$}##1}
     \@maketitle \@thanks
   \endgroup
   \setcounter{footnote}{0}
   \thispagestyle{empty}
   \markboth{\centerline{\@Shorttitle}}{\centerline{\@Hypersubject}}
   \pagestyle{myheadings}

   \let\maketitle\relax \let\@maketitle\relax
   \gdef\@thanks{}\gdef\@author{}\gdef\@title{}\let\thanks\relax
  }

  \def\@maketitle{\vbox{\hsize\textwidth \linewidth\hsize \vskip 1in
   {\centering
   {\LARGE\bf \@title\par}
     \def\And{\end{tabular}\hfil\linebreak[0]\hfil
              \begin{tabular}[t]{c}\large\bf\rule{\z@}{24pt}\ignorespaces}%
      \begin{tabular}[t]{c}\large\bf\rule{\z@}{24pt}\@author\end{tabular}%
   \vskip 0.3in minus 0.1in
   \hrule
   \begin{abstract}
   \@Abstract
   \end{abstract}}
   \textit{Keywords}:~\@Keywords.
   \vskip 0.1in minus 0.05in
   \hrule
   \vskip 0.2in minus 0.1in
  }}
\fi
%% sections, subsections, and subsubsections
\newlength{\preXLskip}
\newlength{\preLskip}
\newlength{\preMskip}
\newlength{\preSskip}
\newlength{\postMskip}
\newlength{\postSskip}
\setlength{\preXLskip}{1.8\baselineskip plus 0.5ex minus 0ex}
\setlength{\preLskip}{1.5\baselineskip plus 0.3ex minus 0ex}
\setlength{\preMskip}{1\baselineskip plus 0.2ex minus 0ex}
\setlength{\preSskip}{.8\baselineskip plus 0.2ex minus 0ex}
\setlength{\postMskip}{.5\baselineskip plus 0ex minus 0.1ex}
\setlength{\postSskip}{.3\baselineskip plus 0ex minus 0.1ex}

\newcommand{\jsssec}[2][default]{\vskip \preXLskip%
  \pdfbookmark[1]{#1}{Section.\thesection.#1}%
  \refstepcounter{section}%
  \centerline{\textbf{\Large \thesection. #2}} \nopagebreak
  \vskip \postMskip \nopagebreak}
\newcommand{\jsssecnn}[1]{\vskip \preXLskip%
  \centerline{\textbf{\Large #1}} \nopagebreak
  \vskip \postMskip \nopagebreak}

\newcommand{\jsssubsec}[2][default]{\vskip \preMskip%
  \pdfbookmark[2]{#1}{Subsection.\thesubsection.#1}%
  \refstepcounter{subsection}%
  \textbf{\large \thesubsection. #2} \nopagebreak
  \vskip \postSskip \nopagebreak}
\newcommand{\jsssubsecnn}[1]{\vskip \preMskip%
  \textbf{\large #1} \nopagebreak
  \vskip \postSskip \nopagebreak}

\newcommand{\jsssubsubsec}[2][default]{\vskip \preSskip%
  \pdfbookmark[3]{#1}{Subsubsection.\thesubsubsection.#1}%
  \refstepcounter{subsubsection}%
  {\large \textit{#2}} \nopagebreak
  \vskip \postSskip \nopagebreak}
\newcommand{\jsssubsubsecnn}[1]{\vskip \preSskip%
  {\textit{\large #1}} \nopagebreak
  \vskip \postSskip \nopagebreak}

\newcommand{\jsssimplesec}[2][default]{\vskip \preLskip%
%%  \pdfbookmark[1]{#1}{Section.\thesection.#1}%
  \refstepcounter{section}%
  \textbf{\large #1} \nopagebreak
  \vskip \postSskip \nopagebreak}
\newcommand{\jsssimplesecnn}[1]{\vskip \preLskip%
  \textbf{\large #1} \nopagebreak
  \vskip \postSskip \nopagebreak}

\if@review
  \renewcommand{\section}{\secdef \jsssimplesec \jsssimplesecnn}
  \renewcommand{\subsection}{\secdef \jsssimplesec \jsssimplesecnn}
  \renewcommand{\subsubsection}{\secdef \jsssimplesec \jsssimplesecnn}
\else
  \renewcommand{\section}{\secdef \jsssec \jsssecnn}
  \renewcommand{\subsection}{\secdef \jsssubsec \jsssubsecnn}
  \renewcommand{\subsubsection}{\secdef \jsssubsubsec \jsssubsubsecnn}
\fi
%% footer
\newlength{\footerskip}
\setlength{\footerskip}{2.5\baselineskip plus 2ex minus 0.5ex}

\newcommand{\makefooter}{%
  \vspace{\footerskip}

  \begin{samepage}
  \textbf{\large \@Footername: \nopagebreak}\\[.3\baselineskip] \nopagebreak
  \@Address \nopagebreak

  \vfill
  \hrule \nopagebreak
  \vspace{.1\baselineskip}
  {\fontfamily{pzc} \fontsize{13}{15} \selectfont R-package documentation}
  \hfill
%  \@Firstdate\\ 
  \\ \nopagebreak
  {\@Month{} \@Year.}
  \hfill
  %\@Seconddate\\ 
  \\ \nopagebreak
%  \url{http://www.et.ehu.es/biltoki/} \nopagebreak
  \vspace{.3\baselineskip}
  \hrule
  \end{samepage}
}
%% colors
%
%% For on-screen viewing, we use two different colors for R code
%% and R results.
%\usepackage{color}
\definecolor{darkred}{rgb}{0.6,0.0,0.0}%
\definecolor{darkblue}{rgb}{0.0,0.0,0.4}%
\DefineVerbatimEnvironment{Sinput}{Verbatim}{
  fontshape=sl,
  fontsize=\footnotesize,
  xleftmargin=0.7cm,
  formatcom=\color{darkblue}
}
\DefineVerbatimEnvironment{Soutput}{Verbatim}{
  fontsize=\footnotesize,
  xleftmargin=0.7cm,
  formatcom=\color{darkred}
}
\DefineVerbatimEnvironment{Scode}{Verbatim}{
  fontsize=\footnotesize,
  xleftmargin=0.7cm,
  formatcom=\color{darkred}
}
\fvset{listparameters={\setlength{\topsep}{0pt}}}
%
\definecolor{Red}{rgb}{0.7,0,0}
\definecolor{Blue}{rgb}{0,0,0.8}
\if@review
  \hypersetup{%
    hyperindex = {true},
    colorlinks = {true},
    linktocpage = {true},
    plainpages = {false},
    linkcolor = {Blue},
    citecolor = {Blue},
    urlcolor = {Red},
    pdfstartview = {Fit},
    pdfpagemode = {None},
    pdfview = {XYZ null null null}
  }
\else
  \hypersetup{%
    hyperindex = {true},
    colorlinks = {true},
    linktocpage = {true},
    plainpages = {false},
    linkcolor = {Blue},
    citecolor = {Blue},
    urlcolor = {Red},
    pdfstartview = {Fit},
    pdfpagemode = {UseOutlines},
    pdfview = {XYZ null null null}
  }
\fi
\AtBeginDocument{
  \hypersetup{%
    pdfauthor = {\@Hyperauthor},
    pdftitle = {\@Plaintitle},
    pdfsubject = {\@Hypersubject},
    pdfkeywords = {\@Plainkeywords}
  }
}
\AtBeginDocument{\maketitle}
\AtEndDocument{\makefooter}
\endinput
%%
%% End of file 'partsm.cls'.
