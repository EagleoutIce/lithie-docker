tlmgr install latemk biblatex biber bibtex8 xindy texliveonfly texdef texloganalyser
pip install sltx
# TODO: pip should install all dependencies and setup texmf => get lithie-util
sltx dependency /sltx-dep.yaml

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
    /opt/texlive/texdir/texmf-dist/fonts/type3