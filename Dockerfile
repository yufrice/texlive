FROM base/archlinux:latest
LABEL yufrice <yufyufrice@gmail.com>

RUN pacman -Syy
RUN pacman -Syu --noconfirm \
			texlive-langjapanese \
			texlive-bibtexextra \
			texlive-latexextra \
			texlive-humanities \
			texlive-pictures \
			texlive-science \
			biber

RUN mkluatexfontdb -vvv
RUN mkdir /work

ENV PATH /usr/bin/vendor_perl:$PATH

WORKDIR /work
