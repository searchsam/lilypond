% Miserere
% searchsam
\language "espanol"
\version "2.23.2"

% --- Global parameters
%particle = 0
%jump = \break
%time = 4

% --- Includes
\include "global.ily"
\include "harmony.ily"
\include "solo-soprano.ily"
\include "solo-alto.ily"
\include "soprano.ily"
\include "alto.ily"
\include "tenor.ily"
\include "bass.ily"
% \include "metronome.ily"

% --- Global size
%#(set-global-staff-size \size)

% --- Header
\header {
  title = \markup{\fontsize #2 \medium \smallCaps \title}
  subtitle = \markup{\medium \subtitle}
  subsubtitle = \markup{\medium \subsubtitle}
  composer = \autor
  arranger = \markup {\right-column { \arranger "Agosto 2022"}}
  tagline = ##f
  breakbefore = ##t
}

% --- Music

% --- Harmony

% --- Sheet
\score {
  <<
    \harmonies
    \new Staff { <<
      \set Staff.instrumentName = "Solo 1"
      \set Staff.midiInstrument = #"choir aahs"
      %\set Staff.midiMaximumVolume = #1.5
      <<
        \new Voice = "solo-soprano" { << \global \solo-soprano-music >> }
        \new Lyrics \lyricsto "solo-soprano" { \solo-soprano-lyrics }
      >>
    >> }
    \new Staff { <<
      \set Staff.instrumentName = "Solo 2"
      \set Staff.midiInstrument = #"choir aahs"
      %\set Staff.midiMaximumVolume = #1.5
      <<
        \new Voice = "solo-alto" { << \global \solo-alto-music >> }
        \new Lyrics \lyricsto "solo-alto" { \solo-alto-lyrics }
      >>
    >> }
    \new ChoirStaff { <<
      \new Staff { <<
        \set Staff.instrumentName = "Soprano"
        \set Staff.midiInstrument = #"choir aahs"
        %\set Staff.midiMaximumVolume = #1.5
        <<
          \new Voice = "soprano" { << \global \soprano-music >> }
          \new Lyrics \lyricsto "soprano" { \soprano-lyrics }
        >>
      >> }
      \new Staff { <<
        \set Staff.instrumentName = "Contralto"
        \set Staff.midiInstrument = #"choir aahs"
        %\set Staff.midiMaximumVolume = #1.5
        <<
          \new Voice = "alto" { << \global \alto-music >> }
          \new Lyrics \lyricsto "alto" { \alto-lyrics }
        >>
      >> }
      \new Staff { <<
        \set Staff.instrumentName = "Tenor"
        \set Staff.midiInstrument = #"choir aahs"
        %\set Staff.midiMaximumVolume = #1.5
        <<
          \new Voice = "tenor" { << \global \tenor-music >> }
          \new Lyrics \lyricsto "tenor" { \tenor-lyrics }
        >>
      >> }
      \new Staff { <<
        \set Staff.instrumentName = "Bajo"
        \set Staff.midiInstrument = #"choir aahs"
        %\set Staff.midiMaximumVolume = #1.5
        <<
          \new Voice = "bass" { << \global \bass-music >> }
          \new Lyrics \lyricsto "bass" { \bass-lyrics }
        >>
      >> }
    >> }
  >>
  \layout {}
  \midi {}
}

% --- Paper
\paper {
  #(set-default-paper-size "letter")
  %page-breaking = #ly:page-turn-breaking
}
