\version "2.24.2"

bassTab = \relative c, {
  \clef "bass_8"
  \key fis \major
  \time 4/4

  % Mesure 1
  dis'8 fis16 eis16
  r16
  fis8 \staccato
  eis16(eis16)
  \deadNote eis16
  \deadNote eis16
  dis16
  eis8. f,,16

  % Mesure 2
}

\score {
  <<
    \new Staff {
      \bassTab
    }
    \new TabStaff \with {
    stringTunings = #bass-tuning
  } {
      \bassTab
    }
  >>
}