# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


### Limpa a porra do .gnome
rm -rf javasharedresources
rm -rf .gnome 2> /dev/null

#### Env variables
DEFAULT_USER=`whoami`
PHP_HOME="/home/usr/.asdf/installs/php/7.4.8" ## 7.4.8
COMPOSER_HOME="$PHP_HOME/.composer/vendor/bin"
PSQL_HOME="/home/usr/.asdf/installs/postgres"

export PATH=${PATH}:$HOME/.yarn/bin:/usr/local/mysql/bin:$JAVA_HOME:$HOME/.local/bin/:/opt/eclipse:$COMPOSER_HOME:/usr/bin/cmake:/home/usr/Android/Sdk/platform-tools$PATH

#### ASDF-VM
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/plugins/java/set-java-home.zsh

#### Functions
function wine_32arch()
{
  rm -rf $HOME/.wine; export WINEARCH=win32; wine create;
}

function wine_64arch()
{
  rm -rf $HOME/.wine; export WINEARCH=win64; wine create;
}

function mysql_dump_export() {
  # $1 DB name -- $2 DB export location
  mysql -u root -p $1 > $2
}

function mysql_dump_import() {
  # $1 DB name -- $2 DB Dump (.sql)
  mysql -u root -p $1 < $2
}

function extract() {
  case "$1" in
    *.bz2) tar -jxvf $1;;
    *.xz) tar -Jxxvf $1;;
    *.gz) tar -zxvf $1;;
    *.zip) unzip $1;;
    *.rar) unrar e $1;;
    *) echo "Formato inválido";;
  esac
}

function search_in_dir () {
  ls | grep $1
}

function clean_the_f_vim_swap() {
  rm -rf $HOME/.local/share/nvim/swap/*
}

function git_diff_hashes_content() {
  git diff $1^^..$2 -- $3
}

function git_diff_hashes() {
  git log --name-only --pretty=oneline --full-index $1^^..$2 | grep -vE '^[0-9a-f]{40} ' | sort | uniq
}

function opengl_env_cmake() {
  cmake -D CMAKE_C_COMPILER="$(which gcc)" -D CMAKE_CXX_COMPILER="$(which g++)" -D CMAKE_CXX_FLAGS="-lGLU -lglut -lGL" $1
}

function opengl_env_clean() {
  make clean;
  rm -rf CMakeCache.txt CMakeFiles cmake_install.cmake Makefile;
}

function backlight_fix () {
  echo $1 > /sys/class/backlight/intel_backlight/brightness
}

function vim_go () {
   nvim -c ':PlugInstall' -c ':UpdateRemotePlugins' -c ':qall'
}

function c_code () {
  code --new-window $1; exit
}

function compile_opengl_cpp () {
  g++ $1 -o $2 -lglut -lGLU -lGL
}

function sins () {
  sudo apt install $1 -y
}

function enospc_fix () {
  echo fs.inotify.max_user_watches=524288
}
function clean_home () {
  rmlint $HOME; sh $HOME/rmlint.sh -d
}

function wifi_nets ()
{
  nmcli d wifi list
}

function wifi_connect ()
{
  nmcli d wifi connect $1 password $2
}

function git_conf ()
{
  git config user.name "Gabriel"; git config user.email "gpsnts@protonmail.com"
}

function fix_datetime () ## Issue when change to Windows
{
  sudo ntpd -qg; sudo hwclock -w; sudo hwclock --show
}

function bckup ()
{
  cp -r $1 $HOME/Backups
}

function create_restore ()
{
  cp -r $1 .$1.restore
}

function new_wpps ()
{
  wal -i $HOME/.NewPapes
}

function wpps ()
{
  wal -i $HOME/.Papes
}

#### Aliases
alias vpython="python -m"
alias emulator="$HOME/Android/Sdk/tools/emulator"
alias avdmanager="$HOME/Android/Sdk/tools/bin/avdmanager"
alias l="ls"
alias sct="systemctl"
alias ee="exit"
alias c="clear"
alias vim="nvim"
alias pdf="evince"
alias hwclock="sudo hwclock"
alias disk_usage="ncdu"
alias tomcat="/opt/tomcat/bin/catalina.sh"

#### ZSH CONFS

export ZSH="/home/usr/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"
# ZSH_THEME="robbyrussell"

plugins=(
  virtualenv
  asdf
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
)
source $ZSH/oh-my-zsh.sh

#### PY ENV
export VIRTUAL_ENV_DISABLE_PROMPT=1

alias gen_requirements="pip freeze > requirements.txt"
alias venv_activate="source bin/activate"

#### DJANGO CONFIG
alias manage="python manage.py"

#### PYWAL CONFS
(cat ~/.cache/wal/sequences &)

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
