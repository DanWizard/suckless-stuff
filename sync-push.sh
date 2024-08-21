
mkdir ~/code/suckless-stuff/tmux 

cp ~/.config/st/* ~/code/suckless-stuff/st
cp ~/.config/dwm/* ~/code/suckless-stuff/dwm
cp ~/.config/dwmblocks/* ~/code/suckless-stuff/dwmblcks
cp ~/.config/dmenu/* ~/code/suckless-stuff/dmenu
cp ~/.config/nvim/* ~/code/suckless-stuff/nvim
cp ~/.bashrc ~/code/suckless-stuff/bash
cp ~/.fonts/ ~/code/suckless-stuff/fonts
cp ~/startup_scripts/* ~/code/suckless-stuff/startupscripts
cp ~/.Xresources ~/code/suckless-stuff/startupscripts
cp ~/.tmux.conf ~/code/suckless-stuff/tmux

git add -A
git commit -m "sync"
git push
