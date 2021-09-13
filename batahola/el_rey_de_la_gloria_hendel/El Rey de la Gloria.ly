% Created on Tue Jan 25 13:49:28 CST 2011
% by search.sam@ 

\version "2.23.2"

#(set-global-staff-size 18)

\markup { \fill-line { \center-column { \fontsize #5 "El Rey de la Gloria" \fontsize #2 "Del Mesías" \fontsize #3 \caps "FLAUTA I" } } }

\markup { \fill-line { " " \center-column { \fontsize #2 "G. F. Händel" } } }

\header {
 	copyright = "Creative Commons Attribution 3.0"
 	tagline = \markup { \with-url "http://lilypond.org/web/" { LilyPond ... \italic { music notation for everyone } } }
 	breakbefore = ##t
}

flauta = \new Staff {
	\time 4/4
	\tempo 4 = 110
	\set Staff.midiInstrument = "flute"
	\set Score.skipBars = ##t
	\key f \major
	\clef treble
	
	\relative c''' { 	
 % Type notes here  
  	R1*4 |%4
 	f4\mf e8. d16 c4 r4 |%5
 	c4 d8 (e16 f) e4 r8 c8 |%6
 	b4 b8. c16 c4 r8 c8 |%7
 	c8. c16 bes8. bes16 a8 f'8 f8 f8 |%8
 	f1( |%9
 	f2 f4) r4 |%10
 	\mark A R1*4 |%14
 	r2 r4 r8 c8 |%15
 	f4 f8. e16 d8 d8 r8 d8 |%16
 	g4 g8. f16 e4. r16 f16 |%17
 	d4 e8. f16 e8 c8 r4 |%18
 	\mark B R1*7 |%25
 	r2 r4 r8 c8 |%26
 	d8. c16 d8. e16 f8 c8 r8 c8 |%27
 	d8. c16 d8. e16 f8 c8 r8 c8 |%28
 	d8. c16 d8. e16 f8 c8 r4 |%29
 	R1*2 |%31
 	r2 r4 r8 c8 |%32
 	\mark C d8. (e16) f8 (g8) e4 r4 |%33
 	r4 r8 f,8 a8 bes16 (c16) d8 d8 |%34
 	c8 a8 r8 f8 a8 bes16 (c16) d8 d8 |%35
 	c8 a8 r4 r4 r8 a8 |%36
 	c4. c8 c4. a8 |%37
 	c4. c8 c8 d16 (e16) f8 f8 |%38
 	e4 r4 r8 a,8 d4 |%39
 	r8 g,8 c4 r8 c8 bes4( |%40
 	bes4) a4 g2 |%41
 	\mark D f8 c'8 c8 c8 f4 r8 f8 |%42
 	e8 e8 e8 e8 d8 (e16 f16 g8) g,8 |%43
 	c8 (d16 e16) f2 e4( |%44
 	e8) d16 (c16) d8 c8 b4 c4( |%45
 	c4) b4 c4 r4 |%46
 	r1 |%47
 	r8 f,8 f8 f8 bes4 r8 bes8 |%48
 	a4. a8 g8 (a16 bes16) c4( |%49
 	c4) bes2 a8 (bes16 c16) |%50
 	d4. e16 (d16 c4.) d16 (c16 |%51
 	bes8) a8 bes4 a4 r4 |%52
 	\mark E r4 r8 f8 a8 bes16 (c16) d8 d8 |%53
 	c8 a8 r8 f8 a8 bes16 (c16) d8 d8 |%54
 	c4 r4 r8 c8 c8 c8 |%55
 	a4 r4 r8 d8 d8 d8 |%56
 	b4 r4 r8 e8 e8 e8 |%57
 	c4 r4 r8 f8 f8 f8 |%58
 	e4 r8 e8 d8 (e16 f16 g8) g,8 |%59
 	c8 (d16 e16) f2 e4( |%60
 	e8) f16 (e16) d8 c8 b4 c( |%61
 	c4) b4 c4 r4 |%62
 	r4 r8 c8 c8 d16 (e16) f8 f8 |%63
 	e8 c8 r8 c8 c8 d16 (e16) f8 f8 |%64
 	\mark F e4 r4 r8 e8 e8 e8 |%65
 	f4 r4 r8 f8 f8 f8 |%66
 	g8 bes,8 a8 g8 a8 a8 a8 a8 |%67
 	d4. d8 c4 f4( |%68
 	f8) f8 (e4.) d16 (c16 d4~ |%69
 	d8) c16 (b16 c4.) bes16 (a16 bes4~ |%70
 	bes4) c8 bes8 a4. g8  |%71
 	g2 f4 r4 |%72
 	r4 r8 f8 a8 bes16 c16 d8 d8 |%73
 	c8 a8 r8 f8 a8 f'8 f8 f8 |%74
 	f8 c8 r4 c2 |%75
 	d1 |%76
 	c1 |%77
	\bar "|."
	}
}


\score {
	<<
		\flauta
	>>
	\midi {
	}
	\layout {
	}
}

\paper {
	#(set-paper-size "letter")
	system-system-spacing = #'((basic-distance . 0.1) (padding . 0))
	ragged-last-bottom = ##f
	ragged-bottom = ##f
}

%{
convert-ly (GNU LilyPond) 2.19.49  convert-ly: Procesando «»...
Aplicando la conversión: 2.15.7, 2.15.9, 2.15.10, 2.15.16, 2.15.17,
2.15.18, 2.15.19, 2.15.20, 2.15.25, 2.15.32, 2.15.39, 2.15.40,
2.15.42, 2.15.43, 2.16.0, 2.17.0, 2.17.4, 2.17.5, 2.17.6, 2.17.11,
2.17.14, 2.17.15, 2.17.18, 2.17.19, 2.17.20, 2.17.25, 2.17.27,
2.17.29, 2.17.97, 2.18.0, 2.19.2, 2.19.7, 2.19.11, 2.19.16, 2.19.22,
2.19.24, 2.19.28, 2.19.29, 2.19.32, 2.19.40, 2.19.46, 2.19.49
%}
