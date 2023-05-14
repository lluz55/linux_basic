# update package manager
sudo pacman -Syyu --noconfirm

mkdir -v ~/.config/
mkdir -pv ~/.local/share/
mkdir -pv ~/.local/share/fonts/

# install git
sudo pacman -S git --noconfirm --needed

cd ~/

git clone https://github.com/erikdubois/arcolinux-nemesis.git
sh ~/arcolinux-nemesis/arch/get-the-keys-and-repos.sh

sudo pacman -S --noconfirm --needed neovim
sudo pacman -S --noconfirm --needed yay
sudo pacman -S --noconfirm --needed exa
sudo pacman -S --noconfirm --needed fish
sudo pacman -S --noconfirm --needed kitty
sudo pacman -S --noconfirm --needed telegram-desktop
# (de)compression tool
# sudo pacman -S --noconfirm --needed ouch

# For use with i3-wm
# sudo pacman -S --noconfirm --needed i3-wm picom autotiling feh
sudo pacman -S --noconfirm --needed starship
sudo pacman -S --noconfirm --needed fd
sudo pacman -S --noconfirm --needed ripgrep
sudo pacman -S --noconfirm --needed firefox
sudo pacman -S --noconfirm --needed base-devel
# customizable lockscreen
# sudo pacman -S --noconfirm --needed gtklock
# screenshot
sudo pacman -S --noconfirm --needed flameshot

sudo pacman -S --noconfirm --needed xrandr
sudo pacman -S --noconfirm --needed neofetch

## Download packages from AUR
sudo yay -S --noconfirm --needed ungoogled-chromium-bin
sudo yay -S --noconfirm --needed ttf-firacode-nerd
# powerfull for directory navigation
sudo yay -S --noconfirm --needed broot
sudo yay -S --noconfirm --needed topgrade

# set fish as default shell
chsh -s /usr/bin/fish
# install oh-my-fish
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish

git clone https://github.com/lluz55/linux_custom.git
