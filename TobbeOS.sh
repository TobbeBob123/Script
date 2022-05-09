# Gir brukeren en mulighet til å avslutte scriptet hvis brukeren har ombestemt seg med if statment + vil ta bakup av xinit filen
echo "Du er i ferd med å overskrive xinit filen (.xinitrc). Vi anbefaler å ta bakup av innholdet av xinit filen."
echo "Du burde kjøre fjernPakker.sh før du går videre"
echo -n  "Vil du fortsette? [Y/n]: "
read svar
if [[ $svar == "n" ]] || [[ $svar == "N" ]]
then
    exit
else
    # Setter doas istedenfor sudo
    touch ~/doas.conf | echo permit :wheel > ~/doas.conf && sudo chown root:root ~/doas.conf && \
    sudo mv ~/doas.conf /etc/doas.conf && \
    # Oppgraderer og syncer databasene og installerer grunn pakkene for scriptet
    sudo pacman -Sy && sudo pacman -Syu && sudo pacman -S xmonad xmonad-contrib xmobar kakoune xorg xorg-xinit fish starship lib32-mesa && \
    # installerer/bygger AUR hjelper for å laste ned resten av programmene
    sudo rm -rf yay-git ~/yay-git && \
    git clone https://aur.archlinux.org/yay-git.git ~/yay-git && cd ~/yay-git && makepkg -si && cd && rm -rf yay-git && \
    # Her lastes ned resten av programmene
    yay -S htop kitty network-manager-applet paru-bin adobe-source-code-pro-fonts pacman-contrib doas xautolock nodejs-lts-fermium lxsession dmenu exa lux-git trayer yad git jre-openjdk lightdm lightdm-gtk-greeter light-locker zip feh scrot dunst pavucontrol nm-connection-editor vim libreoffice librewolf-bin signal-desktop teams-for-linux thunderbird pulseaudio picom pcmanfm && \
                 # Her fjerner jeg mapper og filer som kan føre til error
                 rm -rf ~/.config/fish && \
                 rm -f ~/.fehbg && \
                 rm -rf ~/.config/kak && \
                 rm -rf ~/omf
                 rm -rf ~/oh-my-fish
                 rm -rf ~/vim && \
                 rm -f ~/.vimrc && \
                 rm -rf ~/starship && \
                 rm -rf ~/.config/surf && \
                 rm -rf ~/surf && \
                 rm -f ~/.config/starship.toml && \
                 rm -rf ~/.xmonad && \
                 rm -rf ~/.config/kitty && \
                 rm -rf ~/.config/xmobar && \
                 rm -rf ~/.config/dunst && \
                 rm -rf ~/.gtkrc-2.0 && \
                 rm -rf ~/.config/gtk-3.0 && \
                 rm -rf ~/.config/gtk-2.0 && \
                 sudo rm -rf /usr/share/gtk-2.0/gtkrc
                 rm -rf ~/Bakgrunner && \
                 sudo rm -rf /usr/share/themes && \
                 sudo mkdir /usr/share/themes && \
                 sudo rm -rf /etc/lightdm && \
                 sudo rm -rf ~/lightdm && \
                 rm -rf ~/.config/picom && \
                 sudo rm -rf /etc/systemd/system/display-manager.service && \
                 sudo rm -rf /etc/systemd/system/sleep.target.wants && \
                 rm -rf ~/.xinitrc && \
                 # Her dras xmonad config til TobbeBob123
                 git clone https://github.com/TobbeBob123/.xmonad.git ~/.xmonad && \
                 # Her dras xmobar config til TobbeBob123
                 git clone https://github.com/TobbeBob123/xmobar.git ~/.config/xmobar && \
                 # Her dras kitty config til TobbeBob123
                 git clone https://github.com/TobbeBob123/kitty.git ~/.config/kitty && \
                 # Her dras bakgrunnene til TobbeBob123
                 git clone https://github.com/TobbeBob123/Bakgrunner.git ~/Bakgrunner && \
                 # Her dras dracula theme til TobbeBob123
                 git clone https://github.com/TobbeBob123/Dracula_tema.git ~/.config/gtk-3.0 && \
                 mkdir ~/.config/gtk-2.0 && \
                 cp ~/.config/gtk-3.0/settings.ini ~/.gtkrc-2.0 && \
                 cp ~/.config/gtk-3.0/settings.ini ~/.config/gtk-2.0/settings.ini && \
                 sudo mv ~/.config/gtk-3.0/gtkrc /usr/share/gtk-2.0/gtkrc && \
                 # Her dras picom config fra github
                 git clone https://github.com/TobbeBob123/picom.git ~/.config/picom && \
                 # Her dras surf config til TobbeBob123
                 git clone https://github.com/TobbeBob123/Surf.git ~/.config/surf && \
                 # Her dras source koden for surf browser til TobbeBob123
                 git clone https://github.com/TobbeBob123/Surf-browser.git ~/surf && \
                 # Her bygges surf
                 cd ~/surf && sudo make install && \
                 # Her dras dunst config til TobbeBob123
                 git clone https://github.com/TobbeBob123/dunst.git ~/.config/dunst && \
                 # Her dras kak config til TobbeBob123
                 git clone https://github.com/TobbeBob123/kak.git ~/.config/kak && \
                 # Her dras vim config til TobbeBob123
                 git clone https://github.com/TobbeBob123/vim.git ~/vim && \
                 mv ~/vim/.vimrc ~/.vimrc && \
                 rm -rf ~/vim && \
                 # Her dras fish shell config til TobbeBob123
                 git clone https://github.com/TobbeBob123/Fish.git ~/.config/fish && \
                 # Her settes fish til hoved shell
                 chsh -s /usr/bin/fish && \
                 # Her dras starship prompt config til TobbeBob123
                 git clone https://github.com/TobbeBob123/starship.git ~/starship && \
                 # Her flyttes starship config til riktig sted
                 mv ~/starship/starship.toml ~/.config/starship.toml && \
                 # Her slettes git mappa til starship
                 rm -rf ~/starship && \
                 # Her dras lightdm config til TobbeBob123
                 git clone https://github.com/TobbeBob123/lightdm.git ~/lightdm && \
                 # Her flyttes service til riktig sted for å kunne enable display manager med sudo systemctl enable display-manager
                 sudo mv ~/lightdm/display-manager.service /etc/systemd/system/display-manager.service && \
                 # Her flyttes service til riktig sted for å la pcen gå til hvilemodus/suspend, med systemctl suspend
                 sudo mv ~/lightdm/sleep.target.wants/ /etc/systemd/system/sleep.target.wants/ && \
                 # Her flyttes lightdm config til riktig sted
                 sudo mv ~/lightdm /etc/lightdm && \
                 # Her flyttes tema til riktig sted for å aktivere tema
                 sudo mv ~/.config/gtk-3.0/Dracula /usr/share/themes/Dracula && \
                 # Her lages fil for å huske bakgrunnen og denne filen blir henta opp i xmonad config (~/.xmonad/xmonad.hs
                 touch ~/.fehbg | echo "feh --no-fehbg --bg-scale ~/Bakgrunner/Arch_Dracula.png" > ~/.fehbg && \
                 # Her lages en fil som lar brukeren bruke startx for å starte xmonad
                 touch ~/.xinitrc | echo exec xmonad > ~/.xinitrc && \
                 # Her recompiles xmonad som tar i mot alt scriptet har gjort
                 xmonad --recompile && \
                 # Laster ned omf som brukes av fish
                 curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
# Avslutter hele if statement
fi
