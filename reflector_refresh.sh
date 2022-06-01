 sudo reflector --country Norway --protocol https --latest 10 --sort rate --save /etc/pacman.d/mirrorlist && \
     sudo pacman -Syu
