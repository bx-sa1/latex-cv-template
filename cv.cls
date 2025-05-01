\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv}[2025/04/30 Custom CV Class]
\LoadClass{article}

\RequirePackage[a4paper,margin=0.5in]{geometry}
\RequirePackage{titlesec}
\RequirePackage{fontspec} 
\RequirePackage{fancyhdr}

\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

\newfontfamily{\icon}{SymbolsNerdFont-Regular.ttf}

\makeatletter

\titleformat{\section}
    {\Large\scshape\raggedright}
    {}{0em}
    {}
    [\titlerule]

\newcommand{\name}[1]{\renewcommand{\@name}{#1}}
\newcommand{\@name}{}
\newcommand{\email}[1]{{\icon } #1}
\newcommand{\phone}[1]{{\icon } #1}
\newcommand{\github}[1]{{\icon } #1}
\renewcommand{\and}{ $\vert$ }
\newcommand{\contact}[1]{\renewcommand{\@contact}{#1}}
\newcommand{\@contact}{}

\newcommand{\makeheader}{%
    \centerline{\Huge{\@name}}%
    \centerline{\makebox[0pt][c]{\@contact}}%
}

\newcommand{\cvInfo}[1]{\item \small{#1}}
\newcommand{\cvBeginItemize}{\begin{itemize}\setlength\itemsep{-0.5em}}
\newcommand{\cvEndItemize}{\end{itemize}\vspace{-2em}}
\newenvironment{cvHeading}%
{\noindent\ignorespaces}%
{\vspace{-0.5em}\ignorespacesafterend}

\newcommand{\cvSkill}[2]{\item \textbf{#1}{: #2}}
\newenvironment{cvSkills}%
{\cvBeginItemize}%
{\cvEndItemize}

\newenvironment{cvExperience}[4]{%
    \begin{cvHeading}
        \textbf{#1} \hfill #2 \\%
        \textit{\small#3} \hfill \textit{\small #4} %
    \end{cvHeading} %
    \cvBeginItemize{}
}{\cvEndItemize}

\newenvironment{cvProject}[3]{%
    \begin{cvHeading}
        \textbf{#1} $\vert$ {\small\emph{#2}} \hfill #3 %
    \end{cvHeading}
    \cvBeginItemize{}
}{\cvEndItemize}

\makeatother

