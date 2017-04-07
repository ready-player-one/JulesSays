FROM ubuntu:16.04
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y fortunes cowsay
COPY memes /usr/share/games/fortunes/
RUN strfile -c % /usr/share/games/fortunes/memes /usr/share/games/fortunes/memes.dat
CMD /usr/games/fortune memes | /usr/games/cowsay -f ren

