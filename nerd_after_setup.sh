# Rodar depois de configurar tudo
fc-cache -fv  
sudo apt-get install cpu-checker
sudo add-apt-repository ppa:kritalime/ppa
sudo apt install gimp
sudo add-apt-repository ppa:serge-rider/dbeaver-ce
sudo apt update
sudo apt upgrade
sudo apt install krita
sudo apt install git-flow
sudo apt-get install libmysqlclient-dev
sudo apt-get install libssl-dev
sudo apt install policykit-1-gnome
sudo apt install valgrind
sudo apt install kdeconnect
sudo apt install flameshot
sudo apt install dbeaver-ce
sudo apt install -y g++ libgtk-3-dev gtk-doc-tools gnutls-bin \\n    valac intltool libpcre2-dev libglib3.0-cil-dev libgnutls28-dev \\n    libgirepository1.0-dev libxml2-utils gperf build-essential\n
sudo apt install ttf-ancient-fonts
sudo apt-get install fonts-powerline
sudo apt install colortest
xrdb -merge .Xresources
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
sudo apt autoremove