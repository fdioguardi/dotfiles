#
# .bash_aliases
#

alias                                               \
    ls='ls --color=auto'                            \
    l='ls --color=auto -lA --group-directories-first'                         \
    ll='ls --color=auto -lA --time-style long-iso --group-directories-first'  \
    cd..='cd ..'                                    \
    ..='cd ..'                                      \
    ...='cd ../../'                                 \
    ....='cd ../../../'                             \
    .....='cd ../../../../'                         \
    ff='sudo find / -name'                          \
    f='find . -name'                                \
    grep='grep --color=auto'                        \
    mkdir='mkdir -pv'                               \
    rmd='rmdir'                                     \
    mkd='mkdir -pv'

alias \
    pacman='sudo pacman --color=auto'               \
    p='sudo pacman --color=auto'                    \
    i='sudo pacman --color=auto --needed -S'        \
    r='sudo pacman --color=auto -Rns'               \
    y='yay'                                         \
    ia='yay --color=auto -S'                        \
    ra='yay --color=auto -Rns'                      \
    anakin='sudo pacman -Rns --noconfirm $(pacman -Qtdq)'

alias \
    vi='v'                                          \
    vim='v'                                         \
    vf='v $(fzf)'

alias \
    pls='sudo $(fc -ln -1)' \
    g='git'                 \
    ka='killall'            \
    ex='extract'            \
    firefox='~/.bin/firefox'\
    bt='bluetoothctl'       \
    :q='exit'               \
    :wq='exit'              \
    rc='recolorize'

alias \
    brightness='xrandr --output eDP-1 --brightness'                         \
    dots='/usr/bin/git --git-dir=/home/felipe/.dotfiles --work-tree=/home/felipe' # Managing dotfiles

alias \
    us='setxkbmap -layout "us" -variant "intl" ; setxkbmap -option caps:swapescape'     \
    dvorak='setxkbmap -layout us -variant dvp -option compose:102 -option numpad:shift3 -option kpdl:semi -option keypad:atm -option caps:shift'


# Useful but unused
#     egrep='egrep --color=auto'                      \
#     fgrep='fgrep --color=auto'                      \
#     pactree='pactree --color'                       \
#     vdir='vdir --color=auto'                        \
#     watch='watch --color'                           \
#     diff='diff --color=auto'                        \

#     vimdiff='nvim -d'                                           \
#     vimterm='nvim $HOME/.config/alacritty/alacritty.yml.in'     \

#     SS='sudo systemctl'     \

#     dnr='dotnet build && dotnet run'                                        \
#     pharo='pharo ~/Pharo/images/Pharo8.0-SNAPSHOT-64bit-a153e04.image &'    \
