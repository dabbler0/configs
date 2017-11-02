# Install the packages we want
sudo apt-get install git fish rxvt vim evince viewnior firefox openssh-client awesome awesome-extra texlive python

cp .Xresources ~/.Xresources
cp .vimrc ~/.vimrc
mkdir ~/.config # if doesn't already exist
cp awesome ~/.config/awesome
cp fish ~/.config/fish

# That's it!
