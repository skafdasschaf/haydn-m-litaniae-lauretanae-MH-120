\version "2.22.0"

\include "../definitions.ly"
\include "score_settings/full-score.ly"


\book {
  \bookpart {
    \section "1" "Kyrie"
    \addTocEntry
    \paper { indent = 3\cm }
    \score {
      <<
        \new StaffGroup <<
          \new GrandStaff <<
            \set GrandStaff.instrumentName = "Oboe"
            \new Staff {
              \set Staff.instrumentName = "I"
              \KyrieOboeI
            }
            \new Staff {
              \set Staff.instrumentName = "II"
              \KyrieOboeII
            }
          >>
        >>
        \new StaffGroup <<
          \new Staff <<
            \set Staff.instrumentName = \transposedName "Clarino I, II" "C" ""
            \partCombine \KyrieClarinoI \KyrieClarinoII
          >>
        >>
        \new Staff {
          \set Staff.instrumentName = \transposedTimp "C" "" "G" ""
          \KyrieTimpani
        }
        \new StaffGroup <<
          \new GrandStaff <<
            \set GrandStaff.instrumentName = "Violino"
            \new Staff {
              \set Staff.instrumentName = "I"
              \KyrieViolinoI
            }
            \new Staff {
              \set Staff.instrumentName = "II"
              \KyrieViolinoII
            }
          >>
        >>
        \new ChoirStaff <<
          \new Staff {
            \incipitSoprano
            \new Voice = "Soprano" { \dynamicUp \KyrieSoprano }
          }
          \new Lyrics \lyricsto Soprano \KyrieSopranoLyrics

          \new Staff {
            \incipitAlto
            \new Voice = "Alto" { \dynamicUp \KyrieAlto }
          }
          \new Lyrics \lyricsto Alto \KyrieAltoLyrics

          \new Staff {
            \incipitTenore
            \new Voice = "Tenore" { \dynamicUp \KyrieTenore }
          }
          \new Lyrics \lyricsto Tenore \KyrieTenoreLyrics

          \new Staff {
            \set Staff.instrumentName = "Basso"
            \new Voice = "Basso" { \dynamicUp \KyrieBasso }
          }
          \new Lyrics \lyricsto Basso \KyrieBassoLyrics
        >>
        \new StaffGroup <<
          \new Staff {
            \set Staff.instrumentName = \markup \center-column { "Organo" "e Bassi" }
            % \transpose c c,
            \KyrieOrgano
          }
        >>
        \new FiguredBass { \KyrieBassFigures }
      >>
      \layout { }
      \midi { \tempo 4 = 80 }
    }
  }
  \bookpart {
    \section "2" "Sancta Maria"
    \addTocEntry
    \score {
      <<
        \new StaffGroup <<
          \new GrandStaff <<
            \set GrandStaff.instrumentName = "ob"
            \new Staff {
              \set Staff.instrumentName = "1"
              \SanctaOboeI
            }
            \new Staff {
              \set Staff.instrumentName = "2"
              \SanctaOboeII
            }
          >>
        >>
        \new StaffGroup <<
          \new Staff <<
            \set Staff.instrumentName = \markup \center-column { "clno" "1, 2" }
            \partCombine \SanctaClarinoI \SanctaClarinoII
          >>
        >>
        \new Staff {
          \set Staff.instrumentName = "timp"
          \SanctaTimpani
        }
        \new StaffGroup <<
          \new GrandStaff <<
            \set GrandStaff.instrumentName = "vl"
            \new Staff {
              \set Staff.instrumentName = "1"
              \SanctaViolinoI
            }
            \new Staff {
              \set Staff.instrumentName = "2"
              \SanctaViolinoII
            }
          >>
        >>
        \new ChoirStaff <<
          \new Staff {
            \set Staff.instrumentName = "S"
            \new Voice = "Soprano" { \dynamicUp \SanctaSoprano }
          }
          \new Lyrics \lyricsto Soprano \SanctaSopranoLyrics

          \new Staff {
            \set Staff.instrumentName = "A"
            \new Voice = "Alto" { \dynamicUp \SanctaAlto }
          }
          \new Lyrics \lyricsto Alto \SanctaAltoLyrics

          \new Staff {
            \set Staff.instrumentName = "T"
            \new Voice = "Tenore" { \dynamicUp \SanctaTenore }
          }
          \new Lyrics \lyricsto Tenore \SanctaTenoreLyrics

          \new Staff {
            \set Staff.instrumentName = "B"
            \new Voice = "Basso" { \dynamicUp \SanctaBasso }
          }
          \new Lyrics \lyricsto Basso \SanctaBassoLyrics
        >>
        \new StaffGroup <<
          \new Staff {
            \set Staff.instrumentName = \markup \center-column { "org" "b" }
            % \transpose c c,
            \SanctaOrgano
          }
        >>
        \new FiguredBass { \SanctaBassFigures }
      >>
      \layout { }
      \midi { \tempo 4 = 90 }
    }
  }
  \bookpart {
    \section "3" "Speculum iustitiæ"
    \addTocEntry
    \score {
      <<
        \new StaffGroup <<
          \new GrandStaff <<
            \set GrandStaff.instrumentName = "ob"
            \new Staff {
              \set Staff.instrumentName = "1"
              \SpeculumOboeI
            }
            \new Staff {
              \set Staff.instrumentName = "2"
              \SpeculumOboeII
            }
          >>
        >>
        \new StaffGroup <<
          \new Staff <<
            \set Staff.instrumentName = \markup \center-column { "clno" "1, 2" }
            \partCombine \SpeculumClarinoI \SpeculumClarinoII
          >>
        >>
        \new Staff {
          \set Staff.instrumentName = "timp"
          \SpeculumTimpani
        }
        \new StaffGroup <<
          \new GrandStaff <<
            \set GrandStaff.instrumentName = "vl"
            \new Staff {
              \set Staff.instrumentName = "1"
              \SpeculumViolinoI
            }
            \new Staff {
              \set Staff.instrumentName = "2"
              \SpeculumViolinoII
            }
          >>
        >>
        \new ChoirStaff <<
          \new Staff {
            \set Staff.instrumentName = "S"
            \new Voice = "Soprano" { \dynamicUp \SpeculumSoprano }
          }
          \new Lyrics \lyricsto Soprano \SpeculumSopranoLyrics

          \new Staff {
            \set Staff.instrumentName = "A"
            \new Voice = "Alto" { \dynamicUp \SpeculumAlto }
          }
          \new Lyrics \lyricsto Alto \SpeculumAltoLyrics

          \new Staff {
            \set Staff.instrumentName = "T"
            \new Voice = "Tenore" { \dynamicUp \SpeculumTenore }
          }
          \new Lyrics \lyricsto Tenore \SpeculumTenoreLyrics

          \new Staff {
            \set Staff.instrumentName = "B"
            \new Voice = "Basso" { \dynamicUp \SpeculumBasso }
          }
          \new Lyrics \lyricsto Basso \SpeculumBassoLyrics
        >>
        \new StaffGroup <<
          \new Staff {
            \set Staff.instrumentName = \markup \center-column { "org" "b" }
            % \transpose c c,
            \SpeculumOrgano
          }
        >>
        \new FiguredBass { \SpeculumBassFigures }
      >>
      \layout { }
      \midi { \tempo 4 = 80 }
    }
  }
  \bookpart {
    \section "4" "Salus infirmorum"
    \addTocEntry
    \score {
      <<
        \new StaffGroup <<
          \new GrandStaff <<
            \set GrandStaff.instrumentName = "ob"
            \new Staff {
              \set Staff.instrumentName = "1"
              \SalusOboeI
            }
            \new Staff {
              \set Staff.instrumentName = "2"
              \SalusOboeII
            }
          >>
        >>
        \new StaffGroup <<
          \new Staff <<
            \set Staff.instrumentName = \markup \center-column { "clno" "1, 2" }
            \partCombine \SalusClarinoI \SalusClarinoII
          >>
        >>
        \new Staff {
          \set Staff.instrumentName = "timp"
          \SalusTimpani
        }
        \new StaffGroup <<
          \new GrandStaff <<
            \set GrandStaff.instrumentName = "vl"
            \new Staff {
              \set Staff.instrumentName = "1"
              \SalusViolinoI
            }
            \new Staff {
              \set Staff.instrumentName = "2"
              \SalusViolinoII
            }
          >>
        >>
        \new ChoirStaff <<
          \new Staff {
            \set Staff.instrumentName = "S"
            \new Voice = "Soprano" { \dynamicUp \SalusSoprano }
          }
          \new Lyrics \lyricsto Soprano \SalusSopranoLyrics

          \new Staff {
            \set Staff.instrumentName = "A"
            \new Voice = "Alto" { \dynamicUp \SalusAlto }
          }
          \new Lyrics \lyricsto Alto \SalusAltoLyrics

          \new Staff {
            \set Staff.instrumentName = "T"
            \new Voice = "Tenore" { \dynamicUp \SalusTenore }
          }
          \new Lyrics \lyricsto Tenore \SalusTenoreLyrics

          \new Staff {
            \set Staff.instrumentName = "B"
            \new Voice = "Basso" { \dynamicUp \SalusBasso }
          }
          \new Lyrics \lyricsto Basso \SalusBassoLyrics
        >>
        \new StaffGroup <<
          \new Staff {
            \set Staff.instrumentName = \markup \center-column { "org" "b" }
            % \transpose c c,
            \SalusOrgano
          }
        >>
        \new FiguredBass { \SalusBassFigures }
      >>
      \layout { }
      \midi { \tempo 4 = 50 }
    }
  }
  \bookpart {
    \section "5" "Agnus Dei"
    \addTocEntry
    \score {
      <<
        \new StaffGroup <<
          \new GrandStaff <<
            \set GrandStaff.instrumentName = "ob"
            \new Staff {
              \set Staff.instrumentName = "1"
              \AgnusOboeI
            }
            \new Staff {
              \set Staff.instrumentName = "2"
              \AgnusOboeII
            }
          >>
        >>
        \new StaffGroup <<
          \new Staff <<
            \set Staff.instrumentName = \markup \center-column { "clno" "1, 2" }
            \partCombine \AgnusClarinoI \AgnusClarinoII
          >>
        >>
        \new Staff {
          \set Staff.instrumentName = "timp"
          \AgnusTimpani
        }
        \new StaffGroup <<
          \new GrandStaff <<
            \set GrandStaff.instrumentName = "vl"
            \new Staff {
              \set Staff.instrumentName = "1"
              \AgnusViolinoI
            }
            \new Staff {
              \set Staff.instrumentName = "2"
              \AgnusViolinoII
            }
          >>
        >>
        \new ChoirStaff <<
          \new Staff {
            \set Staff.instrumentName = "S"
            \new Voice = "Soprano" { \dynamicUp \AgnusSoprano }
          }
          \new Lyrics \lyricsto Soprano \AgnusSopranoLyrics

          \new Staff {
            \set Staff.instrumentName = "A"
            \new Voice = "Alto" { \dynamicUp \AgnusAlto }
          }
          \new Lyrics \lyricsto Alto \AgnusAltoLyrics

          \new Staff {
            \set Staff.instrumentName = "T"
            \new Voice = "Tenore" { \dynamicUp \AgnusTenore }
          }
          \new Lyrics \lyricsto Tenore \AgnusTenoreLyrics

          \new Staff {
            \set Staff.instrumentName = "B"
            \new Voice = "Basso" { \dynamicUp \AgnusBasso }
          }
          \new Lyrics \lyricsto Basso \AgnusBassoLyrics
        >>
        \new StaffGroup <<
          \new Staff {
            \set Staff.instrumentName = \markup \center-column { "org" "b" }
            % \transpose c c,
            \AgnusOrgano
          }
        >>
        \new FiguredBass { \AgnusBassFigures }
      >>
      \layout { }
      \midi { \tempo 4 = 60 }
    }
  }
}
