% ****************************************************************
%	Madre de la iglesia - Melodia inspirada en las composiciones de Mons Marco Frisina
%   	Texto y musica con acompañamiento
%	by serach.sam@
% ****************************************************************
\language "espanol"
\version "2.19.82"

#(set-global-staff-size 19.8)

% --- Cabecera
\markup { \fill-line { \center-column { \fontsize #5 \smallCaps "Madre de la Iglesia" \fontsize #2 "Misa de Cristo Rey" "Communio - Himno Memoria María, Madre de la Iglesia" } } }
%\markup { \fill-line { " " \right-column { \fontsize #2 "Letra: Pablo VI" } } }
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
  fa4 fa fa fa |
  fa4 fa fa fa |
  fa4 fa fa fa |
  fa4 fa fa fa |
  fa4 fa fa fa |
  fa4 fa fa fa |
  fa4 fa fa fa |
  fa4 fa fa fa |
  fa4 fa fa fa |
  fa4 fa fa fa |
  fa4 fa fa fa |
  fa4 fa fa fa |
  fa4 fa fa fa |
  fa4 fa fa fa |
  fa4 fa fa fa |
  fa4 fa fa fa |
  fa4 fa fa fa |
  fa4 fa fa fa |
  fa4 fa fa fa |
  fa4 fa fa fa |
  fa4 fa fa fa |
  fa4 fa fa fa |
  fa4 fa fa fa |
  fa4 fa fa fa |
  fa4 fa fa fa |
  fa4 fa fa fa |
  fa4 fa fa fa |
  fa4 fa fa fa |
  fa4 fa fa fa |
  fa4 fa fa fa |
  fa4 fa fa fa |
  fa4 fa fa fa |
  fa4 fa fa fa |
  fa4 fa fa fa |
  fa4 fa fa fa |
  fa4 fa fa fa |
  fa4 fa fa fa |
  fa4 fa fa fa |

  \bar "|."
}

Music_dos = \relative do' {
  R1*4 \bar "||" \break

  R1*8 | \break

  re4^\markup { \italic "Contralto" } re8 re do8 re mi( do) |
  sib8 do re sib do4 do		|
  re4 re8 re do re mi do		|
  sib do re sib la4 la \breathe	| \break
  re4 re8 re mi8 re do( mi)	|
  fa8 mi re fa sol4 sol		|
  fa4 fa8 mi re do sib re	|
  mi( fa) sol( mi) fa4 fa	| \break

  R1*8 | \break

  re4^\markup { \italic "Contalto" } re8 re do8 re mi do |
  sib8( do) re( sib) do4 do	|
  re4 re8 re do re mi( do) 	|
  sib do re sib la4 la 	| \breathe
  re4 re8 re mi8 re do mi	|
  fa8( mi) re fa sol4 sol	|
  fa4 fa8 mi re do sib re 	|
  mi( fa) sol mi fa4 fa 		| \bar "||" \break

  do1^\markup { \italic "Contralto" } |
  re1			|

  \bar "|."
}
Words_dos = \lyricmode {
  U -- na y o -- tra son ma -- dre y son vír -- gen,
  u -- na y o -- tra del Es -- pí -- ri -- tu con -- ci -- ben,
  u -- na y o -- tra sin man -- cha ni pe -- ca -- do,
  al Pa -- dre ce -- les -- tial en -- gen -- dran hi -- jos.

  Glo -- ria~a la Tri -- ni -- dad i -- nac -- ce -- si -- ble
  que ha que -- ri -- do mo -- rar en -- tre no -- so -- tros,
  en Ma -- rí -- a, la~I -- gle -- sia, en nues -- tra al -- ma,
  pa -- ra lle -- nar -- nos de su e -- ter -- no go -- zo.

  A -- mén.
}

NotesSop = \relative do' {
  R1*3 | fa1~\p | \bar "||"

  fa2 mi2	|
  re2 do 	|
  sib'2 la	|
  re,2 dos	|
  fa2 mi2	|
  la2 sib 	|
  fa2 sib	|
  dos,2 fa~	|

  fa2 mi2	|
  re2 do 	|
  sib'2 la	|
  re,2 dos	|
  fa2 mi2	|
  la2 sib 	|
  fa2 sib	|
  dos,2 fa~	|

  fa2 mi2	|
  re2 do 	|
  sib'2 la	|
  re,2 dos	|
  fa2 mi2	|
  la2 sib 	|
  fa2 sib	|
  dos,2 fa~	|

  fa2 mi2	|
  re2 do 	|
  sib'2 la	|
  re,2 dos	|
  fa2 mi2	|
  la2 sib 	|
  fa2 sib	|
  dos,2 fa	|

  mi1		|
  fa1		|
}
NotesAlt = \relative do' {
  re1 | mi2 fa | mi1 | re1~\p | \bar "||"

  re2 do 	|
  sib2 la	|
  sol'2 fa	|
  sib,2 la	|
  re2 do 	|
  fa2 sol	|
  re2 sol	|
  la,2 re~	|

  re2 do 	|
  sib2 la	|
  sol'2 fa	|
  sib,2 la	|
  re2 do 	|
  fa2 sol	|
  re2 sol	|
  la,2 re~	|

  re2 do 	|
  sib2 la	|
  sol'2 fa	|
  sib,2 la	|
  re2 do 	|
  fa2 sol	|
  re2 sol	|
  la,2 re~	|

  re2 do 	|
  sib2 la	|
  sol'2 fa	|
  sib,2 la	|
  re2 do 	|
  fa2 sol	|
  re2 sol	|
  la,2 re	|

  do1		|
  re1		|
}
NotesTer = \relative do {
  re1\p | mi2 re | mi1 | la1~ | \bar "||"

  la2 sol 	|
  fa2 mi		|
  re'2 do	|
  fa,2 mi	|
  la2 sol 	|
  do2 re		|
  la2 re		|
  mi,2 la~	|

  la2 sol 	|
  fa2 mi		|
  re'2 do	|
  fa,2 mi	|
  la2 sol 	|
  do2 re		|
  la2 re		|
  mi,2 la~	|

  la2 sol 	|
  fa2 mi		|
  re'2 do	|
  fa,2 mi	|
  la2 sol 	|
  do2 re		|
  la2 re		|
  mi,2 la~	|

  la2 sol 	|
  fa2 mi		|
  re'2 do	|
  fa,2 mi	|
  la2 sol 	|
  do2 re		|
  la2 re		|
  mi,2 la	|

  sol1		|
  la1		|
}
NotesBas = \relative do {
  la1\p | do2 sib | dos1 | re1~ | \bar "||"

  re2 do 	|
  sib2 la	|
  sol'2 fa	|
  sib,2 la	|
  re2 do 	|
  fa2 sol	|
  re2 sol	|
  la,2 re~	|

  re2 do 	|
  sib2 la	|
  sol'2 fa	|
  sib,2 la	|
  re2 do 	|
  fa2 sol	|
  re2 sol	|
  la,2 re~	|

  re2 do 	|
  sib2 la	|
  sol'2 fa	|
  sib,2 la	|
  re2 do 	|
  fa2 sol	|
  re2 sol	|
  la,2 re~	|

  re2 do 	|
  sib2 la	|
  sol'2 fa	|
  sib,2 la	|
  re2 do 	|
  fa2 sol	|
  re2 sol	|
  la,2 re	|

  do1		|
  re1		|
}

% --- acordes
armonias = \new ChordNames {
  \chordmode {
    \italianChords
    re1:m do2 sib la1:7 re1:m

    s2 do2 sib2 la2:m
    sol2:m fa2 sib2 la2
    re2:m do2 fa2 sol2:m
    re2:m sol2:m la2:7 re2:m

    s2 do2 sib2 la2:m
    sol2:m fa2 sib2 la2
    re2:m do2 fa2 sol2:m
    re2:m sol2:m la2:7 re2:m

    s2 do2 sib2 la2:m
    sol2:m fa2 sib2 la2
    re2:m do2 fa2 sol2:m
    re2:m sol2:m la2:7 re2:m

    s2 do2 sib2 la2:m
    sol2:m fa2 sib2 la2
    re2:m do2 fa2 sol2:m
    re2:m sol2:m la2:7 re2:m

    do1 re1:m
  }
}

\score {
  <<
    \new StaffGroup = "Comunion" <<
      \new Staff <<
        \set Staff.midiInstrument = #"woodblock"

        \new Voice = "melodia" <<
          \global \Music
        >>
      >>
      \new Staff <<
        \set Staff.instrumentName = #"Contralto"
        \set Staff.midiInstrument = #"oboe"
        \set Staff.midiMaximumVolume = #1.5
          
        \new Voice = "melodia_dos" <<
          \global \Music_dos
        >>
        \new Lyrics = "melodia_dos"
        \context Lyrics = "melodia_dos" \lyricsto "melodia_dos" \Words_dos
      >>
    >>
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
