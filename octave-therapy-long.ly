\version "2.22.0"

\header {
  composer-last-name = "Whetsell"
  composer-first-name = "Nathan"
  title = "Octave Therapy"
  opus = "ca. 2021"
  instrument = "Horn in F"
}

\language "english"

\relative {
  \tempo 4=60

  c'16-. \mf 16-. 16-. 16( c'4 c,4 c'4) |
  c,16-. 16-. 16-. 16-. c'4-- c,4-- c'4-- |
  c,2 r\fermata |

  c-sharp16-.^"Ascend chromatically as high as you can" 16-. 16-. 16( c-sharp'4 c-sharp,4 c-sharp'4) |
  c-sharp,16-. 16-. 16-. 16-. c-sharp'4-- c-sharp,4-- c-sharp'4-- |
  c-sharp,2 r\fermata | \break

  d16-. 16-. 16-. 16( d'4 d,4 d'4) |
  d,16-. 16-. 16-. 16-. d'4-- d,4-- d'4-- |
  d,2 r\fermata |

  d-sharp16-. 16-. 16-. 16( d-sharp'4 d-sharp,4 d-sharp'4) |
  d-sharp,16-. 16-. 16-. 16-. d-sharp'4-- d-sharp,4-- d-sharp'4-- |
  d-sharp,2 r\fermata | \break

  e16-. 16-. 16-. 16( e'4 e,4 e'4) |
  e,16-. 16-. 16-. 16-. e'4-- e,4-- e'4-- |
  e,2 r\fermata |

  f16-. 16-. 16-. 16( f'4 f,4 f'4) |
  f,16-. 16-. 16-. 16-. f'4-- f,4-- f'4-- |
  f,2 r\fermata | \break

  f-sharp16-. 16-. 16-. 16( f-sharp'4 f-sharp,4 f-sharp'4) |
  f-sharp,16-. 16-. 16-. 16-. f-sharp'4-- f-sharp,4-- f-sharp'4-- |
  f-sharp,2 r\fermata |

  g16-. 16-. 16-. 16( g'4 g,4 g'4) |
  g,16-. 16-. 16-. 16-. g'4-- g,4-- g'4-- |
  g,2 r\fermata | \break

  g-sharp16-. 16-. 16-. 16( g-sharp'4 g-sharp,4 g-sharp'4) |
  g-sharp,16-. 16-. 16-. 16-. g-sharp'4-- g-sharp,4-- g-sharp'4-- |
  g-sharp,2 r\fermata |

  a16-. 16-. 16-. 16( a'4 a,4 a'4) |
  a,16-. 16-. 16-. 16-. a'4-- a,4-- a'4-- |
  a,2 r\fermata | \break

  a-sharp16-. 16-. 16-. 16( a-sharp'4 a-sharp,4 a-sharp'4) |
  a-sharp,16-. 16-. 16-. 16-. a-sharp'4-- a-sharp,4-- a-sharp'4-- |
  a-sharp,2 r\fermata |

  b16-. 16-. 16-. 16( b'4 b,4 b'4) |
  b,16-. 16-. 16-. 16-. b'4-- b,4-- b'4-- |
  b,2 r\fermata | \break

  c16-. 16-. 16-. 16( c'4 c,4 c'4) |
  c,16-. 16-. 16-. 16-. c'4-- c,4-- c'4-- |
  c,2 r\fermata | \bar "|."
}

\paper {
  #(set-paper-size "letter")
  left-margin = 0.5\in
  top-margin = 0.5\in
  right-margin = 0.5\in
  bottom-margin = 0.5\in

  % Based on
  % https://github.com/lilypond/lilypond/blob/master/ly/titling-init.ly
  bookTitleMarkup = \markup {
    \override #'(baseline-skip . 3.5)
    \column {
      \fill-line {
        \abs-fontsize #20
        \fromproperty #'header:title
        \concat {
          \abs-fontsize #14
          \fromproperty #'header:composer-first-name
          \abs-fontsize #14
          " "
          \abs-fontsize #20
          \fromproperty #'header:composer-last-name
        }
      }
      \abs-fontsize #10
      \fill-line {
        \fromproperty #'header:instrument
        \fromproperty #'header:opus
      }
      \vspace #1.5
    }
  }

  scoreTitleMarkup = \markup {
    \column {
      \fill-line {
        \abs-fontsize #20
        \fromproperty #'header:piece
      }
      \vspace #0.375
    }
  }

  evenHeaderMarkup = \markup {
    \abs-fontsize #10
    \column {
      \fill-line {
        \on-the-fly #not-part-first-page \fromproperty #'header:title
        \on-the-fly #not-part-first-page \fromproperty #'header:composer-last-name
        \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string
      }
      \on-the-fly #not-part-first-page \vspace #1.5
    }
  }

  oddHeaderMarkup = \evenHeaderMarkup
}

\layout {
  indent = 0
  ragged-last = ##t
}

\header {
  tagline = ##f
}
