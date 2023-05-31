# update package manager
sudo pacman -Syyu --noconfirm

mkdir -v ~/.config/
mkdir -pv ~/.local/share/
mkdir -pv ~/.local/share/fonts/

cd ~/

#git clone https://github.com/erikdubois/arcolinux-nemesis.git
#sh ~/arcolinux-nemesis/arch/get-the-keys-and-repos.sh

sudo pacman -S --noconfirm --needed git \
	base-devel \
	unzip

sudo pacman -S --noconfirm --needed neovim \
	fish \
	wget \
	rust \
	cargo \
	rust-src \
	fontconfig

sleep 1

sudo pacman -S --noconfirm --needed neovim \
	fd \
	exa \
	kitty \
	ripgrep \
	neofetch \
	telegram-desktop

sleep 1

git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si --noconfirm
cd ~/

sleep 1

yay --answerdiff None --answerclean None -- removemake -S autotiling
# (de)compression tool
# sudo pacman -S --noconfirm --needed ouch

# For use with i3-wm
# sudo pacman -S --noconfirm --needed i3-wm picom autotiling feh
# sudo pacman -S --noconfirm --needed starship
# customizable lockscreen
# sudo pacman -S --noconfirm --needed gtklock

# screenshot
# sudo pacman -S --noconfirm --needed flameshot

# sudo pacman -S --noconfirm --needed xrandr

## Download packages from AUR
# sudo yay -S --noconfirm --needed ungoogled-chromium-bin
# Manjaro only
#sudo yay -S --noconfirm --needed ttf-firacode-nerd
# powerfull for directory navigation

# Install nerd-fonts
mkdir ~/__tmp__
cd ~/__tmp__
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.1/FiraCode.zip
unzip FiraCode.zip
mv __tmp__/*.ttf ~/.local/share/fonts/
rm FiraCode.zip
cd ~/
rm -rf ~/__tmp__
fc-cache -fv

# ======= CARGO INSTALL ======= #
cargo install broot topgrade

# set fish as default shell
chsh -s /usr/bin/fish

# install oh-my-fish
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish

# git clone https://github.com/lluz55/linux_custom.git
