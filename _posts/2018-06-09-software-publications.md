---
layout: single
title:  "Publishing software"
date:   2018-07-09 03:20:00 +0000
categories: publishing software
---

With Maria Bruna, I have been writing a software tutorial paper on how to 
implement common models in mathematical biology using a software package 
developed by us (Aboria). It was surprisingly difficult to accomplish this task, 
especially given the wide variety of tools for interleaving code and the written 
word that currently exist (e.g. Doxygen, Sphinx, Boost Quick Books). However, 
none of these tools can yet be used in the traditional scientific publication 
workflow, that is almost exclusively based on latex or word. Below are some of 
the problems and possible solutions that we have faced. The first two heading 
are more technical and focus on this particular paper. The latter two heading 
are more general in nature and focus on software papers in general:

## Including and testing code snippets

The paper walked the reader through an Aboria program written in C++, 
interleaving code snippets with text and equations explaining what part of the 
mathematical model was being implemented. The paper was written in latex, and 
the popular `listings` latex package was used to include and highlight the code, 
which has the following limitations:
- code could be written directly into the paper source .tex file, but this could 
  not be compiled, run and tested, leading to inevitable bugs appearing in the 
  code
- the alternative was to keep a separate source file (which could be compiled 
  and run) and instruct the `listings` package to include specific lines of code 
  from that source file. However, even small edits to the code resulted in a new 
  set of line numbers, requiring a large amount of manual resetting of line 
  numbers in the latex file.
- code snippets are similar to equations in that you wish them to be placed 
  exactly *here* in the text (i.e. not floating like figures). However, code 
  snippits suffer if they are split over subsequent pages, as a reader would 
  generally have to see the whole snippet at once to gain a proper 
  understanding. This makes properly formatting the placement of code snippets 
  difficult

Possible Solutions: These problems have been solved in other packages. For 
example, Sphinx, Doxygen, and Boost Quick Books all allow you to include code 
snippets using text labels, eliminating the need for line numbers. There are 
even latex packages that solve these problems, for example PythonTeX 
(https://github.com/gpoore/pythontex) which allows the user to run python code 
from within a latex document. However, these generally rely on calling tools 
external to latex, so would rely on publishers setting up their own systems to 
allow these packages to be used.

## HTML and links to documentation

Generally documentation produced by tools such as Doxygen or Sphinx is much more 
suited to describing software and code than scientific paper formats such as 
pdf. This is primarily due to the use of HTML and hyperlinks
- HTML and links allow for a much more non-linear reading flow. If the 
  documentation mentions a particular software function or class, its name is 
  generally linked to a complete description of what that function or class 
  does, allowing the reader to quickly scan the description before returning to 
  their original location. 
- HTML is also much easier for readers to copy and paste code snippets, as pdf 
  viewers can suffer here, and the dynamic nature of HTML mean that if code 
  snippets are included with line numbers these can be removed prior to copying.
- HTML does not suffer from being restricted to individual pages like pdf, 
  meaning that it is much easier to format code and not worry that it will be 
  broken across pages.

Possible Solutions: Many publishers produce a web or html version of each paper, 
so use of this format could be further encouraged by publishers. Tools such as 
Boost Quick Books can interface directly to common formats such as Doxygen to 
allow users to automatically link function and class names to the corresponding 
html documentation 

## Software papers quickly becoming out-of-date

The development of a software package is a dynamic process which, for successful 
packages, has no end-date. This is particularly true for more modern practices 
such as Agile software development, which emphasis constant evolution and 
improvement of code over isolated, large releases. 

Unfortunately, this leads to papers describing software to become quickly 
out-of-date and contain stale or misleading information on the current state of 
the software. This is particularly problematic for successful packages, which 
might have a highly cited original paper which is viewed more often than any 
additional follow-up papers. In addition, any follow-up papers would either 
repeat much of the information of original, or be much smaller in scope, leading 
to a situation where *none* of the published papers adequately describes the 
software package in its entirety.

Possible Solutions: Publishers could allow for minor or major paper revisions, 
with a more streamlined review process

## Review the code as well as the paper

Online code repositories such as GitHub are very useful (often more so than 
published papers) because they often collect many metrics that can be used to 
judge the quality of software packages. For example, is the code tested? What is 
the percent testing coverage. Is the code well commented, and documented? Is the 
project active? How many developers and commits have been added in the previous 
few months? Does static analysis of the code throw up many warnings of poor 
coding practices? How many people are actively using the code? In fact there are 
website that specialise in analysing the code of open source projects and 
collecting this type of data (see for example OpenHub: https://www.openhub.net).

Possible Solutions: Rather than just reviewing the paper describing the 
software, journals should be involved in reviewing the code behind the paper. 
Both manually through the peer review process, and automatically through metrics 
like those described above.

