% Preamble
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{notes}
\LoadClass[12pt]{article}
\nofiles{}

% Customize titles
\RequirePackage{titlesec}
\titleformat{\section}
  {\large\bf\raggedright}
  {}{0em}
  {}
  [\titlerule]

% Package dump
\RequirePackage[utf8]{inputenc}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{parskip}
\RequirePackage{mathtools}
\RequirePackage{csquotes}
\RequirePackage{tikz-cd}
\RequirePackage{enumitem}
\RequirePackage[breakable, theorems, skins]{tcolorbox}
\RequirePackage{MinionPro}
\RequirePackage{mathrsfs}  
\RequirePackage{amsthm}
\usepackage[T1]{fontenc}
\RequirePackage{calligra}
\RequirePackage[normalem]{ulem}
\RequirePackage{mathrsfs}  
\RequirePackage{dutchcal}
\RequirePackage[normalem]{ulem}

\RequirePackage{graphicx}
\graphicspath{ {./images/} }

% Layout
\RequirePackage[left=3cm, right=6cm, top=2cm]{geometry} 
%\renewcommand{\baselinestretch}{1.2}

% Theorems
\newtheoremstyle{note}
{3pt}
{3pt}
{} % Body font
{} % Indent amount
{\bfseries} % Theorem head font
{.} % Punctuation after theorem head
{.5em} % Space after theorem head
{} % Theorem head spec (can be left empty, meaning ‘normal’)i

\theoremstyle{note}
\newtheorem{thm}{Theorem}
\newtheorem{lemma}{Lemma}
\newtheorem{prop}{Proposition}
\newtheorem{cor}{Corollary}
\newtheorem{defn}{Definition}
\newtheorem{ex}{Example}
\newtheorem{exe}{Exercise}

\newcommand{\imp}{\uline{Important! }}

% Absolute value and norm
\DeclarePairedDelimiter\abs{\lvert}{\rvert}%
\DeclarePairedDelimiter\norm{\lVert}{\rVert}%
\makeatletter
\let\oldabs\abs
\def\abs{\@ifstar{\oldabs}{\oldabs*}}
\let\oldnorm\norm
\def\norm{\@ifstar{\oldnorm}{\oldnorm*}}
\makeatother

% Problem box
\definecolor{vlightgray}{RGB}{230,230,230}
\newcommand{\problem}[1]{\begin{tcolorbox}[breakable, arc=0pt, outer arc=0pt, colframe=vlightgray, colback=vlightgray]#1\end{tcolorbox}}

\newcommand{\rec}{\textbf{Recall. }}

% Fancy lowercase script font with \textscr
\makeatletter
\DeclareFontEncoding{LS1}{}{}
\DeclareFontSubstitution{LS1}{stix}{m}{n}
\DeclareMathAlphabet{\mathscr}{LS1}{stixscr}{m}{n}
\makeatother

\newcommand{\textscr}[1]{%
  \text{\usefont{LS1}{stixscr}{m}{n}#1}%
}

% Pictures
\newcommand{\pic}[2]{
  \begin{center}\includegraphics[scale=#2]{#1}\end{center}
}

% Shortcuts
\newcommand{\R}{\mathbb R}
\newcommand{\C}{\mathbb C}
\newcommand{\Z}{\mathbb Z}
\newcommand{\T}{\mathbb T}
\newcommand{\N}{\mathbb N}

% Lists
\newlist{romanlist}{enumerate}{1}
\setlist[romanlist,1]{label=(\roman*)}
\newlist{alphlist}{enumerate}{1}
\setlist[alphlist,1]{label=(\alph*)}

\newcommand{\la}[1]{\begin{enumerate}[label=(\alph*)]\item{#1}\end{enumerate}}
\newcommand{\lb}[1]{\begin{enumerate}[label=(\alph*)]\setcounter{enumi}{1}\item{#1}\end{enumerate}}
\newcommand{\lc}[1]{\begin{enumerate}[label=(\alph*)]\setcounter{enumi}{2}\item{#1}\end{enumerate}}
\newcommand{\ld}[1]{\begin{enumerate}[label=(\alph*)]\setcounter{enumi}{3}\item{#1}\end{enumerate}}
\newcommand{\li}[1]{\begin{enumerate}[label=(\roman*)]\setcounter{enumi}{0}\item{#1}\end{enumerate}}
\newcommand{\lii}[1]{\begin{enumerate}[label=(\roman*)]\setcounter{enumi}{1}\item{#1}\end{enumerate}}
\newcommand{\liii}[1]{\begin{enumerate}[label=(\roman*)]\setcounter{enumi}{2}\item{#1}\end{enumerate}}
\newcommand{\liv}[1]{\begin{enumerate}[label=(\roman*)]\setcounter{enumi}{3}\item{#1}\end{enumerate}}
