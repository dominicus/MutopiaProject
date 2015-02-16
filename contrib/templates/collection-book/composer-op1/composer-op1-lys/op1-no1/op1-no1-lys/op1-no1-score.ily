\version "2.18.2"

%-------Typeset music and generate midi
\score {
    \context PianoStaff <<
        %-Midi instrument values at 
        % http://lilypond.org/doc/v2.18/Documentation/snippets/midi#midi-demo-midiinstruments
        \set PianoStaff.midiInstrument = "acoustic grand"
        \new Staff = "upper" { \clef treble \global \upperStaff }
        \new Staff = "lower" { \clef bass \global \lowerStaff }
    >>
    \layout{ }
    \midi  { \tempo 4 = 90 }
}
