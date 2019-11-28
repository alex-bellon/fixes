for prog in firefox i3-gaps gtk2 gtk3 xorg-server; do
    pacman -Qi $prog | awk '/^Name/{name=$3} /^Version/{print name, $3}'
done
