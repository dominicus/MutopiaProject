\version "2.18.2"

%%--------------------------------------------------------------------
% Mutopia Project
% LilyPond template for collections
% 
% This source file includes header statement and paper settings
% used for book and individual publishing
%
% Do not compile
%
%%--------------------------------------------------------------------

%---------------------------------------------------------------------
%--Refer to http://www.mutopiaproject.org/contribute.html
%--for usage and possible values for header variables.
%---------------------------------------------------------------------
\header {
    title = "Samples for Piano"
    piece = "Moderato"
    composer = "John Doe (1801-1888)"
    opus = "Opus 1 No. 1"
    date = "1825"
    style = "Classical"
    source = "Edition Famous House, 1809"

    maintainer = "Eric Contributor"
    maintainerEmail = "eric (at) domain.com"
    license = "Public Domain"

    mutopiatitle = "Samples for Piano: Moderato"
    mutopiaopus = "Op.1 No. 2"
    mutopiacomposer = "DoeJ"
    %--A list of instruments can be found at http://www.mutopiaproject.org/browse.html#byInstrument
    %--Multiple instruments are listed between quotes separated by a comma
    mutopiainstrument = "Piano"


    % Footer, tagline, and copyright blocks are included here for reference
    % and spacing purposes only.  There's no need to change these.
    % These blocks will be overridden by Mutopia during the publishing process.
    footer = "Mutopia-2001/01/01-1"
    copyright = \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9 "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
    tagline = ##f
}

\paper {
    top-margin = 15\mm                              %-minimum top-margin: 8mm
    top-markup-spacing.basic-distance = #6         %-dist. from bottom of top margin to the first markup/title
    markup-system-spacing.basic-distance = #5      %-dist. from header/title to first system
    top-system-spacing.basic-distance = #12        %-dist. from top margin to system in pages with no titles
    %last-bottom-spacing.basic-distance = #12      %-pads music from copyright block on one-page scores only
    
    % Aligns "piece" title with indented first system
    scoreTitleMarkup = \markup { \column {
                                           \on-the-fly \print-all-headers { \bookTitleMarkup \hspace #1 }
                                           \fill-line {
                                             \concat { \abs-fontsize #10 \hspace #10
                                                       \bold \fromproperty #'header:piece }
                                             \fromproperty #'header:opus }
                                 }
    }
}

