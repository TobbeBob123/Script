sudo pacman -Syu && sudo pacman -S xmonad xmonad-contrib yay && \
yay -S htop kitty dmenu trayer git feh scrot nerd-fonts-complete dunst pavucontrol nm-connection-editor libreoffice lux pulseaudio picom pcmanfm && \
                 rm -rf ~/.xmonad && \
                 rm -rf ~/.config/kitty && \
                 rm -rf ~/.config/xmobar && \
                 git clone https://github.com/TobbeBob123/.xmonad.git ~/.xmonad && \
                 git clone https://github.com/TobbeBob123/xmobar.git ~/.config/ && \
                 git clone https://github.com/TobbeBob123/kitty.git ~/.config && \
                 git clone https://github.com/TobbeBob123/Bakgrunner.git ~ && \
                 feh --bg-scale ~/Bakgrunner/Arch_Dracula.png && \
                 xmonad --recompile && \
                 echo "Gratulerer! Du har nå installert TobbeOS"
                 
                                  
                 
