## Packages

List of manually installed packages, and some information on how to set them up.

### Table of contents

- [Core](#core)<br>
- [Drivers](#drivers)<br>
- [Graphical environment](#graphical-environment)<br>
- [Terminal emulator](#terminal-emulator)<br>
- [Bluetooth](#bluetooth)<br>
- [Audio](#audio)<br>
- [Text edition](#text-edition)<br>
- [Menus](#menus)<br>
- [Package management](#package-management)<br>
- [Shell](#shell)<br>
- [Utilities](#utilities)<br>
- [Chat](#chat)<br>
- [File Management](#file-management)<br>
- [Network](#network)<br>
- [Media](#media)<br>

### Core

- **[Linux LTS](https://archlinux.org/packages/core/x86_64/linux-lts/)**

- **[Linux firmware](https://archlinux.org/packages/core/x86_64/linux-firmware/)**

- **[base](https://archlinux.org/packages/core/any/base/)**

- **[intel-ucode](https://archlinux.org/packages/extra/any/intel-ucode/)**

### Drivers

- **[xf86-input-libinput](https://archlinux.org/packages/extra/x86_64/libinput/)**

### Graphical environment

- **[xorg-server](https://archlinux.org/packages/extra/x86_64/xorg-server/)**

- **[xorg-xinit](https://archlinux.org/packages/extra/x86_64/xorg-xinit/)**

- **[LightDM](https://archlinux.org/packages/extra/x86_64/lightdm/)**

  - [mini-greeter](https://aur.archlinux.org/packages/lightdm-mini-greeter/)

- **[bspwm](https://archlinux.org/packages/community/x86_64/bspwm/)**

  - [sxhkd](https://archlinux.org/packages/community/x86_64/sxhkd/)

  - [xorg-xrandr](https://archlinux.org/packages/extra/x86_64/xorg-xrandr/)

  - [xorg-xsetroot](https://archlinux.org/packages/extra/x86_64/xorg-xsetroot/)

  - [xtitle](https://aur.archlinux.org/packages/xtitle/)

- **[polybar](https://aur.archlinux.org/packages/polybar/)**

  To apply fonts:

  ```bash
  fc-cache
  ```

### Terminal emulator

- **[Kitty](https://archlinux.org/packages/community/x86_64/kitty/)**

  To apply fonts:

  ```bash
  fc-cache
  ```

  To apply settings and load a random colorscheme:

  ```bash
  recolorize
  ```

  or a specific one:
  <pre>
  <code>recolorize <i>colorscheme</i></code>
  </pre>

### Bluetooth

- **[bluez](https://archlinux.org/packages/extra/x86_64/bluez/)**

  - [bluez-utils](https://archlinux.org/packages/extra/x86_64/bluez-utils/)

  Enable _bluetoothctl_ command line utility

  ```bash
  sudo systemctl enable --now bluetooth.service
  ```

### Audio

- **[playerctl](https://archlinux.org/packages/community/x86_64/playerctl/)**

- **[pipewire](https://archlinux.org/packages/extra/x86_64/pipewire/)**

  - [pipewire-pulse](https://archlinux.org/packages/extra/x86_64/pipewire-pulse/)

- **[pulsemixer](https://archlinux.org/packages/community/any/pulsemixer/)**

  For correct microphone settings, set:

  - Built-in Audio Analog Stereo input --> on 30
  - WEBRTC VoiceEngine --> on 70

- **[ncspot](https://aur.archlinux.org/packages/ncspot/)**

### Text edition

- **[Neovim](https://www.github.com/neovim/neovim/wiki/Installing-Neovim#install-from-source)**

  - [Clipboard provider](https://archlinux.org/packages/extra/x86_64/xclip/)

  - [Cmake](https://archlinux.org/packages/extra/x86_64/cmake/)

  - [ninja](https://archlinux.org/packages/community/x86_64/ninja/)

  - [ripgrep](https://archlinux.org/packages/community/x86_64/ripgrep/)

  - [tree-sitter](https://archlinux.org/packages/community/x86_64/tree-sitter/)

  - [efm-langserver](https://archlinux.org/packages/community/x86_64/efm-langserver/)

    - [black](https://archlinux.org/packages/community/any/python-black/)

    - [eslint](https://archlinux.org/packages/community/any/eslint/)

    - [google-java-format](https://aur.archlinux.org/packages/google-java-format/)

    - [lua-format](https://aur.archlinux.org/packages/lua-format/)

    - [prettier](https://archlinux.org/packages/community/any/prettier/)

    - [shfmt](https://archlinux.org/packages/community/x86_64/shfmt/)

    - [Shellcheck](https://aur.archlinux.org/packages/shellcheck-bin/)

  - [clang](https://archlinux.org/packages/extra/x86_64/clang/)

  - [jdtls](https://ftp.fau.de/eclipse/jdtls/snapshots/jdt-language-server-latest.tar.gz)

    - [jdk11-openjdk](https://archlinux.org/packages/extra/x86_64/jdk11-openjdk/)

    Extract it into `"$XDG_CACHE_HOME"/nvim/jdtls`

  - [pyright](https://archlinux.org/packages/community/any/pyright/)

  - [tsserver](https://aur.archlinux.org/packages/typescript-language-server-bin/)

- **[Libre Office](https://archlinux.org/packages/extra/x86_64/libreoffice-still/)**

  - [Vista fonts](https://aur.archlinux.org/packages/ttf-vista-fonts/)

  - [MS fonts](https://aur.archlinux.org/packages/ttf-ms-fonts/)

### Menus

- **[Rofi](https://archlinux.org/packages/community/x86_64/rofi/)**

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

  Add yourself to group "informant" to avoid the need for sudo

  ```bash
  sudo usermod -aG informant $USER
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

  - [Bash completion](https://archlinux.org/packages/extra/any/bash-completion/)

- **[Dash](https://archlinux.org/packages/core/x86_64/dash/)**

  ##### Conflict with LightDM

  The file /etc/lightdm/Xsession has "bashisms" even though it uses `#!/bin/sh`. Change the shebang to `#!/bin/bash` or replace the file with [this one](.system/etc/lightdm/Xsession).

  Use dash as /bin/sh:

  ```bash
  sudo ln -sfT dash /usr/bin/sh
  ```

  Updates of dash will overwrite /bin/sh. To prevent this, create this pacman hook in `/usr/share/libalpm/hooks/dash-sh.hook`.

  ```
  [Trigger]
  Type = Package
  Operation = Install
  Operation = Upgrade
  Target = bash

  [Action]
  Description = Re-pointing /bin/sh symlink to dash...
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

### Utilities

- **[archlinux-contrib](https://archlinux.org/packages/community/any/archlinux-contrib/)**

- **[bat](https://archlinux.org/packages/community/x86_64/bat/)**

- **[bc](https://archlinux.org/packages/extra/x86_64/bc/)**

- **[htop](https://archlinux.org/packages/extra/x86_64/htop/)**

- **[maim](https://archlinux.org/packages/community/x86_64/maim/)**

- **[man-db](https://archlinux.org/packages/core/x86_64/man-db/)**

  - [man-pages](https://archlinux.org/packages/core/any/man-pages/)

- **[Redshift](https://archlinux.org/packages/community/x86_64/redshift/)**

- **[unclutter](https://archlinux.org/packages/community/x86_64/unclutter/)**

### Chat

- **[Discord](https://archlinux.org/packages/community/x86_64/discord/)**

- **[Telegram](https://archlinux.org/packages/community/x86_64/telegram-desktop/)**

### File Management

- **[Thunar](https://archlinux.org/packages/extra/x86_64/thunar/)**

  - [Trash support](https://archlinux.org/packages/extra/x86_64/gvfs/)

  - [Virtual FS support](https://archlinux.org/packages/extra/x86_64/gvfs-smb/)

  - [SSH support](https://archlinux.org/packages/community/x86_64/sshfs/)

  - [Archive plugin](https://archlinux.org/packages/extra/x86_64/thunar-archive-plugin/)

  - [Archive manager](https://archlinux.org/packages/community/x86_64/xarchiver/)

    - [rar](https://aur.archlinux.org/packages/rar/)

    - [zip](https://archlinux.org/packages/extra/x86_64/zip/)

    - [unzip](https://archlinux.org/packages/extra/x86_64/unzip/)

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
  <pre>
  <code>nmcli connection up <i>SSID</i></code>
  </pre>

- **[Brave](https://aur.archlinux.org/packages/brave-bin/)**

### Media

- **[feh](https://archlinux.org/packages/extra/x86_64/feh/)**

- **[mpv](https://archlinux.org/packages/community/x86_64/mpv/)**

  - **[youtube-dl](https://archlinux.org/packages/community/any/youtube-dl/)**

- **[Zathura](https://archlinux.org/packages/community/x86_64/zathura/)**

  - **[zathura-pdf-mupdf](https://archlinux.org/packages/community/x86_64/zathura-pdf-mupdf/)**

  To apply settings and load a random colorscheme:

  ```bash
  recolorize
  ```

  or a specific one:
  <pre>
  <code>recolorize <i>colorscheme</i></code>
  </pre>

- **[Steam](https://archlinux.org/packages/multilib/x86_64/steam/)**
