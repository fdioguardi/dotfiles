# Packages

List of manually installed packages, and some information on how to set them up.

## Table of contents

- [Audio](#audio)
- [Bluetooth](#bluetooth)
- [Chat](#chat)
- [Containers](#chat)
- [Core](#core)
- [Drivers](#drivers)
- [File Management](#file-management)
- [Graphical environment](#graphical-environment)
- [Media](#media)
- [Menus](#menus)
- [Network](#network)
- [Package management](#package-management)
- [Shell](#shell)
- [System monitoring](#system-monitoring)
- [Terminal emulator](#terminal-emulator)
- [Text edition](#text-edition)
- [Utilities](#utilities)

### Audio

- **[pipewire](https://archlinux.org/packages/extra/x86_64/pipewire/)**

- **[pipewire-pulse](https://archlinux.org/packages/extra/x86_64/pipewire-pulse/)**

- **[playerctl](https://archlinux.org/packages/community/x86_64/playerctl/)**

- **[pulsemixer](https://archlinux.org/packages/community/any/pulsemixer/)**

- **[ncspot](https://aur.archlinux.org/packages/ncspot-bin/)**

- **[wireplumber](https://archlinux.org/packages/extra/x86_64/wireplumber/)**

### Bluetooth

- **[bluez](https://archlinux.org/packages/extra/x86_64/bluez/)**

  - [bluez-utils](https://archlinux.org/packages/extra/x86_64/bluez-utils/)

  Enable _bluetoothctl_ command line utility

  ```bash
  sudo systemctl enable --now bluetooth.service
  ```

### Chat

- **[Discord](https://archlinux.org/packages/community/x86_64/discord/)**

- **[Telegram](https://archlinux.org/packages/community/x86_64/telegram-desktop/)**

### Containers

- **[docker](https://archlinux.org/packages/community/x86_64/docker/)**

  Enable and start it's systemd service:

  ```bash
  sudo systemctl enable --now docker.service
  ```

  Add yourself to the "docker" group to avoid the need for sudo:

  ```bash
  sudo usermod -aG docker "$USER"
  newgrp docker
  ```

### Core

- **[Linux LTS](https://archlinux.org/packages/core/x86_64/linux-lts/)**

- **[Linux firmware](https://archlinux.org/packages/core/x86_64/linux-firmware/)**

- **[base](https://archlinux.org/packages/core/any/base/)**

- **[intel-ucode](https://archlinux.org/packages/extra/any/intel-ucode/)**

### Drivers

- **[xf86-input-libinput](https://archlinux.org/packages/extra/x86_64/libinput/)**

### File Management

- **[fzf](https://archlinux.org/packages/community/x86_64/fzf/)**

Use <C-f\> to open `fzf` and cd into the selected directory:

```bash
sudo sed -i "s/bindkey ..... fzf-cd-widget/bindkey \'^F\' fzf-cd-widget/g" /usr/share/fzf/key-bindings.zsh
```

- **[Thunar](https://archlinux.org/packages/extra/x86_64/thunar/)**

  - [Trash support](https://archlinux.org/packages/extra/x86_64/gvfs/)

  - [Virtual FS support](https://archlinux.org/packages/extra/x86_64/gvfs-smb/)

  - [SSH support](https://archlinux.org/packages/community/x86_64/sshfs/)

  - [Archive plugin](https://archlinux.org/packages/extra/x86_64/thunar-archive-plugin/)

  - [Archive manager](https://archlinux.org/packages/community/x86_64/xarchiver/)

    - [rar](https://aur.archlinux.org/packages/rar/)

    - [zip](https://archlinux.org/packages/extra/x86_64/zip/)

    - [unzip](https://archlinux.org/packages/extra/x86_64/unzip/)

- **[trash-cli](https://archlinux.org/packages/community/any/trash-cli/)**

### Graphical environment

- **[xorg-server](https://archlinux.org/packages/extra/x86_64/xorg-server/)**

- **[xorg-xinit](https://archlinux.org/packages/extra/x86_64/xorg-xinit/)**

- **[LightDM](https://archlinux.org/packages/extra/x86_64/lightdm/)**

  - [mini-greeter](https://aur.archlinux.org/packages/lightdm-mini-greeter/)

- **[bspwm](https://aur.archlinux.org/packages/bspwm-git/)**

  - [sxhkd](https://archlinux.org/packages/community/x86_64/sxhkd/)

  - [xorg-xrandr](https://archlinux.org/packages/extra/x86_64/xorg-xrandr/)

  - [xorg-xsetroot](https://archlinux.org/packages/extra/x86_64/xorg-xsetroot/)

  - [xtitle](https://aur.archlinux.org/packages/xtitle/)

- **[polybar](https://aur.archlinux.org/packages/polybar/)**

  - [eww](https://aur.archlinux.org/packages/eww-git/)

  To apply fonts:

  ```bash
  fc-cache
  ```

### Media

- **[feh](https://archlinux.org/packages/extra/x86_64/feh/)**

- **[mpv](https://archlinux.org/packages/community/x86_64/mpv/)**

  - [youtube-dl](https://archlinux.org/packages/community/any/youtube-dl/)

- **[Zathura](https://archlinux.org/packages/community/x86_64/zathura/)**

  - [zathura-pdf-mupdf](https://archlinux.org/packages/community/x86_64/zathura-pdf-mupdf/)

  To apply settings and load a colorscheme:

  ```bash
  recolorize [ colorscheme ]
  ```

### Menus

- **[dmenu](https://archlinux.org/packages/community/x86_64/dmenu/)**

### Network

- **[Network Manager](https://archlinux.org/packages/extra/x86_64/networkmanager/)**

  Enable and start it's systemd service:

  ```bash
  sudo systemctl enable --now NetworkManager.service
  ```

  Discover and connect to Wi-Fi networks through a nice interface:

  ```bash
  nmtui
  ```

  and switch between known networks:

  ```bash
  nmcli connection up <SSID>
  ```

- **[firefox](https://archlinux.org/packages/extra/x86_64/firefox/)**

### Package management

- **[Paru](https://aur.archlinux.org/packages/paru-bin/)**

  - [base-devel](https://archlinux.org/groups/x86_64/base-devel/)

  - [git](https://archlinux.org/packages/extra/x86_64/git/)

  After installing `base-devel`, clone with `git` and install

  ```bash
  git clone https://aur.archlinux.org/paru-bin.git
  cd paru-bin
  makepkg -si
  cd ..
  rm -rf paru-bin/
  ```

- **[informant](https://aur.archlinux.org/packages/informant/)**

  Add yourself to the "informant" group to avoid the need for sudo:

  ```bash
  sudo usermod -aG informant "$USER"
  ```

- **[reflector](https://archlinux.org/packages/community/any/reflector/)**

  - [rsync](https://archlinux.org/packages/extra/x86_64/rsync/)

  Enable and start it's systemd service and timer:

  ```bash
  sudo systemctl enable --now reflector.service
  sudo systemctl enable --now reflector.timer
  ```

- **[topgrade](https://aur.archlinux.org/packages/topgrade/)**

### Shell

- **Bash**

- **[Dash](https://archlinux.org/packages/core/x86_64/dash/)**

  **Conflict with LightDM**

  The file /etc/lightdm/Xsession has "bashisms" even though it uses `#!/bin/sh`.
  Change the shebang to `#!/bin/bash` or replace the file with [this one](.system/etc/lightdm/Xsession).

  Use dash as /bin/sh:

  ```bash
  sudo ln -sfT dash /usr/bin/sh
  ```

  Updates of dash will overwrite /bin/sh.
  To prevent this, create this pacman hook in `/usr/share/libalpm/hooks/dash-sh.hook`.

  ```systemd-hook
  [Trigger]
  Type = Package
  Operation = Install
  Operation = Upgrade
  Target = bash

  [Action]
  Description = Re-pointing /bin/sh symlink to dash…
  When = PostTransaction
  Exec = /usr/bin/ln -sfT dash /usr/bin/sh
  Depends = dash

  ```

- **[Zsh](https://archlinux.org/packages/extra/x86_64/zsh/)**

  - [Syntax highlighting](https://aur.archlinux.org/packages/zsh-fast-syntax-highlighting/)

Make zsh the default interactive shell for the current user:

```bash
chsh -s $(which zsh) $USER
```

### System monitoring

- **[htop](https://archlinux.org/packages/extra/x86_64/htop/)**

- **[ncdu](https://archlinux.org/packages/community/x86_64/ncdu/)**

- **[tlp](https://archlinux.org/packages/community/any/tlp/)**

  -**[ethtool](https://archlinux.org/packages/extra/x86_64/ethtool/)**

  -**[smartmontools](https://archlinux.org/packages/extra/x86_64/smartmontools/)**

Enable and start it's systemd service:

```bash
sudo systemctl enable --now tlp.service
```

Mask `systemd-rfkill.service` and `systemd-rfkill.socket` to remove warnings:

```bash
sudo systemctl mask systemd-rfkill.service
sudo systemctl mask systemd-rfkill.socket
```

### Terminal emulator

- **[Kitty](https://archlinux.org/packages/community/x86_64/kitty/)**

  To apply fonts:

  ```bash
  fc-cache
  ```

  To apply settings and load a colorscheme:

  ```bash
  recolorize [ colorscheme ]
  ```

### Text edition

- **[Neovim](https://www.github.com/neovim/neovim/wiki/Installing-Neovim#install-from-source)**

  - [Clipboard provider](https://archlinux.org/packages/extra/x86_64/xclip/)

  - [Cmake](https://archlinux.org/packages/extra/x86_64/cmake/)

  - [Shellcheck](https://aur.archlinux.org/packages/shellcheck-bin/)

  - [black](https://archlinux.org/packages/community/any/python-black/)

  - [clang](https://archlinux.org/packages/extra/x86_64/clang/)

  - [markdownlint-cli](https://aur.archlinux.org/packages/nodejs-markdownlint-cli/)

  - [ninja](https://archlinux.org/packages/community/x86_64/ninja/)

  - [nodejs](https://archlinux.org/packages/community/x86_64/nodejs/)

  - [prettier](https://archlinux.org/packages/community/any/prettier/)

  - [pyright](https://archlinux.org/packages/community/any/pyright/)

  - [ripgrep](https://archlinux.org/packages/community/x86_64/ripgrep/)

  - [shfmt](https://archlinux.org/packages/community/x86_64/shfmt/)

  - [stylua](https://aur.archlinux.org/packages/stylua-bin/)

  - [lua-language-server](https://archlinux.org/packages/community/x86_64/lua-language-server/)

  - [tree-sitter](https://archlinux.org/packages/community/x86_64/tree-sitter/)

- **[Libre Office](https://archlinux.org/packages/extra/x86_64/libreoffice-still/)**

  - [Vista fonts](https://aur.archlinux.org/packages/ttf-vista-fonts/)

  - [MS fonts](https://aur.archlinux.org/packages/ttf-ms-fonts/)

### Utilities

- **[archlinux-contrib](https://archlinux.org/packages/community/any/archlinux-contrib/)**

- **[bat](https://archlinux.org/packages/community/x86_64/bat/)**

- **[bc](https://archlinux.org/packages/extra/x86_64/bc/)**

- **[maim](https://archlinux.org/packages/community/x86_64/maim/)**

- **[man-db](https://archlinux.org/packages/core/x86_64/man-db/)**

  - [man-pages](https://archlinux.org/packages/core/any/man-pages/)

- **[Redshift](https://archlinux.org/packages/community/x86_64/redshift/)**

- **[tokei](https://archlinux.org/packages/community/x86_64/tokei/)**

- **[unclutter](https://archlinux.org/packages/community/x86_64/unclutter/)**
