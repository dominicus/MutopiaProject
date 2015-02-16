\version "2.18.2"

%%--------------------------------------------------------------------
% Mutopia Project
% LilyPond template for collections
% 
% This source file generates the collection book
% 
%%--------------------------------------------------------------------


%---------------------------------------------------------------------
%  Paper-size setting must be commented out or deleted upon submission.
%  LilyPond engraves to paper size A4 by default.
%  Uncomment the setting below to validate your typesetting
%  in "letter" sizing.
%  Mutopia publishes both A4 and letter-sized versions.
%---------------------------------------------------------------------
% #(set-default-paper-size "letter")

% set custom name for output files (defaults to source-file prefix if omitted)
\bookOutputName "doe-op1-samples"

% allow nested include files
#(ly:set-option 'relative-includes #t)  

%---------------------------------------------------------------------
%--The following headers apply to the collection book
%
%--Refer to http://www.mutopiaproject.org/contribute.html
%--for usage and possible values for header variables.
%---------------------------------------------------------------------
\header {
    opus = "Opus 1"
    date = "1825"
    style = "Classical"
    source = "Edition Famous House, 1809"

    maintainer = "Eric Contributor"
    maintainerEmail = "eric (at) domain.com"
    license = "Public Domain"

    mutopiatitle = "Samples for Piano"
    mutopiaopus = "Op.1"
    mutopiacomposer = "DoeJ"
    %--A list of instruments can be found at http://www.mutopiaproject.org/browse.html#byInstrument
    %--Multiple instruments are listed between quotes separated by a comma
    mutopiainstrument = "Piano"

    % Footer, tagline, and copyright blocks are included here for reference
    % and spacing purposes only.  There's no need to change these.
    % These blocks will be overridden by Mutopia during the publishing process.
    footer = "Mutopia-2001/01/01-0"
    copyright = \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9 "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
    tagline = ##f
}

% -- COVER PAGES
\bookpart {
  \paper {
      % hides page numbers from title page and table of contents
      print-page-number = ##f
      
      % page margins for cover pages
      top-margin = 7 \cm                           %-minimum top-margin: 8mm
      left-margin = 4 \cm
      right-margin = 4 \cm
      
      %% Larger ToC title (optional):
      tocTitleMarkup = \markup \abs-fontsize #16 \bold \column {
                             \fill-line {  "Table of Contents"  }
                             \null\null
      }
      %% Double-spaced ToC entries (optional)
      tocItemMarkup = \markup \huge \column { 
                                \fill-line { \fromproperty #'toc:text \fromproperty #'toc:page }
                                \null
      }
  }
  
  %-- Title Page
  \markup {  \center-column {
                 \fill-line { \beam #70 #0 #0.7 }
                 \null\null\null\null\null
                 \fill-line { \abs-fontsize #32 \bold "Samples for Piano" }
                 \null\null\null
                 \fill-line { \abs-fontsize #25 "John Doe" }
                 \null\null\null\null
                 \fill-line { \beam #70 #0 #0.7 }
                 \null\null\null\null
                 \null\null\null\null
                 \fill-line { \abs-fontsize #13 "Opus 1" }
                 \null
                 \fill-line { \abs-fontsize #13 "1825" }
             }
  } \pageBreak
  
  %--Table of Contents
  \markuplist \table-of-contents
}

% Ideally, the collection book should have consistent margins and
% staff sizes across all individual pieces.
% Also, page turns for the book match those of the published
% individual pieces.

%-- FIRST PIECE
\include "op1-no1/op1-no1-lys/op1-no1-music.ily"
\bookpart {
  \tocItem \markup { "Sample 1: Moderato in A minor"  }
  \include "op1-no1/op1-no1-lys/op1-no1-heads.ily"
  % As needed, paper formatting applied to individual pieces
  % may be overriden by adding a new \paper block below
  %\paper { }
  \include "op1-no1/op1-no1-lys/op1-no1-score.ily"
}

%-- SECOND PIECE
\include "op1-no2/op1-no2-lys/op1-no2-defs.ily"
\include "op1-no2/op1-no2-lys/op1-no2-music.ily"
\bookpart {
  \tocItem \markup { "Sample 2: Allegro in C major"  }
  \include "op1-no2/op1-no2-lys/op1-no2-heads.ily"
  % As needed, paper formatting applied to individual pieces
  % may be overriden by adding a new \paper block below
  %\paper { }
  \include "op1-no2/op1-no2-lys/op1-no2-score.ily"
}