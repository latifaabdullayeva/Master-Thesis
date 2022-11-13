%%
%% mpreport, an attempt at a fancier report style
%% @(#) $Id: mpreport.cls,v 1.17 2008/03/05 17:27:29 mxp Exp $

%% NOTE:  This class automatically specifies the a4paper option and
%%        loads the graphicx package.

%% The class begins by announcing itself as |mpreport.cls|.
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mpreport}[1999/06/04 A variant report class]

%% It passes all options on to the |report| class.
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions

%% It then loads the class |report|.
\LoadClass[a4paper]{report}

%% We also need the |ifthen| package.
\RequirePackage{ifthen}
\RequirePackage{titlesec}

%% It redefines |\chapter|.
   \renewcommand{\thechapter}{\arabic{chapter}}

   \renewcommand{\chapter}{%
     \if@openright\cleardoublepage\else\clearpage\fi
     \secdef\@chapter\@schapter%
     }

   \renewcommand{\@chapter}[2][?]{%
     \clearpage%
     \refstepcounter{chapter}%
     {%
\thispagestyle{plain}
       \parskip1ex%
       \parindent \z@ \raggedright \normalfont%
       \ifnum \c@secnumdepth >\m@ne%
       \par%
\mbox{}


       \vskip 3cm%
\raggedleft
\rule{8cm}{.2mm}\\ \vspace{-.2cm}
 \rule{8cm}{1.8mm}

       \vspace{.5cm}
       \par\hspace{4cm}%
       \hfill%
       \fi
       % set variables for the formatting of the chapter title
       \settoheight{\mp@chapnoht}{%
         \fontsize{2\EX}{2\EX}\sffamily\bfseries\thechapter}%
       \settoheight{\mp@chaptlht}{\parbox[b]{.9\textwidth}{%
           \raggedleft\sffamily\bfseries\Huge #1}}
       % set the chapter title                                %
       \raisebox{-\mp@chaptlht}{\raisebox{\mp@chapnoht}{%
           \parbox[b]{\textwidth}{

\raggedleft
\vspace{-.5cm}
\fontsize{2\EX}{2\EX}\sffamily\bfseries \chaptertitlename{} \thechapter \\
\sffamily\bfseries\Huge
             #1\\\vskip .75cm}}}%
       \chaptermark{#1}%
 			 \addtocontents{toc}{\protect\vspace{-.175cm}}	%175  400
       \addcontentsline{toc}{chapter}{\protect\numberline{\thechapter} #1}%
%\phantomsection
%\addtocontents{toc}{\protect\contentsline{chapter}{\numberline{\thechapter} #1}{}{\@currentHref}}%
 

\par\nobreak%
      
       }}
       
       
       \renewcommand{\subsection}{%
\addtocontents{toc}{\protect\vspace{-.05cm}}%
\@startsection{subsection}{2}{\z@}%
             {-3.25ex\@plus -1ex \@minus -.2ex}%
             {1.5ex \@plus .2ex}%
             {\normalfont\large\bfseries}}

       
       
       \renewcommand{\section}{%
 \addtocontents{toc}{\protect\vspace{-.05cm}}%
\@startsection {section}{1}{\z@}%
                                  {-3.5ex \@plus -1ex \@minus -.2ex}%
                                  {2.3ex \@plus.2ex}%
                                  {\normalfont\Large\bfseries}} 

   \renewcommand{\@schapter}[1]{%        % for chapter*{...}
     {%
       \newpage%
       \parskip1ex%
       \par%
       \hspace{-\marginWidth}\rule{\fullWidth}{.25mm}%
       \vspace{-\baselineskip}\par%
       \hspace{-\marginWidth}\rule{\marginWidth}{2mm}%
       \par\hspace{-\marginWidth}%
       % don't typeset the chapter number
       \hfill%
       % set variables for the formatting of the chapter title
       \settoheight{\mp@chapnoht}{%
         \fontsize{6\EX}{6\EX}\sffamily\bfseries\thechapter}%
       \settoheight{\mp@chaptlht}{\parbox[b]{.9\textwidth}{%
           \raggedleft\sffamily\bfseries\Huge #1}}
       % set the chapter title                                %
       \raisebox{-\mp@chaptlht}{\raisebox{\mp@chapnoht}{%
           \parbox[b]{.9\textwidth}{\raggedleft\sffamily\bfseries\Huge #1}}}%
       \par\nobreak%
       }%
     }
     
%% Dimensions
   \setlength\hoffset{-1in}
   \setlength\voffset{-1cm}
   \setlength\footskip{1.5cm}
   \setlength\textwidth{135mm}
   \setlength\textheight{.725\paperheight}
   \setlength{\oddsidemargin}{35mm}
   \setlength{\evensidemargin}{40mm}

   \parindent0mm
   \parskip1ex


   \newlength{\marginWidth}
   \setlength{\marginWidth}{5cm}
   

   \newlength{\fullWidth}
   \setlength{\fullWidth}{\textwidth}
   \addtolength{\fullWidth}{5cm}

   \newlength{\mp@chapnoht} % height of the chapter number
   \newlength{\mp@chaptlht} % height of the chapter title
   \newlength{\EX}
   \settoheight{\EX}{\normalsize X}
   \setlength{\EX}{2\EX}

\endinput
