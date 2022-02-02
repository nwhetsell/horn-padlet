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

warm-up-one = \relative {
  % \key c \major
  c''8( d e d c g e g) |
  c8( d e d c g c d) |
  e8( c g c e c e d |
  c2) r | \break
  d8( e d e d g, d' e) |
  d8( e d g, d' g, d' e) |
  c8( d e g, d' e g, e' |
  c2) r | \break
}
\new Staff {
  <>^\markup { Also practice tongued (without slurs) }
  \warm-up-one \bar "||"
  \transpose c b, { \warm-up-one } \bar "||"
  \transpose c b-flat, { \warm-up-one } \bar "||"
  \transpose c a, { \warm-up-one } \bar "||"
  \transpose c a-flat, { \warm-up-one } \bar "|."
}

warm-up-two = \relative {
  % \key c \major
  c'8( e g e g e) |
  g8( c d e c d) |
  e8( c e d g, d') |
  e4( c2) |
  d8( e d g, d' e) |
  c8( e c g c d) |
  e8( d g, d' e d) |
  c2 r4 | \break
}
\new Staff {
  \time 3/4
  \warm-up-two \bar "||"
  \transpose c b, { \warm-up-two } \bar "||"
  \transpose c b-flat, { \warm-up-two } \bar "||"
  \transpose c a, { \warm-up-two } \bar "||"
  \transpose c a-flat, { \warm-up-two } \bar "|."
}

warm-up-three = \relative {
  % \key c \major
  c'8( e g4 e') |
  c8( g c4 e) |
  g,4( e' c) |
  c8( d e d c4) |
  d4( g, e') |
  c8( d e d c d) |
  e4( g, d') |
  c2 r4 | \break
}
\new Staff {
  \time 3/4
  \warm-up-three \bar "||"
  \transpose c b, { \warm-up-three } \bar "||"
  \transpose c b-flat, { \warm-up-three } \bar "||"
  \transpose c a, { \warm-up-three } \bar "||"
  \transpose c a-flat, { \warm-up-three } \bar "|."
}
