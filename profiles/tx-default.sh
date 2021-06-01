tlmgr install latexmk biblatex biber bibtex8 texdef \
    academicons anonymouspro aurical barcodes calligra calligra-type1 crimson crimsonpro \
    ebgaramond ebgaramond-maths fontawesome fontawesome5 fourier initials kpfonts \
    montserrat xcharter overlock ly1 cormorantgaramond charter cm-super \
    courier eurosym tex-gyre wasysym cyrillic biblatex-ieee cfr-initials newtx ccicons mathdesign chessfss eulervm

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
    /opt/texlive/texdir/texmf-dist/tex/latex/datetime2-bahasai \
    /opt/texlive/texdir/texmf-dist/tex/latex/datetime2-basque \
    /opt/texlive/texdir/texmf-dist/tex/latex/datetime2-breton \
    /opt/texlive/texdir/texmf-dist/tex/latex/datetime2-bulgarian \
    /opt/texlive/texdir/texmf-dist/tex/latex/datetime2-catalan \
    /opt/texlive/texdir/texmf-dist/tex/latex/datetime2-croatian \
    /opt/texlive/texdir/texmf-dist/tex/latex/datetime2-czech \
    /opt/texlive/texdir/texmf-dist/tex/latex/datetime2-danish \
    /opt/texlive/texdir/texmf-dist/tex/latex/datetime2-dutch \
    /opt/texlive/texdir/texmf-dist/tex/latex/datetime2-esperanto \
    /opt/texlive/texdir/texmf-dist/tex/latex/datetime2-estonian \
    /opt/texlive/texdir/texmf-dist/tex/latex/datetime2-finnish \
    /opt/texlive/texdir/texmf-dist/tex/latex/datetime2-french \
    /opt/texlive/texdir/texmf-dist/tex/latex/datetime2-galician \
    /opt/texlive/texdir/texmf-dist/tex/latex/datetime2-greek \
    /opt/texlive/texdir/texmf-dist/tex/latex/datetime2-hebrew \
    /opt/texlive/texdir/texmf-dist/tex/latex/datetime2-icelandic \
    /opt/texlive/texdir/texmf-dist/tex/latex/datetime2-irish \
    /opt/texlive/texdir/texmf-dist/tex/latex/datetime2-it-fulltext \
    /opt/texlive/texdir/texmf-dist/tex/latex/datetime2-italian \
    /opt/texlive/texdir/texmf-dist/tex/latex/datetime2-latin \
    /opt/texlive/texdir/texmf-dist/tex/latex/datetime2-lsorbian \
    /opt/texlive/texdir/texmf-dist/tex/latex/datetime2-magyar \
    /opt/texlive/texdir/texmf-dist/tex/latex/datetime2-norsk \
    /opt/texlive/texdir/texmf-dist/tex/latex/datetime2-polish \
    /opt/texlive/texdir/texmf-dist/tex/latex/datetime2-portuges \
    /opt/texlive/texdir/texmf-dist/tex/latex/datetime2-romanian \
    /opt/texlive/texdir/texmf-dist/tex/latex/datetime2-russian \
    /opt/texlive/texdir/texmf-dist/tex/latex/datetime2-samin \
    /opt/texlive/texdir/texmf-dist/tex/latex/datetime2-scottish \
    /opt/texlive/texdir/texmf-dist/tex/latex/datetime2-serbian \
    /opt/texlive/texdir/texmf-dist/tex/latex/datetime2-slovak \
    /opt/texlive/texdir/texmf-dist/tex/latex/datetime2-slovene \
    /opt/texlive/texdir/texmf-dist/tex/latex/datetime2-spanish \
    /opt/texlive/texdir/texmf-dist/tex/latex/datetime2-swedish \
    /opt/texlive/texdir/texmf-dist/tex/latex/datetime2-turkish \
    /opt/texlive/texdir/texmf-dist/tex/latex/datetime2-ukrainian \
    /opt/texlive/texdir/texmf-dist/tex/latex/datetime2-usorbian \
    /opt/texlive/texdir/texmf-dist/tex/latex/datetime2-welsh \
    /opt/texlive/texdir/texmf-dist/tex/latex/glossaries-danish \
    /opt/texlive/texdir/texmf-dist/tex/latex/glossaries-dutch \
    /opt/texlive/texdir/texmf-dist/tex/latex/glossaries-estonian \
    /opt/texlive/texdir/texmf-dist/tex/latex/glossaries-finnish \
    /opt/texlive/texdir/texmf-dist/tex/latex/glossaries-french \
    /opt/texlive/texdir/texmf-dist/tex/latex/glossaries-irish \
    /opt/texlive/texdir/texmf-dist/tex/latex/glossaries-italian \
    /opt/texlive/texdir/texmf-dist/tex/latex/glossaries-magyar \
    /opt/texlive/texdir/texmf-dist/tex/latex/glossaries-nynorsk \
    /opt/texlive/texdir/texmf-dist/tex/latex/glossaries-polish \
    /opt/texlive/texdir/texmf-dist/tex/latex/glossaries-portuges \
    /opt/texlive/texdir/texmf-dist/tex/latex/glossaries-serbian \
    /opt/texlive/texdir/texmf-dist/tex/latex/glossaries-slovene \
    /opt/texlive/texdir/texmf-dist/tex/latex/glossaries-spanish \
    /opt/texlive/texdir/texmf-dist/tex/latex/ghsystem \
    /opt/texlive/texdir/texmf-dist/tex4ht \
    /opt/texlive/texdir/texmf-dist/tex/luatex/** \
    /opt/texlive/texdir/texmf-dist/tex/lualatex/**