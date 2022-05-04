sudo pacman -Sy && sudo pacman -Syu && sudo pacman -S xmonad xmonad-contrib yay xmobar kakoune && \
yay -S htop kitty  dmenu trayer yad git zip feh scrot dunst pavucontrol nm-connection-editor vim libreoffice lux pulseaudio picom pcmanfm && \
                 rm -rf ~/.xmonad && \
                 rm -rf ~/.config/kitty && \
                 rm -rf ~/.config/xmobar && \
                 git clone https://github.com/TobbeBob123/.xmonad.git ~/.xmonad && \
                 git clone https://github.com/TobbeBob123/xmobar.git ~/.config/xmobar && \
                 git clone https://github.com/TobbeBob123/kitty.git ~/.config/kitty && \
                 git clone https://github.com/TobbeBob123/Bakgrunner.git ~ && \
                 feh --bg-scale ~/Bakgrunner/Arch_Dracula.png && \
                 xmonad --recompile && \
                 echo "Gratulerer! Du har nå installert TobbeOS"
                 
                                  
                 
