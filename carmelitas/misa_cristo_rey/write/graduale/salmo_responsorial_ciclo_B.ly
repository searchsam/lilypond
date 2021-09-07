% ****************************************************************
%	Pricipe de los siglos - Melodia inspirada en las composiciones de Mons Marco Frisina
%   	Texto y musica con acompañamiento
%	by serach.sam@
% ****************************************************************
\language "espanol"
\version "2.19.82"

#(set-global-staff-size 19.8)

% --- Cabecera
\markup { \fill-line { \center-column { \fontsize #5 \smallCaps "Melodia Responsorial" \fontsize #2 "Misa de Cristo Rey" "Graduale - Salmo Responsorial Ciclo B - Solemnidad Cristo Rey del Universo"} } }
\markup { \fill-line { " " \center-column { \fontsize #2 "Linda Martínez" } } }
\markup { \fill-line { " " \center-column { \fontsize #2 "Samuel Gutiérrez" } } }
\header {
  copyright = "Creative Commons Attribution 3.0"
  tagline = \markup { \with-url #"http://lilypond.org/web/" { LilyPond ... \italic { music notation for everyone } } }
  breakbefore = ##t
}

% --- Musica

% --- Parametro globales
global = {
  \tempo "Adagio" 4 = 70
  \key re \minor
  \time 4/4
}

Music = \relative do' {
  R1*4		 		| \bar "||" \break

  re4^\markup{ \italic "Solo" } mi fa2 \breathe |
  sol4 fa8 mi re4 re \breathe	|
  fa4 mi8 re do4( re4~		|
  re2) r				| \bar "||" \break
  re4^\markup{ \italic "Todos" } mi <fa re>2 \breathe |
  <sol mi>4 <fa do>8 <mi do> re4 re \breathe |
  <fa re>4 mi8 re do4( re4~	|
  re2) r				| \bar "||" \break

  fa8^\markup{ "Estrofa I" \italic "Solo" } sol la la la la la la \breathe |
  \tuplet 3/2 {la8 fa sol} la2 r4 | \break
  la8 sol fa4 fa8 fa fa fa 	|
  fa fa fa mi re2 \breathe	| \bar "||" \break

  re4^\markup{ \italic "Todos" } mi <fa re>2 \breathe |
  <sol mi>4 <fa do>8 <mi do> re4 re \breathe |
  <fa re>4 mi8 re do4( re4~	|
  re2) r				| \bar "||" \break

  fa8^\markup{ "Estrofa II" \italic "Solo" } sol la la la la la la \breathe |
  \tuplet 3/2 {la8 fa sol} la4 la r | \break
  la8 sol fa fa fa fa4 r8 	|
  fa8 mi re4 re r 		| \break
  re8( sib) la4 r8 la la la 	|
  sib4( do) re2 \breathe		| \bar "||" \break

  re4^\markup{ \italic "Todos" } mi <fa re>2 \breathe |
  <sol mi>4 <fa do>8 <mi do> re4 re \breathe |
  <fa re>4 mi8 re do4( re4~	|
  re2) r				| \bar "||" \break

  fa8^\markup{ "Estrofa III" \italic "Solo" } sol la la la la la4\breathe |
  \tuplet 3/2 {la8( fa) sol} la4 la r | \break
  la8 sol fa fa fa fa fa fa 	|
  fa8 mi re4 re r 		| \break
  re8( sib) la4 la8 la la la	|
  sib4 do re2 \breathe 		| \bar "||" \break

  re4^\markup{ \italic "Todos" } mi <fa re>2 \breathe |
  <sol mi>4 <fa do>8 <mi do> re2 \breathe |
  <fa re>4 mi8 re do4 re4~	|
  re2 r				|

  \bar "|."
}
Words = \lyricmode {
  El Se -- ñor rei -- na, ves -- ti -- do de ma -- jes -- tad.
  El Se -- ñor rei -- na, ves -- ti -- do de ma -- jes -- tad.

  El Se -- ñor rei -- na, ves -- ti -- do de ma -- jes -- tad,
  el Se -- ñor, ves -- ti -- do~y ce -- ñi -- do de po -- der.

  El Se -- ñor rei -- na, ves -- ti -- do de ma -- jes -- tad.

  A -- sí~es -- tá fir -- me el or -- be y no va -- ci -- la.
  Tu tro -- no~es -- tá fir -- me des -- de siem -- pre,
  y tú e -- res e -- ter -- no.

  El Se -- ñor rei -- na, ves -- ti -- do de ma -- jes -- tad.

  Tus man -- da -- tos son fie -- les y se -- gu -- ros;
  la san -- ti -- dad es~el a -- dor -- no de tu ca -- sa,
  Se -- ñor, por dí -- as sin tér -- mi -- no.

  El Se -- ñor rei -- na, ves -- ti -- do de ma -- jes -- tad.
}

NotesSop = \relative do' {
  R1*3 fa1\p~  		| \bar "||"

  fa4 mi fa2		|
  mi2 fa			|
  re2 mi4 fa~		|
  fa1~  			| \bar "||"
  fa4 mi fa2		|
  mi2 fa			|
  re2 mi4 fa~		|
  fa1~			| \bar "||"

  fa4 la2.~		|
  la4 dos,2.		|
  dos4 re2.~		|
  re2 fa~		| \bar "||"

  fa4 mi fa2		|
  mi2 fa			|
  re2 mi4 fa~		|
  fa1~			| \bar "||"

  fa4 la2.~		|
  la4 dos,2.		|
  dos4 re2.~		|
  re4 fa2.		|
  re4 la'2.		|
  re,4 mi fa2~		| \bar "||"

  fa4 mi fa2		|
  mi2 fa			|
  re2 mi4 fa~		|
  fa1~			| \bar "||"

  fa4 la2.~		|
  la4 dos,2.		|
  dos4 re2.~		|
  re4 fa2.		|
  re4 la'2.		|
  re,4 mi fa2~		| \bar "||"

  fa4 mi fa2		|
  mi2 fa			|
  re2 mi4 fa~		|
  fa2 la			|
}
NotesAlt = \relative do' {
  re4 mi fa2		|
  sol4 fa8 mi re2	|
  fa4 mi8 re do4 re	|
  re1\p~			| \bar "||"

  re4 do re2		|
  do2 re			|
  sib2 do4 re~		|
  re1~			| \bar "||"
  re4 do re2		|
  do2 re			|
  sib2 do4 re~		|
  re1~			| \bar "||"

  re4 fa2.~		|
  fa4 la,2.		|
  la4 sib2.~		|
  sib2 re~		| \bar "||"

  re4 do re2		|
  do2 re			|
  sib2 do4 re~		|
  re1~			| \bar "||"

  re4 fa2.~		|
  fa4 la,2.		|
  la4 sib2.~		|
  sib4 re2.		|
  sib4 fa'2.		|
  sib,4 do re2~		| \bar "||"

  re4 do re2		|
  do2 re			|
  sib2 do4 re~		|
  re1~			| \bar "||"

  re4 fa2.~		|
  fa4 la,2.		|
  la4 sib2.~		|
  sib4 re2.		|
  sib4 fa'2.		|
  sib,4 do re2~		| \bar "||"

  re4 do re2		|
  do2 re			|
  sib2 do4 re~		|
  re2 fa			|
}
NotesTer = \relative do' {
  R1*3 la1\p~ 		| \bar "||"

  la4 sol la2		|
  sol2 la		|
  fa2 sol4 la~		|
  la1~ 			| \bar "||"
  la4 sol la2		|
  sol2 la		|
  fa2 sol4 la~		|
  la1~			| \bar "||"

  la4 do2.~		|
  do4 mi,2.		|
  mi4 fa2.~		|
  fa2 la~		| \bar "||"

  la4 sol la2		|
  sol2 la		|
  fa2 sol4 la~		|
  la1~			| \bar "||"

  la4 do2.~		|
  do4 mi,2.		|
  mi4 fa2.~		|
  fa4 la2.		|
  fa4 do'2.		|
  fa,4 sol la2~		| \bar "||"

  la4 sol la2		|
  sol2 la		|
  fa2 sol4 la~		|
  la1~			| \bar "||"

  la4 do2.~		|
  do4 mi,2.		|
  mi4 fa2.~		|
  fa4 la2.		|
  fa4 do'2.		|
  fa,4 sol la2~		| \bar "||"

  la4 sol la2		|
  sol2 la		|
  fa2 sol4 la~		|
  la2 do			|
}
NotesBas = \relative do {
  R1*3 re1\p~ 		| \bar "||"

  re4 do re2		|
  do2 re			|
  sib2 do4 re~		|
  re1~ 			| \bar "||"
  re4 do re2		|
  do2 re			|
  sib2 do4 re~		|
  re1~			| \bar "||"

  re4 fa2.~		|
  fa4 la,2.		|
  sol4 sib2.~		|
  sib2 re~		| \bar "||"

  re4 do re2		|
  do2 re			|
  sib2 do4 re~		|
  re1~			| \bar "||"

  re4 fa2.~		|
  fa4 la,2.		|
  sol4 sib2.~		|
  sib4 re2.		|
  sib4 fa'2.		|
  sib,4 do re2~		| \bar "||"

  re4 do re2		|
  do2 re			|
  sib2 do4 re~		|
  re1~			| \bar "||"

  re4 fa2.~		|
  fa4 la,2.		|
  sol4 sib2.~		|
  sib4 re2.		|
  sib4 fa'2.		|
  sib,4 do re2~		| \bar "||"

  re4 do re2		|
  do2 re			|
  sib2 do4 re~		|
  re2 fa			|
}

% --- acordes
armonias = \new ChordNames {
  \chordmode {
    \italianChords
    s1*3 re1:m
    s4 do4 re2:m do2 re2:m sib,2 do4 re4:m s1
    s4 do4 re2:m do2 re2:m sib,2 do4 re4:m s1

    s4 fa2. s4 la2.
    la4:7 sib2. s2 re2:m

    s4 do4 re2:m do2 re2:m sib,2 do4 re4:m s1

    s4 fa2. s4 la2.
    la4:7 sib2. s4 re2.:m
    sib4 fa2. sib4:m do4 re2:m

    s4 do4 re2:m do2 re2:m sib,2 do4 re4:m s1

    s4 fa2. s4 la2.
    la4:7 sib2. s4 re2.:m
    sib4 fa2. sib4:m do4 re2:m

    s4 do4 re2:m do2 re2:m sib,2 do4 re4:m s2 fa
  }
}

\score {
  <<
    \new Voice = "melodia" <<
      \set Staff.midiInstrument = #"choir aahs"
      \set Staff.midiMaximumVolume = #1.5
      \global \Music
    >>
    \new Lyrics = "melodia"
    \context Lyrics = "melodia" \lyricsto "melodia" \Words
    %\armonias
    \new PianoStaff <<
      \new Staff <<
        \set Staff.instrumentName = #"Organo"
        \set Staff.midiInstrument = #"church organ"
        \set Staff.midiMaximumVolume = #0.6
        \set Staff.printPartCombineTexts = ##f
        \partcombine
        << \global \NotesSop >>
        << \global \NotesAlt >>
      >>
      \new Staff <<
        \set Staff.midiInstrument = #"church organ"
        \set Staff.midiMaximumVolume = #0.6
        \clef bass
        \set Staff.printPartCombineTexts = ##f
        \partcombine
        << \global \NotesTer >>
        << \global \NotesBas >>
      >>
    >>
  >>
  \midi { }
  \layout { }
}

% --- Musica
\paper{
  #(set-default-paper-size "letter")
  indent=3.5\cm
  page-breaking = #ly:page-turn-breaking
}
