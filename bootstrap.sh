#!/usr/bin/sh

echo ""
echo "> Download texlive"
mkdir -p tmp
cd tmp
wget https://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
zcat install-tl-unx.tar.gz | tar xf -
cd install-tl-*
sudo perl ./install-tl --no-interaction --no-doc-install --no-src-install --scheme=basic
cd ..

echo ""
echo "> Install packages"
sudo /usr/local/texlive/2022/bin/x86_64-linux/tlmgr install xetex ctex biber float ieeetran algorithm algorithmicx latexindent booktabs diagbox pict2e standalone tkz-graph
wget http://cpanmin.us/ -O cpanm
chmod +x cpanm
sudo ./cpanm File::HomeDir YAML::Tiny
sudo apt update
sudo apt install -y pdf2svg fonts-firacode

echo ""
echo "> Setup environment"
echo "export PATH=$PATH:/usr/local/texlive/2022/bin/x86_64-linux" >>~/.bashrc
