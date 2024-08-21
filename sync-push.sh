
mkdir ~/code/suckless-stuff/tmux 

cp -r ~/.config/st/* ~/code/suckless-stuff/st
cp -r ~/.config/dwm/* ~/code/suckless-stuff/dwm
cp -r ~/.config/dwmblocks/* ~/code/suckless-stuff/dwmblcks
cp -r ~/.config/dmenu/* ~/code/suckless-stuff/dmenu
cp -r ~/.config/nvim/* ~/code/suckless-stuff/nvim
cp -r ~/.bashrc ~/code/suckless-stuff/bash
cp -r ~/.fonts/ ~/code/suckless-stuff/fonts
cp -r ~/startup_scripts/* ~/code/suckless-stuff/startupscripts
cp -r ~/.Xresources ~/code/suckless-stuff/startupscripts
cp -r ~/.tmux.conf ~/code/suckless-stuff/tmux

git add -A
git commit -m "sync"
git push
