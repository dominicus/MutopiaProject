\version "2.18.2"

%%-------------------------------------------------------------------------------------------------
% Mutopia Project
% LilyPond template for collections
%%-------------------------------------------------------------------------------------------------
%
% This source file needs to includes all definitions needed to compile the corresponding
% individual piece.
%
% To improve the maintainability of the collection, it's advantageous to use consistent definitions
% and naming convention throughout the collection.
%
% The template, however, allows the user to redefine variable names common to other individual 
% pieces.
%
%%-------------------------------------------------------------------------------------------------

%--------Collection-wide definitions
staffUp = \change Staff = "upper"
staffDown = \change Staff = "lower"
tupletBracketOff = \override TupletBracket.bracket-visibility = ##f

%--------Definitions with collection-wide names, redefined for each piece

global = {
  \key c \major
  \time 4/4
}

%--------Definitions specific to this piece