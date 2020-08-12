#  __   __    __   __   ____  ____  ____
# / _\ (  )  (  ) / _\ / ___)(  __)/ ___)
#/    \/ (_/\ )( /    \\___ \ ) _) \___ \
#\_/\_/\____/(__)\_/\_/(____/(____)(____/

alias                                               \
    ls='ls --color=auto'                            \
    l='ls --color=auto -lA'                         \
    ll='ls --color=auto -lA --time-style long-iso'  \
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
    syu='sudo pacman --color=auto -Syu ; yay -Syu'  \
    pacman='sudo pacman --color=auto'               \
    p='sudo pacman --color=auto'                    \
    y='yay --color=auto'                            \
    anakin='sudo pacman -Rns --noconfirm $(pacman -Qtdq)'

alias \
    v='nvim'                                                    \
    vi='nvim'                                                   \
    vim='nvim'                                                  \
    vimconf='nvim $HOME/.config/nvim/config'                    \
    sv='sudo nvim'

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
