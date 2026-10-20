\version "2.24.0"

\header {
  title = \markup \fontsize #3 \bold "Room 215 — Trombone Solo"
  subtitle = "Mambo Descarga — Section E (C7 Open for Solos)"
  composer = "Rick Faulkner"
  arranger = "Practice Chart with Slide Positions"
  tagline = "Prepared for Afterschool Latin Jazz Ensemble"
}

\paper {
  #(set-paper-size "letter")
  margin-top = 15\mm
  margin-bottom = 15\mm
  margin-left = 20\mm
  margin-right = 20\mm
}

tromboneSolo = \relative c {
  \clef bass
  \key f \major
  \time 4/4
  \tempo "Mambo descarga" 4 = 170

  % Bar 1
  bes'8^"1" e,^"2" g4^"4" bes8^"1" g^"4" e4^"2" |
  % Bar 2
  d4^"4" e8^"2" g^"4" e4^"2" r4 |
  % Bar 3
  g8^"4" e^"2" bes'4^"1" bes8^"1" g^"4" e4^"2" |
  % Bar 4
  e4^"2" g8^"4" e^"2" d4^"4" bes'2^"1" | \break
  % Bar 5
  bes8^"1" d,^"4" e^"2" g^"4" bes4^"1" g4^"4" |
  % Bar 6
  bes8^"1" g^"4" e^"2" d^"4" r2 |
  % Bar 7
  g4^"4" e8^"2" g^"4" bes^"1" g^"4" e8^"2" r8 |
  % Bar 8
  g4^"4" e4^"2" d4^"4" bes'1^"1" \bar "|."
}

\score {
  <<
    \new ChordNames {
      \chordmode {
        c1:7 c1:7 c1:7 c1:7
        c1:7 c1:7 c1:7 c1:7
      }
    }
    \new Staff \with {
      instrumentName = "Trombone"
    } {
      \tromboneSolo
    }
  >>
  \layout {
    \context {
      \Staff
      \consists "Line_break_engraver"
    }
  }
}