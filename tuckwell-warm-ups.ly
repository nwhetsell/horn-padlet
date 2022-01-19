\version "2.22.0"

\include "lilypond-unstressed/unstressed.ily"
\include "titling.ily"
\paper {
  #(set-paper-size "letter")
  left-margin = 0.5\in
  top-margin = 0.5\in
  right-margin = 0.5\in
  bottom-margin = 0.5\in
}

\language "english"

\relative {
  <>^\markup { Also practice tongued (without slurs) }
  c''8( d e d c g e g) |
  c8( d e d c g c d) |
  e8( c g c e c e d |
  c2) r |
  d8( e d e d g, d' e) |
  d8( e d g, d' g, d' e) |
  c8( d e g, d' e g, e' |
  c2) r | \bar "|."
}

\relative {
  \time 3/4
  c'8( e g e g e) |
  g8( c d e c d) |
  e8( c e d g, d') |
  e4( c2) |
  d8( e d g, d' e) |
  c8( e c g c d) |
  e8( d g, d' e d) |
  c2 r4 | \bar "|."
}
