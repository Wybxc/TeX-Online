#!/usr/bin/sh

mkdir -p tmp
cd tmp
wget https://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
zcat install-tl-unx.tar.gz | tar xf -
cd install-tl-*
sudo perl ./install-tl --no-interaction --scheme=small
cd ..
sudo /usr/local/texlive/2022/bin/x86_64-linux/tlmgr install ieeetrans ctex latexindent diagbox pict2e standalone tkz-graph
wget http://cpanmin.us/ -O cpanm
chmod +x cpanm
sudo ./cpanm File::HomeDir YAML::Tiny
sudo apt install pdf2svg
echo "export PATH=$PATH:/usr/local/texlive/2022/bin/x86_64-linux" >>~/.bashrc
