# Install the packages we want
sudo apt-get install git fish rxvt-unicode vim evince viewnior firefox openssh-client awesome awesome-extra texlive python

cp .Xresources ~/.Xresources
cp .vimrc ~/.vimrc
cp .xinitrc ~/.xinitrc
mkdir ~/.config # if doesn't already exist
cp -r awesome ~/.config/awesome
cp -r fish ~/.config/fish

# That's it!
