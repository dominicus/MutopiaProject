\version "2.18.2"

\include "op1-no2-defs.ily"

upperStaff =   \relative c'' {
  \repeat unfold 12 { c,4 e g b c e g d }
  c1
}

lowerStaff = \relative c {
  <c e g>1^\p <c f a>
  \repeat unfold 11 { <c e g>1 <c f a> }
  <c e g>1 \bar "|."
}