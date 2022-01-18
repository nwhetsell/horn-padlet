\version "2.22.0"

\include "titling.ily"
\paper {
  page-breaking = #ly:one-line-auto-height-breaking
}

\language "english"

\relative {
  \tempo 4=60

  c'16-. 16-. 16-. 16( c'4 c,4 c'4) |
  c,16-. 16-. 16-. 16-. c'4-- c,4-- c'4-- |
  c,2 r\fermata |

  c-sharp16-.^"Ascend chromatically as high as you can" 16-. 16-. 16( c-sharp'4 c-sharp,4 c-sharp'4) |
  c-sharp,16-. 16-. 16-. 16-. c-sharp'4-- c-sharp,4-- c-sharp'4-- |
  c-sharp,2
}
