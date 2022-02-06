sudo apt update

# Vivaldi install
wget -qO- https://repo.vivaldi.com/archive/linux_signing_key.pub | gpg --dearmor | sudo dd of=/usr/share/keyrings/vivaldi-browser.gpg
echo "deb [signed-by=/usr/share/keyrings/vivaldi-browser.gpg arch=$(dpkg --print-architecture)] https://repo.vivaldi.com/archive/deb/ stable main" | sudo dd of=/etc/apt/sources.list.d/vivaldi-archive.list
sudo apt update
sudo apt install -y vivaldi-stable

# Cinnamon desktop environment install
sudo apt install -y cinnamon-desktop-environment

# macOS UI: https://www.youtube.com/watch?v=DMs7DX3Um9E
# YouTube: How to Customize Your Cinnamon Desktop Look Like MacOS Big Sur
git clone git@github.com:vinceliuice/WhiteSur-gtk-theme.giti
cd WhiteSur-gtk-theme
./install.sh
cd ..
git clone git@github.com:vinceliuice/WhiteSur-icon-theme.git
cd WhiteSur-icon-theme
./install.sh
cd ..
git clone git@github.com:vinceliuice/McMojave-cursors.git
cd McMojave-cursors
./install.sh
cd ..
sudo apt install -y plank
cp -r WhiteSur-gtk-theme/src/other/plank/* ~/.local/share/plank/themes

# Install tilix and tmux
sudo apt install -y tilix
sudo apt install -y tmux

# Install command line tools
sudo apt install -y ripgrep
sudo apt install -y fd-find
sudo apt install -y htop

# Install ibus, etc.
sudo apt install -y ibus
sudo apt install -y ibus-pinyin
sudo apt install -y ibus-mozc
sudo apt install -y ibus-hangul
