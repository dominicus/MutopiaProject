\version "2.18.2"

%%--------------------------------------------------------------------
% Mutopia Project
% LilyPond template for collections
% 
% This source file compiles a single piece for individual publication
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


%--Default staff size is 20
%--The staff size used here for the individual piece should match
%--the size used for the collection book.
#(set-global-staff-size 20)

% set custom name for output files (defaults to source-file prefix if omitted)
\bookOutputName "doe-op1-no2"

\include "op1-no2-heads.ily"
\include "op1-no2-music.ily"
\include "op1-no2-score.ily"
