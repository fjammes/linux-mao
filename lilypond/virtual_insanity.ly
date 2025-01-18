\version "2.24.3"

\header {
  title = "Virtual Insanity"
  composer = "Jamiroquai"
}


bassTab = \relative c, {
  \clef "bass_8"
  \key fis \major
  \time 2/4

  \tempo 4 = 92
  \mark \markup { "Ternary mode : swing on sixteenth" }

  %
  % Refrain
  %

  \mark \markup { "Chorus" }
  % Mesure 1
  b16 b'16 r8 r4
  % Mesure 2
  \deadNote b,16 ais'16 eis16 d16\3 r4
  % Mesure 3
  dis16\3 dis'16\1 r8 fis,,16 fis'16  g,16 g'16\2
  % Mesure 4
  gis,16 gis'16\2 r8 r16 ais,8.

  % Mesure 1
  b16 b'16 r8 r4
  % Mesure 2
  r16 ais16 eis16 d16\3 r4
  % Mesure 3
  dis16\3 dis'16\1 r8 fis,,16 fis'16  g,16 g'16\2
  % Mesure 4
  gis,16 gis'16\2 r8 r8 \afterGrace gis8\4 \glissando {
  \stemDown \hideNotes
  a16 }
  \unHideNotes

  \mark \markup { "Verse" }
  % Mesure 1
  b16 b'16 r8 r4
  % Mesure 2
  \deadNote b,16 ais'16 eis16 d16\3 r4
  % Mesure 3
  dis16\3 dis'16\1 r8 fis,,16 fis'16  g,16 g'16\2
  % Mesure 4
  gis,16 gis'16\2 r8 r16 ais,8.

  % Mesure 1
  b16 b'16 r8 r4
  % Mesure 2
  r16 ais16 eis16 d16\3 r4
  % Mesure 3
  dis16\3 dis'16\1 r8 fis,,16 fis'16  g,16 g'16\2
  % Mesure 4
  gis,16 gis'16\2 r8 r8 \afterGrace gis8\4 \glissando {
  \stemDown \hideNotes
  a16 }
  \unHideNotes

  %
  % Pont
  %

  \mark \markup { "Bridge" }
  \time 4/4

  % Mesure 1
  dis8 fis16 eis16
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
  r16 \deadNote ais16 \deadNote ais16 dis16\3

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
  r8 \deadNote g16 gis16~
  gis16 fis16 gis16 gis16~
  gis16 fis16 gis16 gis16

  % Mesure 11
  a16\4 a\4 fis8
  e8 \deadNote e16 e16
  r16 e8 a16\4~
  a e eis fis~

  % Mesure 12
  fis e fis8
  \deadNote fis8 \deadNote fis16 gis~
  gis fis gis gis
  r gis8 cis16

  % Mesure 13
  cis'8 e16 dis16
  r16 e16 r16 dis16~
  dis16 \deadNote dis16 \deadNote dis16 cis16
  dis8. e,,16

  % Mesure 14
  gis16 gis
  \afterGrace gis8\glissando {
  \stemDown \hideNotes
  g16 }
  \unHideNotes
  r8 \deadNote g16 gis~
  gis fis gis gis~
  gis16 fis16 gis8

  % Mesure 15
  a\4 a16\4 fis16
  e8 \deadNote e16 e
  r \deadNote e \deadNote e a\4~
  a fis e8

  % Mesure 17
  fis16 fis fis8
  \deadNote g \deadNote g16 gis~
  gis fis gis gis
  r \deadNote a \deadNote a dis~\3

  % Mesure 18
  dis8 fis'16 eis
  r fis8 \staccato eis16~
  eis8 \deadNote eis16 dis
  eis8. \trill f,,16

  % Mesure 19
  ais16\4 ais\4
  \afterGrace ais8\4\glissando {
  \stemDown \hideNotes
  g16 }
  \unHideNotes
  r8
  \deadNote ais16\4 ais\4~
  ais\4 gis16 ais16\4 ais16\4
  r ais8.\4

  % Mesure 20
  b8 b16 gis
  fis8 \deadNote fis16 fis
  r \deadNote fis \deadNote fis b16~
  b16 gis16 fis16 gis16~

  % Mesure 21
  gis16 fis16 gis8
  \deadNote ais8\4 \deadNote ais16\4 ais16~\4
  ais16\4 gis16 ais16\4 ais16\4
  r16 \deadNote ais16\4 \deadNote ais16\4 dis16\3

  % Mesure 22 (3:46 m)
  dis'8 fis16 eis16
  r16 fis8 \staccato
  eis32(\glissando fis32)
  (\glissando eis16) dis16 cis16 ais16\2
  gis16\2 f16\3 cis'8\1 \trill

  % Mesure 23
  ais8\2 gis16\2 ais\2~
  \afterGrace ais\2 \glissando {
  \stemDown \hideNotes
  g16 }
  \unHideNotes
  r16
  \deadNote ais,\4 ais\4~
  ais\4 ais8\4 \staccato ais16\4
  r gis ais\4 ais\4

  % Mesure 24
  b8 b16 gis16
  fis8 \staccato \deadNote fis16 fis16
  r16 \deadNote fis16 \deadNote fis16 b16~
  b16 gis16 fis8

  % Mesure 25
  \tuplet 3/2 { gis \staccato gis \staccato gis \staccato }
  \tuplet 3/2 { gis \staccato gis \staccato gis \staccato }
  \tuplet 3/2 { ais\4 \staccato ais\4 \staccato ais\4 \staccato }
  \tuplet 3/2 { ais\4 \staccato ais\4 \staccato ais\4 }

  % Mesure 26
  \afterGrace dis4\4 \glissando {
  \stemDown \hideNotes
  c16 }
  r r r
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