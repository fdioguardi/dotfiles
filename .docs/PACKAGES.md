# Packages

List of manually installed packages, and some information on how to set them up.

## Table of contents

- [Audio](#audio)
- [Bluetooth](#bluetooth)
- [Chat](#chat)
- [Containers](#containers)
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

- **[More Linux firmware](https://aur.archlinux.org/packages/mkinitcpio-firmware)**

- **[base](https://archlinux.org/packages/core/any/base/)**

- **[intel-ucode](https://archlinux.org/packages/extra/any/intel-ucode/)**

### Drivers

- **[xf86-input-libinput](https://archlinux.org/packages/extra/x86_64/libinput/)**

### File Management

- **[fzf](https://archlinux.org/packages/community/x86_64/fzf/)**

Use <C-f\> to open `fzf` and cd into the selected directory:

```bash
sudo sed -i "s/\\\ec/^F/g" /usr/share/fzf/key-bindings.zsh
```

- **[Thunar](https://archlinux.org/packages/extra/x86_64/thunar/)**

  - [Archive manager](https://archlinux.org/packages/community/x86_64/xarchiver/)

    - [rar](https://aur.archlinux.org/packages/rar/)

    - [zip](https://archlinux.org/packages/extra/x86_64/zip/)

    - [unzip](https://archlinux.org/packages/extra/x86_64/unzip/)

  - [Archive plugin](https://archlinux.org/packages/extra/x86_64/thunar-archive-plugin/)

  - [SSH support](https://archlinux.org/packages/community/x86_64/sshfs/)

  - [Trash support](https://archlinux.org/packages/extra/x86_64/gvfs/)

  - [Virtual FS support](https://archlinux.org/packages/extra/x86_64/gvfs-smb/)

- **[trash-cli](https://archlinux.org/packages/community/any/trash-cli/)**

### Graphical environment

- **[xorg-server](https://archlinux.org/packages/extra/x86_64/xorg-server/)**

- **[xorg-xinit](https://archlinux.org/packages/extra/x86_64/xorg-xinit/)**

- **[LightDM](https://archlinux.org/packages/extra/x86_64/lightdm/)**

  - [mini-greeter](https://aur.archlinux.org/packages/lightdm-mini-greeter/)

  Add yourself to the `nopasswdlogin` group to be able to login without a password.

  ```bash
  sudo usermod -aG nopasswdlogin "$USER"
  ```

- **[bspwm](https://aur.archlinux.org/packages/bspwm-git/)**

  - [sxhkd](https://archlinux.org/packages/community/x86_64/sxhkd/)

  There's a bug with the package `xkeyboard-config`.
  It creates multiple copies of the same shortcut when working with
  different keyboard layouts.
  To fix it, downgrade `xkeyboard-config` to the version `3.36-3`.

  ```bash
  sudo pacman -U /var/cache/pacman/pkg/xkeyboard-config-2.36-3-any.pkg.tar.zst
  ```

  - [xorg-xrandr](https://archlinux.org/packages/extra/x86_64/xorg-xrandr/)

  - [xorg-xsetroot](https://archlinux.org/packages/extra/x86_64/xorg-xsetroot/)

  - [xtitle](https://aur.archlinux.org/packages/xtitle/)

- **[polybar](https://aur.archlinux.org/packages/polybar/)**

  - [eww](https://aur.archlinux.org/packages/eww-git/)

  To apply fonts:

  ```bash
  fc-cache
  ```

- **[xsecurelock](https://archlinux.org/packages/community/x86_64/xsecurelock/)**

  - [xss-lock](https://archlinux.org/packages/community/x86_64/xss-lock/)

### Media

- **[feh](https://archlinux.org/packages/extra/x86_64/feh/)**

- **[mpv](https://archlinux.org/packages/community/x86_64/mpv/)**

  - [yt-dlp](https://archlinux.org/packages/extra/any/yt-dlp/)

- **[Zathura](https://archlinux.org/packages/community/x86_64/zathura/)**

  - [zathura-pdf-mupdf](https://archlinux.org/packages/community/x86_64/zathura-pdf-mupdf/)

  To apply settings and load a colorscheme:

  ```bash
  recolorize [ colorscheme ]
  ```

### Menus

- **[dmenu](https://archlinux.org/packages/community/x86_64/dmenu/)**

### Network

- **[firefox](https://archlinux.org/packages/extra/x86_64/firefox/)**

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

- **[ssh-audit](https://archlinux.org/packages/extra/any/ssh-audit/)**

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

- **[downgrade](https://aur.archlinux.org/packages/downgrade/)**

- **[wget](https://archlinux.org/packages/extra/x86_64/wget/)**

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

  - [Bash language server](https://archlinux.org/packages/extra/any/bash-language-server/)

  - [Shellcheck](https://aur.archlinux.org/packages/shellcheck-bin/)

  - [clang](https://archlinux.org/packages/extra/x86_64/clang/)

  - [ninja](https://archlinux.org/packages/community/x86_64/ninja/)

  - [nodejs](https://archlinux.org/packages/community/x86_64/nodejs/)

  - [prettier](https://archlinux.org/packages/community/any/prettier/)

  - [ripgrep](https://archlinux.org/packages/community/x86_64/ripgrep/)

  - [ruff-lsp](https://aur.archlinux.org/packages/ruff-lsp)

  - [taplo](https://archlinux.org/packages/extra/x86_64/taplo-cli/)

  - [shfmt](https://archlinux.org/packages/community/x86_64/shfmt/)

  - [stylua](https://archlinux.org/packages/extra/x86_64/stylua/)

  - [lua-language-server](https://archlinux.org/packages/community/x86_64/lua-language-server/)

  - [tree-sitter](https://archlinux.org/packages/community/x86_64/tree-sitter/)

- **[Libre Office](https://archlinux.org/packages/extra/x86_64/libreoffice-still/)**

  - [Vista fonts](https://aur.archlinux.org/packages/ttf-vista-fonts/)

  - [MS fonts](https://aur.archlinux.org/packages/ttf-ms-fonts/)

- **[VSCode](https://aur.archlinux.org/packages/visual-studio-code-insiders-bin/)**

  - [ASP .NET](https://aur.archlinux.org/packages/aspnet-runtime-6.0-bin/)

  - [Dotnet](https://archlinux.org/packages/extra/x86_64/dotnet-sdk/)

### Utilities

- **[archlinux-contrib](https://archlinux.org/packages/community/any/archlinux-contrib/)**

- **[bat](https://archlinux.org/packages/community/x86_64/bat/)**

- **[bc](https://archlinux.org/packages/extra/x86_64/bc/)**

- **[maim](https://archlinux.org/packages/community/x86_64/maim/)**

- **[man-db](https://archlinux.org/packages/core/x86_64/man-db/)**

  - [man-pages](https://archlinux.org/packages/core/any/man-pages/)

- **[pdbpp](https://aur.archlinux.org/packages/python-pdbpp/)**

  - [sox](https://archlinux.org/packages/community/x86_64/sox/)

    - [libmad](https://archlinux.org/packages/extra/x86_64/libmad/)

    - [twolame](https://archlinux.org/packages/community/x86_64/twolame/)

Change default location of `pdbpp`'s config file:

```bash
sudo sed -i "s/\.pdbrc.py/.config\/pdbpp\/pdbrc.py/" /usr/lib/python*/site-packages/pdb.py
```

Install `wmctrl` to enable sounds:

```bash
PIP_REQUIRE_VIRTUALENV=0 python -m pip install wmctrl
```

- **[Redshift](https://archlinux.org/packages/community/x86_64/redshift/)**

- **[simplescreenrecorder](https://archlinux.org/packages/community/x86_64/simplescreenrecorder/)**

- **[tokei](https://archlinux.org/packages/community/x86_64/tokei/)**

- **[unclutter](https://archlinux.org/packages/community/x86_64/unclutter/)**
