DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cp -r $DIR/bin ~/
cp -r $DIR/.config/dwmblocks ~/.config/dwmblocks
cp -r $DIR/Scripts ~/
cp -r $DIR/polybar ~/.config/
git clone https://aur.archlinux.org/nerd-fonts-complete.git
cd nerd-fonts-complete
makepkg -sri
cd .. && git clone https://aur.archlinux.org/polybar.git && cd polybar && makepkg -sri
cd ../dwm
sudo configure && sudo make && sudo make install
cd ../dwmblocks
sudo configure && sudo make && sudo make install

