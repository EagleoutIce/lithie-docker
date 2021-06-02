tlmgr install latexmk biblatex biber bibtex8 texdef \
    academicons anonymouspro aurical barcodes calligra calligra-type1 crimson crimsonpro \
    ebgaramond ebgaramond-maths fontawesome fontawesome5 fourier initials kpfonts \
    montserrat xcharter overlock ly1 cormorantgaramond charter cm-super \
    courier eurosym tex-gyre wasysym cyrillic biblatex-ieee cfr-initials newtx ccicons mathdesign chessfss eulervm \
    accents algorithm2e aligned-overset amscdx amstex apxproof binomexp biocon bohr bpchem bropd cascade causets ccfonts ccool chemformula chemmacros chemnum chemschemex chemsec chemstyle codeanatomy complexity concrete conteq correctmathalign decision-table delim delimseasy delimset derivative diffcoeff digiconfigs dijkstra drawmatrix drawstack eltex emf endiagram engtlc eqexpl eqnarray eqnnumwarn euclideangeometry extarrows faktor fascicules fnspe fouridx functan galois gastex gene-logic ghsystem glosmathtools hep hepnames hepparticles hepthesis hepunits interval ionumbers isomath jkmath letterswitharrows lie-hasse logicproof longdivision lstbayes mathcommand mathcomp mathpartir mathpunctspace mgltex mhchem mhequ mismath natded nath nicematrix nuc nucleardata oplotsymbl ot-tableau oubraces perfectcut physconst physics physunits pinoutikz pm-isomath prftree principia prooftrees revquantum rmathbr sankey sasnrdisplay scratchx simplebnf siunitx skmath spalign statistics stmaryrd structmech struktex subsupscripts subtext sympytexpackage t-angles textgreek thmbox tiscreen witharrows youngtab ytableau

# remove some weirdly large fonts
rm -rf \
    /opt/texlive/texdir/texmf-dist/fonts/vf/public/jlreq-deluxe \
    /opt/texlive/texdir/texmf-dist/fonts/vf/public/japanese-otf \
    /opt/texlive/texdir/texmf-dist/fonts/vf/public/japanese-uptex \
    /opt/texlive/texdir/texmf-dist/fonts/vf/public/jlreq \
    /opt/texlive/texdir/texmf-dist/fonts/type1/huerta \
    /opt/texlive/texdir/texmf-dist/fonts/type1/public/cbfonts \
    /opt/texlive/texdir/texmf-dist/scripts/tlcockpit \
    /opt/texlive/texdir/texmf-dist/scripts/arara \
    /opt/texlive/texdir/texmf-dist/tex/latex/schule \
    /opt/texlive/texdir/texmf-dist/tex/generic/pst-geo \
    /opt/texlive/texdir/texmf-dist/fonts/opentype \
    /opt/texlive/texdir/texmf-dist/fonts/afm \
    /opt/texlive/texdir/texmf-dist/fonts/type1/google \
    /opt/texlive/texdir/texmf-dist/fonts/truetype/google \
    /opt/texlive/texdir/texmf-dist/fonts/source \
    /opt/texlive/texdir/texmf-dist/tex/latex/merriweather \
    /opt/texlive/texdir/texmf-dist/fonts/type1/public/ipaex-type1 \
    /opt/texlive/texdir/texmf-dist/fonts/type3 \
    /opt/texlive/texdir/texmf-dist/tex/latex/ghsystem \
    /opt/texlive/texdir/texmf-dist/tex/latex/utfsym \
    /opt/texlive/texdir/texmf-dist/tex/latex/fithesis \
    /opt/texlive/texdir/texmf-dist/tex/latex/lwarp \
    /opt/texlive/texdir/texmf-dist/tex4ht \
    /opt/texlive/texdir/texmf-dist/tex/luatex/** \
    /opt/texlive/texdir/texmf-dist/tex/lualatex/**