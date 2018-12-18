FROM base/archlinux:latest

RUN pacman -Syy
RUN pacman -Syu --noconfirm noto-fonts-cjk
RUN pacman -Syu --noconfirm \
			texlive-langjapanese \
			texlive-bibtexextra \
			texlive-latexextra \
			biber

RUN mkluatexfontdb -vvv
RUN mkdir /work

ENV PATH /usr/bin/vendor_perl:$PATH

WORKDIR /work
