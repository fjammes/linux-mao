\version "2.24.3"

bassTab = \relative c, {
  \clef "bass_8"
  \key fis \major
  \time 4/4

  % Mesure 1
  dis'8 fis16 eis16
  r16
  fis8 \staccato
  eis16~ eis16
  \deadNote eis16
  \deadNote eis16
  dis16
  eis8. f,,16

  % Mesure 2
  ais16\4 ais\4
  \afterGrace ais8\4\glissando {
  \stemDown \hideNotes
  g16 }
  \unHideNotes
  r8
  \deadNote ais16\4 ais16\4~ ais16\4
  gis16 ais16\4 ais16\4~ ais16\4
  gis16 ais8\4

  % Mesure 3
  b8 b16 gis16
  fis8 \deadNote fis16 fis16
  r16 \deadNote b16 \deadNote b16 b16~
  b16 gis16 fis16 gis16~

  % Mesure 4
  gis16 fis16 gis8
  \deadNote ais8\4 \deadNote ais16\4 ais16~\4
  ais16\4 gis16 ais16\4 ais16\4
  r16 \deadNote dis16 \deadNote dis16 dis16

  % Mesure 5
  dis'8 fis16 eis16
  r16 fis16 r16
  eis32(\glissando fis32)
  (\glissando eis16) dis16 cis16 ais16\2
  gis16\2 \parenthesize f16\3 dis8

  % Mesure 6
  ais16\4 gis\4 ais8\4
  r8 \deadNote ais16\4 ais16\4~
  ais16\4 gis16 ais16\4 ais16\4~ ais16\4
  gis16 ais8\4

  % Mesure 7
  b8 b16 gis16
  fis8 \deadNote fis16 fis16
  r16 \deadNote fis16 \deadNote fis16 b16~
  b16 gis16 fis8

  % Mesure 8
  \tuplet 3/2 { gis \staccato gis \staccato gis \staccato }
  \tuplet 3/2 { gis \staccato gis \staccato gis \staccato }
  \tuplet 3/2 { ais\4 \staccato ais\4 \staccato ais\4 \staccato }
  \tuplet 3/2 { ais\4 \staccato ais\4 \staccato dis\3 }

  % Mesure 9
  cis'8 e16 dis16
  r16 e16 r16 dis16~
  dis16 \deadNote dis16 \deadNote dis16 cis16
  dis16(\glissando e16)
  (\glissando dis16)
  e,,16

  % Mesure 10
  gis16 gis
  \afterGrace gis8\glissando {
  \stemDown \hideNotes
  g16 }
  \unHideNotes
  r8 \deadNote gis16 gis16~
  gis16 fis16 gis16 gis16~
  gis16 fis16 gis16 gis16

  % Mesure 11
  a16\4 a\4 fis8
  e8 \deadNote e16 e16
  r16 e8 a16\4~
  a e eis fis~

  % Mesure 12
  fis e
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