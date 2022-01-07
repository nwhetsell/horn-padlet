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
  \tempo 4=60

  g'2\unstressed_\markup { \unstressedMarkup means \italic "breath attack" } 2 1 R1
  g-sharp2\unstressed 2 1 R1
  a2\unstressed 2 1 R1
  b-flat2\unstressed 2 1 R1
  b2\unstressed 2 1 R1
  c2\unstressed 2 1 R1 \bar "|."
}
