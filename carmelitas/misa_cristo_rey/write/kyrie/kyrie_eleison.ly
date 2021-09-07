% ****************************************************************
%	Señor ten piedad - Melodia a modo del renacimiento
%   	Texto y musica con acompañamiento
%	by serach.sam@
% ****************************************************************
\language "espanol"
\version "2.19.82"

%#(set-global-staff-size 16.4)

% --- Cabecera
\markup { \fill-line { \center-column { \fontsize #5 \smallCaps "Señor ten piedad" \fontsize #2 "Misa Cristo Rey" } } }
\markup { \fill-line { " " \center-column { \fontsize #2 "Linda Martínez" } } }
\markup { \fill-line { " " \center-column { \fontsize #2 "Samuel Gutiérrez" } } }
\header {
  copyright = "Creative Commons Attribution 3.0"
  tagline = \markup { \with-url #"http://lilypond.org/web/" { LilyPond ... \italic { music notation for everyone } } }
  breakbefore = ##t
}

% --- Parametro globales
global = {
  \set Score.skipBars = ##t
  \clef "treble"
  \key re \minor
  \time 2/2

  % the actual music
  \skip 1*5

  % let finis bar go through all staves
  \override Staff.BarLine.transparent = ##f

  % finis bar
  \bar "|."
}

% --- Musica
cantusIncipit = {
  \set Staff.instrumentName = "Cantus"
  \clef "petrucci-g"
  \key fa \major
  \time 2/2
  la'1.
}

cantusNotes = \relative do ' {
  la'4^\markup{ \italic "Tutti"} fa2 fa4 |
  sol4 la2 sol4 |
  la2 r |
  la4 fa2 fa4 |
  sol4 la2. \fermata | \break
}

cantusLyrics = \lyricmode {
  Se -- ñor, ten pie -- dad, pie -- dad. Se -- ñor, ten pie -- dad.
}

cantusLyricsAltenative = \lyricmode {
  Cris -- to, ten pie -- dad, pie -- dad. Cris -- to, ten pie -- dad.
}

altusIncipit = {
  \set Staff.instrumentName = "Altus"
  \clef "petrucci-c3"
  \key fa \major
  \time 2/2
  fa'1.
}

altusNotes = \relative do' {
  r2 r4 fa4^\markup{ \italic "Tutti"} |
  re4 re do2 |
  re2 r |
  la'4 fa2 fa4 |
  sol4 la2. \fermata | \break
}

altusLyrics = \lyricmode {
  Se -- ñor, ten pie -- dad. Se -- ñor, ten pie -- dad.
}

altusLyricsAltenative = \lyricmode {
  Cris -- to, ten pie -- dad. Cris -- to, ten pie -- dad.
}

% --- invocacion #1
\score{
  <<
    \new Voice = "invocacion" {
      \override Staff.TimeSignature.stencil = #'()
      \override Stem.transparent = ##t
      \set Score.timing = ##f
      \override NoteHead.style = #'neomensural
      \key re \minor
      \relative do' {
        la4^\markup{ \italic "Solo"} la la do re re re re re re re do re mi re2
      }
    }
    \new Lyrics \lyricsto "invocacion" {
      \lyricmode {
        Tú que nos li -- bras -- te del pe -- ca -- do y de la muer -- te.
      }
    }
  >>
  \layout {
    indent = 1.5 \cm
    line-width = 17\cm
    ragged-right = ##f
  }
}

\score {
  <<
    \new StaffGroup = choirStaff <<
      \new Voice = "cantusNotes" <<
        \set Staff.instrumentName = #"Cantus"
        \incipit \cantusIncipit
        \global
        \cantusNotes
      >>
      \new Lyrics \lyricsto cantusNotes { \cantusLyrics }
      \new Voice = "altusNotes" <<
        \set Staff.instrumentName = #"Altus"
        \global
        \incipit \altusIncipit
        \altusNotes
      >>
      \new Lyrics \lyricsto altusNotes { \altusLyrics }
    >>
  >>
  \layout {
    \context {
      \Score
      \hide BarLine
    }
    \context {
      \Lyrics
      \consists "Bar_engraver"
      \consists "Separating_line_group_engraver"
    }
    \context {
      \Voice
      \hide Slur
      \remove "Forbid_line_break_engraver"
    }
    indent = 4.5\cm
    incipit-width = 2.5\cm
  }
}

% --- Invocacion #2
\score{
  <<
    \new Voice = "invocacion" {
      \override Staff.TimeSignature.stencil = #'()
      \override Stem.transparent = ##t
      \set Score.timing = ##f
      \override NoteHead.style = #'neomensural
      \key re \minor
      \relative do' {
        la4^\markup{ \italic "Solo"} la la la la do re re re re re re re re do re mi re2.
      }
    }
    \new Lyrics \lyricsto "invocacion" {
      \lyricmode {
        Tú que nos re -- con -- ci -- lias -- te con el Pa -- dre y nues -- tros her -- ma -- nos.
      }
    }
  >>
  \layout {
    indent = 1.5 \cm
    line-width = 17\cm
    ragged-right = ##f
  }
}

\score {
  <<
    \new StaffGroup = choirStaff <<
      \new Voice = "cantusNotes" <<
        \set Staff.instrumentName = #"Cantus"
        \incipit \cantusIncipit
        \global
        \cantusNotes
      >>
      \new Lyrics \lyricsto cantusNotes { \cantusLyricsAltenative }
      \new Voice = "altusNotes" <<
        \set Staff.instrumentName = #"Altus"
        \global
        \incipit \altusIncipit
        \altusNotes
      >>
      \new Lyrics \lyricsto altusNotes { \altusLyricsAltenative }
    >>
  >>
  \layout {
    \context {
      \Score
      \hide BarLine
    }
    \context {
      \Lyrics
      \consists "Bar_engraver"
      \consists "Separating_line_group_engraver"
    }
    \context {
      \Voice
      \hide Slur
      \remove "Forbid_line_break_engraver"
    }
    indent = 4.5\cm
    incipit-width = 2.5\cm
  }
}

% --- Invocacion #3
\score{
  <<
    \new Voice = "invocacion" {
      \override Staff.TimeSignature.stencil = #'()
      \override Stem.transparent = ##t
      \set Score.timing = ##f
      \override NoteHead.style = #'neomensural
      \key re \minor
      \relative do' {
        la4^\markup{ \italic "Solo"} la la la la la do re re re re re re do re mi re1
      }
    }
    \new Lyrics \lyricsto "invocacion" {
      \lyricmode {
        Tú que nos re -- su -- ci -- ta -- rás y glo -- ri -- fi -- ca -- rás con -- ti -- go.
      }
    }
  >>
  \layout {
    indent = 1.5 \cm
    line-width = 17\cm
    ragged-right = ##f
  }
}

\score {
  <<
    \new StaffGroup = choirStaff <<
      \new Voice = "cantusNotes" <<
        \set Staff.instrumentName = #"Cantus"
        \incipit \cantusIncipit
        \global
        \cantusNotes
      >>
      \new Lyrics \lyricsto cantusNotes { \cantusLyrics }
      \new Voice = "altusNotes" <<
        \set Staff.instrumentName = #"Altus"
        \global
        \incipit \altusIncipit
        \altusNotes
      >>
      \new Lyrics \lyricsto altusNotes { \altusLyrics }
    >>
  >>
  \layout {
    \context {
      \Score
      \hide BarLine
    }
    \context {
      \Lyrics
      \consists "Bar_engraver"
      \consists "Separating_line_group_engraver"
    }
    \context {
      \Voice
      \hide Slur
      \remove "Forbid_line_break_engraver"
    }
    indent = 4.5\cm
    incipit-width = 2.5\cm
  }
}

% --- Pagina
\paper{
  #(set-default-paper-size "letter")
  page-breaking = #ly:page-turn-breaking
}
