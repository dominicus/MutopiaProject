\version "2.18.2"

\include "op1-no1-defs.ily"

upperStaff =   \relative c'' {
  \repeat unfold 6 { 
    e4( d c a)
    d4( c b g)
    e'2 g
    d4.( e16 d b2)
  }
  a1
}

lowerStaff = \relative a' {
  \repeat unfold 6 {
    a,4 e'c e
    b4 e d e
    a,4 e'c e
    g,4 d'b d
  }
  a1 \bar "|."
}