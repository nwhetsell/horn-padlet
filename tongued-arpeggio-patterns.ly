\version "2.22.0"

\include "titling.ily"
\paper {
  #(set-paper-size "letter")
  left-margin = 0.5\in
  top-margin = 0.5\in
  right-margin = 0.5\in
  bottom-margin = 0.5\in

  scoreTitleMarkup = \markup {
    \column {
      \fill-line {
        \abs-fontsize #20
        \fromproperty #'header:piece
      }
      \vspace #0.375
    }
  }
}

\language "english"

\score {
  \header { piece = "1" }
  \relative {
    \time 6/8

    #(define music #{
      \relative {
        c''8 g e c e g |
        c8 g e c \clef "bass" g e |
        c8 e g \clef "treble" c e g |
        c4. r |
      }
    #})

    \mark \default << \music { s8-0 } >> \bar "||" \break
    \mark \default \transpose c b, << \music { s8-2 } >> \bar "||" \break
    \mark \default \transpose c b-flat, << \music { s8-1 } >> \bar "||" \break
    \mark \default \transpose c a, << \music { s8-2-1 } >> \bar "||" \break
    \mark \default \transpose c a-flat, << \music { s8-3-2 } >> \bar "||" \break
  }
}

\score {
  \header { piece = "2" }
  \relative {
    \time 6/8

    #(define music #{
      \relative {
        c''8 g e c e g |
        c8 g e c g e |
        c8 e g c e g |
        c4 r8 << { g8 c e } \\ { r4. } >> |
        g,8 c e g4.~ |
        g8 e c g e c |
        g8 e c e g c |
        e8 g c e g e |
        c8 g e c g e |
        c4. r |
      }
    #})

    \mark \default << \music { s8-0 } >> \bar "||" \break
    \mark \default \transpose c b, << \music { s8-2 } >> \bar "||" \break
    \mark \default \transpose c b-flat, << \music { s8-1 } >> \bar "||" \break
    \mark \default \transpose c a, << \music { s8-2-1 } >> \bar "||" \break
    \mark \default \transpose c a-flat, << \music { s8-3-2 } >> \bar "||" \break
  }
}

\score {
  \header { piece = "3" }
  \relative {
    \time 6/8

    #(define music #{
      \relative {
        c''8 g e c e g |
        c8 g e c g e |
        c8 e g c e g |
        c4 r8 << { c8 e g } \\ { r4. } >> | \break
        \time 9/8
        c4.~8 g e c g e |
        \time 6/8
        c g e c e g |
        c8 e g c e g |
        c4. r |
      }
    #})

    \mark \default << \music { s8-0 } >> \bar "||" \break
    \mark \default \transpose c b, << \music { s8-2 } >> \bar "||" \break
    \mark \default \transpose c b-flat, << \music { s8-1 } >> \bar "||" \break
    \mark \default \transpose c a, << \music { s8-2-1 } >> \bar "||" \break
    \mark \default \transpose c a-flat, << \music { s8-3-2 } >> \bar "||" \break
  }
}
