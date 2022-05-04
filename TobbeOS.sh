sudo pacman -Sy && sudo pacman -Syu && sudo pacman -S xmonad xmonad-contrib yay xmobar kakoune xorg xf86-video-intel && \
yay -S htop kitty network-manager-applet lxsession dmenu trayer yad git zip feh scrot dunst pavucontrol nm-connection-editor vim libreoffice pulseaudio picom pcmanfm && \
                 rm -rf ~/.xmonad && \
                 rm -rf ~/.config/kitty && \
                 rm -rf ~/.config/xmobar && \
                 rm -rf ~/.config/dunst && \
                 git clone https://github.com/TobbeBob123/.xmonad.git ~/.xmonad && \
                 git clone https://github.com/TobbeBob123/xmobar.git ~/.config/xmobar && \
                 git clone https://github.com/TobbeBob123/kitty.git ~/.config/kitty && \
                 git clone https://github.com/TobbeBob123/Bakgrunner.git ~/Bakgrunner && \
                 git clone https://github.com/TobbeBob123/Dracula_tema.git ~/.config/gtk-3.0 && \
                 git clone https://github.com/TobbeBob123/dunst.git ~/.config/dunst && \
                 mv ~/.config/gtk-3.0/Dracula /usr/share/themes/Dracula && \
                 feh --bg-scale ~/Bakgrunner/Arch_Dracula.png && \
                 xmonad --recompile && \
                 echo "Gratulerer! Du har nå installert TobbeOS"
                 
                                  
                 
