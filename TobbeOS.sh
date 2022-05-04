sudo pacman -Syu && sudo pacman -S xmonad xmonad-contrib yay && \
yay -S htop kitty dmenu trayer git feh scrot nerd-font-complete dunst pavucontrol nm-connetion-editor libreoffice lux pulseaudio picom pcmanfm && \
                 rm -rf ~/.xmonad && \
                 rm -rf ~/.config/kitty && \
                 rm -rf ~/.config/xmobar && \
                 git clone https://github.com/TobbeBob123/.xmonad.git && \
                 git clone https://github.com/TobbeBob123/xmobar.git && \
                 git clone https://github.com/TobbeBob123/kitty.git && \
                 git clone https://github.com/TobbeBob123/Bakgrunner.git && \
                 mv xmobar ~/.config && \
                 mv kitty ~/.config && \
                 feh --bg-scale ~/Bakgrunner/Arch_Dracula.png && \
                 xmonad --recompile && \
                 echo "Gratulerer! Du har nå installert TobbeOS"
                 
                                  
                 
