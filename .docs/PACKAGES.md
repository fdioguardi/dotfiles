# Packages

List of manually installed packages, and some information on how to set them up.

## Table of contents

- [Audio](#audio)
- [Bluetooth](#bluetooth)
- [Chat](#chat)
- [Containers](#containers)
- [Core](#core)
- [Development](#development)
- [Drivers](#drivers)
- [File Management](#file-management)
- [Games](#games)
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

- **[playerctl](https://archlinux.org/packages/extra/x86_64/playerctl/)**

- **[pulsemixer](https://archlinux.org/packages/extra/any/pulsemixer/)**

- **[ncspot](https://archlinux.org/packages/extra/x86_64/ncspot/)**

- **[wireplumber](https://archlinux.org/packages/extra/x86_64/wireplumber/)**

  sxhkd sets the volume with its `wpctl`.

### Bluetooth

- **[bluez](https://archlinux.org/packages/extra/x86_64/bluez/)**

  - [bluez-utils](https://archlinux.org/packages/extra/x86_64/bluez-utils/)

  Enable _bluetoothctl_ command line utility

  ```bash
  sudo systemctl enable --now bluetooth.service
  ```
- **[bluetui](https://archlinux.org/packages/extra/x86_64/bluetui/)**

### Chat

- **[Discord](https://archlinux.org/packages/extra/x86_64/discord/)**

- **[Slack](https://aur.archlinux.org/packages/slack-desktop)**

- **[Telegram](https://archlinux.org/packages/extra/x86_64/telegram-desktop/)**

### Containers

- **[docker](https://archlinux.org/packages/extra/x86_64/docker/)**

  Enable and start its systemd service:

  ```bash
  sudo systemctl enable --now docker.service
  ```

  Add yourself to the "docker" group to avoid the need for sudo:

  ```bash
  sudo usermod -aG docker "$USER"
  newgrp docker
  ```

  - [docker-compose](https://archlinux.org/packages/extra/x86_64/docker-compose/)

- **[kubectl](https://archlinux.org/packages/extra/x86_64/kubectl/)**

  - [minikube](https://archlinux.org/packages/extra/x86_64/minikube/)

### Core

- **[Linux](https://archlinux.org/packages/core/x86_64/linux/)**

  - [linux-headers](https://archlinux.org/packages/core/x86_64/linux-headers/)

- **[Linux LTS](https://archlinux.org/packages/core/x86_64/linux-lts/)**, as a fallback kernel

- **[lvm2](https://archlinux.org/packages/core/x86_64/lvm2/)**

  The root and swap volumes live in LVM, see the mkinitcpio drop-in in
  [system files](./INSTALL.md#system-files).

- **[Linux firmware](https://archlinux.org/packages/core/any/linux-firmware/)**

- **[More Linux firmware](https://aur.archlinux.org/packages/mkinitcpio-firmware)**

- **[base](https://archlinux.org/packages/core/any/base/)**

- **[intel-ucode](https://archlinux.org/packages/extra/any/intel-ucode/)**

### Development

- **[Claude Code](https://aur.archlinux.org/packages/claude-code)**

- **[JetBrains Toolbox](https://aur.archlinux.org/packages/jetbrains-toolbox)**

- **[OpenJDK](https://archlinux.org/packages/extra/x86_64/jdk-openjdk/)**

  - [OpenJDK 17](https://archlinux.org/packages/extra/x86_64/jdk17-openjdk/)

  - [OpenJDK 8](https://archlinux.org/packages/extra/x86_64/jdk8-openjdk/)

- **[rustup](https://archlinux.org/packages/extra/x86_64/rustup/)**

  - [cargo-update](https://archlinux.org/packages/extra/x86_64/cargo-update/)

- **[Bun](https://aur.archlinux.org/packages/bun-bin)**

- **[TypeScript language server](https://archlinux.org/packages/extra/any/typescript-language-server/)**

### Drivers

- **[mesa](https://archlinux.org/packages/extra/x86_64/mesa/)**

- **[lib32-mesa](https://archlinux.org/packages/multilib/x86_64/lib32-mesa/)**

- **[xf86-video-amdgpu](https://archlinux.org/packages/extra/x86_64/xf86-video-amdgpu/)**

- **[vulkan-radeon](https://archlinux.org/packages/extra/x86_64/vulkan-radeon/)**

- **[lib32-vulkan-radeon](https://archlinux.org/packages/multilib/x86_64/lib32-vulkan-radeon/)**

### File Management

- **[fzf](https://archlinux.org/packages/extra/x86_64/fzf/)**

  `<C-f>` opens `fzf` and cds into the selected directory
  (bound in `input.zsh`).

- **[Thunar](https://archlinux.org/packages/extra/x86_64/thunar/)**

  - [Archive manager](https://archlinux.org/packages/extra/x86_64/xarchiver/)

    - [rar](https://aur.archlinux.org/packages/rar)

    - [zip](https://archlinux.org/packages/extra/x86_64/zip/)

    - [unzip](https://archlinux.org/packages/extra/x86_64/unzip/)

  - [Archive plugin](https://archlinux.org/packages/extra/x86_64/thunar-archive-plugin/)

  - [SSH support](https://archlinux.org/packages/extra/x86_64/sshfs/)

  - [Trash support](https://archlinux.org/packages/extra/x86_64/gvfs/)

  - [Virtual FS support](https://archlinux.org/packages/extra/x86_64/gvfs-smb/)

- **[trash-cli](https://archlinux.org/packages/extra/any/trash-cli/)**

### Games

- **[Steam](https://archlinux.org/packages/multilib/x86_64/steam/)**

### Graphical environment

- **[xorg-server](https://archlinux.org/packages/extra/x86_64/xorg-server/)**

- **[xorg-xinit](https://archlinux.org/packages/extra/x86_64/xorg-xinit/)**

- **[LightDM](https://archlinux.org/packages/extra/x86_64/lightdm/)**

  - [mini-greeter](https://aur.archlinux.org/packages/lightdm-mini-greeter)

  - [numlockx](https://archlinux.org/packages/extra/x86_64/numlockx/)

  - [accountsservice](https://archlinux.org/packages/extra/x86_64/accountsservice/)

  Add yourself to the `nopasswdlogin` group to be able to login without a password.

  ```bash
  sudo usermod -aG nopasswdlogin "$USER"
  ```

- **[bspwm](https://aur.archlinux.org/packages/bspwm-git)**

  - [sxhkd](https://archlinux.org/packages/extra/x86_64/sxhkd/)

  - [xorg-xrandr](https://archlinux.org/packages/extra/x86_64/xorg-xrandr/)

  - [xorg-xsetroot](https://archlinux.org/packages/extra/x86_64/xorg-xsetroot/)

- **[polybar](https://archlinux.org/packages/extra/x86_64/polybar/)**

  - [eww](https://aur.archlinux.org/packages/eww-git)

  - [xorg-xinput](https://archlinux.org/packages/extra/x86_64/xorg-xinput/)
    and [xdotool](https://archlinux.org/packages/extra/x86_64/xdotool/),
    to close the calendar when clicking outside of it

  - [xkb-switch](https://aur.archlinux.org/packages/xkb-switch),
    to show and switch the keyboard layout

  - [noto-fonts](https://archlinux.org/packages/extra/any/noto-fonts/)


  To apply fonts:

  ```bash
  fc-cache
  ```

- **[xsecurelock](https://archlinux.org/packages/extra/x86_64/xsecurelock/)**

  - [xss-lock](https://archlinux.org/packages/extra/x86_64/xss-lock/)

### Media

- **[feh](https://archlinux.org/packages/extra/x86_64/feh/)**

- **[mpv](https://archlinux.org/packages/extra/x86_64/mpv/)**

  - [yt-dlp](https://archlinux.org/packages/extra/any/yt-dlp/)

  - [mpv-mpris](https://archlinux.org/packages/extra/x86_64/mpv-mpris/), to control it with `playerctl`

  - [thumbfast](https://aur.archlinux.org/packages/mpv-thumbfast-git)

  - [ModernZ](https://aur.archlinux.org/packages/mpv-modernz-git), an OSC with thumbfast's previews

- **[qBittorrent](https://archlinux.org/packages/extra/x86_64/qbittorrent/)**

- **[Stremio](https://aur.archlinux.org/packages/stremio)**

- **[calibre](https://archlinux.org/packages/extra/x86_64/calibre/)**

- **[catt](https://aur.archlinux.org/packages/catt)**

  - [mkchromecast](https://aur.archlinux.org/packages/mkchromecast-git)

- **[Zathura](https://archlinux.org/packages/extra/x86_64/zathura/)**

  - [zathura-pdf-mupdf](https://archlinux.org/packages/extra/x86_64/zathura-pdf-mupdf/)

  To apply settings and load a colorscheme:

  ```bash
  recolorize [ colorscheme ]
  ```

### Menus

- **[dmenu](https://archlinux.org/packages/extra/x86_64/dmenu/)**

### Network

- **[firefox](https://archlinux.org/packages/extra/x86_64/firefox/)**

- **[Chromium](https://archlinux.org/packages/extra/x86_64/chromium/)**

- **[Network Manager](https://archlinux.org/packages/extra/x86_64/networkmanager/)**

  Enable and start its systemd service:

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

- **[ngrok](https://aur.archlinux.org/packages/ngrok)**

- **[ssh-audit](https://archlinux.org/packages/extra/any/ssh-audit/)**

### Package management

- **[Paru](https://aur.archlinux.org/packages/paru-bin)**

  - [base-devel](https://archlinux.org/packages/core/any/base-devel/)

  - [git](https://archlinux.org/packages/extra/x86_64/git/)

  After installing `base-devel`, clone with `git` and install

  ```bash
  git clone https://aur.archlinux.org/paru-bin.git
  cd paru-bin
  makepkg -si
  cd ..
  rm -rf paru-bin/
  ```

- **[informant](https://archlinux.org/packages/extra/any/informant/)**

  Add yourself to the "informant" group to avoid the need for sudo:

  ```bash
  sudo usermod -aG informant "$USER"
  ```

- **[reflector](https://archlinux.org/packages/extra/any/reflector/)**

  - [rsync](https://archlinux.org/packages/extra/x86_64/rsync/)

  Enable and start its systemd service and timer:

  ```bash
  sudo systemctl enable --now reflector.service
  sudo systemctl enable --now reflector.timer
  ```

- **[topgrade](https://aur.archlinux.org/packages/topgrade)**

- **[downgrade](https://aur.archlinux.org/packages/downgrade)**

- **[wget](https://archlinux.org/packages/extra/x86_64/wget/)**

### Shell

- **Bash**

- **[Dash](https://archlinux.org/packages/core/x86_64/dash/)**

  **Conflict with LightDM**

  The file /etc/lightdm/Xsession has "bashisms" even though it uses `#!/bin/sh`.
  Change the shebang to `#!/bin/bash` or replace the file with [this one](../.config/system/etc/lightdm/Xsession).

  Use dash as /bin/sh:

  ```bash
  sudo ln -sfT dash /usr/bin/sh
  ```

  Updates of dash will overwrite /bin/sh.
  To prevent this, create this pacman hook in `/usr/share/libalpm/hooks/dash-sh.hook` (or `/etc/pacman.d/hooks` if this path is configured in the `HookDir` option of `pacman.conf`).

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

  - [Syntax highlighting](https://aur.archlinux.org/packages/zsh-fast-syntax-highlighting)

Make zsh the default interactive shell for the current user:

```bash
chsh -s $(which zsh) $USER
```

### System monitoring

- **[htop](https://archlinux.org/packages/extra/x86_64/htop/)**

- **[ncdu](https://archlinux.org/packages/extra/x86_64/ncdu/)**

- **[lm_sensors](https://archlinux.org/packages/extra/x86_64/lm_sensors/)**

  - [xsensors](https://archlinux.org/packages/extra/x86_64/xsensors/)

- **[smartmontools](https://archlinux.org/packages/extra/x86_64/smartmontools/)**

### Terminal emulator

- **[Kitty](https://archlinux.org/packages/extra/x86_64/kitty/)**

  - [noto-fonts](https://archlinux.org/packages/extra/any/noto-fonts/)

  To apply fonts:

  ```bash
  fc-cache
  ```

  To apply settings and load a colorscheme:

  ```bash
  recolorize [ colorscheme ]
  ```

### Text edition

- **[Libre Office](https://archlinux.org/packages/extra/x86_64/libreoffice-still/)**

  - [Vista fonts](https://aur.archlinux.org/packages/ttf-vista-fonts)

  - [MS fonts](https://aur.archlinux.org/packages/ttf-ms-fonts)


- **[Neovim](https://archlinux.org/packages/extra/x86_64/neovim/)**

  - [Clipboard provider](https://archlinux.org/packages/extra/x86_64/xclip/)

  - [nodejs](https://archlinux.org/packages/extra/x86_64/nodejs/)

  - [ripgrep](https://archlinux.org/packages/extra/x86_64/ripgrep/)

  - [fd](https://archlinux.org/packages/extra/x86_64/fd/)

  - [tree-sitter-cli](https://archlinux.org/packages/extra/x86_64/tree-sitter-cli/)

  - [luarocks](https://archlinux.org/packages/extra/any/luarocks/)

  Copilot runs on `nodejs`, Telescope searches with `ripgrep` and `fd`,
  `tree-sitter-cli` builds the parsers and `luarocks` installs rockspecs.

  Language servers:

  - [bash-language-server](https://archlinux.org/packages/extra/any/bash-language-server/)

  - [jdtls](https://aur.archlinux.org/packages/jdtls)

  - [lua-language-server](https://archlinux.org/packages/extra/x86_64/lua-language-server/)

  - [pyright](https://archlinux.org/packages/extra/any/pyright/)

  - [ruff](https://archlinux.org/packages/extra/x86_64/ruff/)

  - [rust-analyzer](https://archlinux.org/packages/extra/x86_64/rust-analyzer/)

  - [taplo](https://archlinux.org/packages/extra/x86_64/taplo-cli/)

  Formatters and linters:

  - [codespell](https://archlinux.org/packages/extra/any/codespell/)

  - [google-java-format](https://aur.archlinux.org/packages/google-java-format)

  - [jq](https://archlinux.org/packages/extra/x86_64/jq/)

  - [markdownlint-cli](https://archlinux.org/packages/extra/any/markdownlint-cli/)

  - [prettier](https://archlinux.org/packages/extra/any/prettier/)

  - [shellcheck](https://aur.archlinux.org/packages/shellcheck-bin)

  - [shfmt](https://archlinux.org/packages/extra/x86_64/shfmt/)

  - [stylua](https://archlinux.org/packages/extra/x86_64/stylua/)

  - [typos](https://archlinux.org/packages/extra/x86_64/typos/)

  To build the latest nvim from source instead
  (it needs `cmake`, `ninja` and `clang`), use the install script:

  ```bash
  "$XDG_DATA_HOME"/nvim/install_nvim.sh
  ```

  It downloads the source code to `~/.local/share/nvim/source/`
  and installs the binary in `~/.local/nvim/`, which is already in the `PATH`.
  To uninstall, delete `~/.local/nvim/` (and, optionally, `~/.local/share/nvim/source/`).

  Or use the nightly build from the AUR, `neovim-nightly-bin`.

### Utilities

- **[archlinux-contrib](https://archlinux.org/packages/extra/any/archlinux-contrib/)**

- **[bc](https://archlinux.org/packages/extra/x86_64/bc/)**

- **[delta](https://archlinux.org/packages/extra/x86_64/git-delta/)**, git's pager

- **[maim](https://archlinux.org/packages/extra/x86_64/maim/)**

- **[man-db](https://archlinux.org/packages/core/x86_64/man-db/)**

  - [man-pages](https://archlinux.org/packages/core/any/man-pages/)

- **[simplescreenrecorder](https://aur.archlinux.org/packages/simplescreenrecorder)**

- **[tokei](https://archlinux.org/packages/extra/x86_64/tokei/)**

- **[tree](https://archlinux.org/packages/extra/x86_64/tree/)**

- **[unclutter](https://archlinux.org/packages/extra/x86_64/unclutter/)**
