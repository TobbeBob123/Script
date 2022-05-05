echo "Du er i ferd med å overskrive xinit filen (.xinitrc). Vi anbefaler å ta bakup av innholdet av xinit filen."
echo -n  "Vil du fortsette? [Y/n]: "
read svar
if [[ $svar == "n" ]] || [[ $svar == "N" ]]
then
    exit
else
    sudo pacman -Sy && sudo pacman -Syu && sudo pacman -S xmonad xmonad-contrib xmobar kakoune xorg xorg-xinit fish starship xf86-video-intel && \
    sudo rm -rf yay-git ~/yay-git && \
    git clone https://aur.archlinux.org/yay-git.git ~/yay-git && cd ~/yay-git && makepkg -si && cd && rm -rf yay-git && \
    yay -S htop kitty network-manager-applet xautolock lxsession dmenu lux-git trayer yad git lightdm lightdm-gtk-greeter zip feh scrot dunst pavucontrol nm-connection-editor vim libreoffice librewolf-bin signal-desktop teams-for-linux thunderbird pulseaudio picom pcmanfm && \
                 rm -rf ~/.config/fish && \
                 rm -rf ~/starship && \
                 rm -f ~/.config/starship.toml && \
                 rm -rf ~/.xmonad && \
                 rm -rf ~/.config/kitty && \
                 rm -rf ~/.config/xmobar && \
                 rm -rf ~/.config/dunst && \
                 sudo rm -rf ~/.config/gtk-3.0 && \
                 rm -rf ~/Bakgrunner && \
                 sudo rm -rf /usr/share/themes && \
                 sudo mkdir /usr/share/themes && \
                 sudo rm -rf /etc/lightdm && \
                 sudo rm -rf ~/lightdm && \
                 sudo rm -rf /etc/systemd/system/display-manager.service && \
                 sudo rm -rf /etc/systemd/system/sleep.target.wants && \
                 rm -rf ~/.xinitrc && \
                 git clone https://github.com/TobbeBob123/.xmonad.git ~/.xmonad && \
                 git clone https://github.com/TobbeBob123/xmobar.git ~/.config/xmobar && \
                 git clone https://github.com/TobbeBob123/kitty.git ~/.config/kitty && \
                 git clone https://github.com/TobbeBob123/Bakgrunner.git ~/Bakgrunner && \
                 git clone https://github.com/TobbeBob123/Dracula_tema.git ~/.config/gtk-3.0 && \
                 git clone https://github.com/TobbeBob123/dunst.git ~/.config/dunst && \
                 git clone https://github.com/TobbeBob123/Fish.git ~/.config/fish && \
                 chsh -s /usr/bin/fish && \
                 git clone https://github.com/TobbeBob123/starship.git ~/starship && \
                 mv ~/starship/starship.toml ~/.config/starship.toml && \
                 git clone https://github.com/TobbeBob123/lightdm.git ~/lightdm && \
                 sudo mv ~/lightdm/display-manager.service /etc/systemd/system/display-manager.service && \
                 sudo mv ~/lightdm/sleep.target.wants/ /etc/systemd/system/sleep.target.wants/ && \
                 sudo mv ~/lightdm /etc/lightdm && \
                 sudo mv ~/.config/gtk-3.0/Dracula /usr/share/themes/Dracula && \
                 feh --bg-scale ~/Bakgrunner/Arch_Dracula.png && \
                 touch ~/.xinitrc | echo exec xmonad > ~/.xinitrc && \
                 xmonad --recompile && \
                 echo "Gratulerer! Du har nå installert TobbeOS" && \
                 echo "TIPS. Hvis du trenger å se keybinds. Se keybinds med Alt+h."
fi
