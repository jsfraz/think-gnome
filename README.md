# think-gnome

[![wakatime](https://wakatime.com/badge/user/992c0ad1-7dae-4115-9198-1ba533452d32/project/16f97416-61dc-4067-8f40-e2c1ff43a7d8.svg)](https://wakatime.com/badge/user/992c0ad1-7dae-4115-9198-1ba533452d32/project/16f97416-61dc-4067-8f40-e2c1ff43a7d8)

Config for my Thinkpad T14 Gen 1 Fedora GNOME environment.

## Dependencies

- git
- [matugen](https://github.com/InioX/matugen)
- [FiraCode Nerd Font](https://www.nerdfonts.com)
- [alacritty](https://github.com/alacritty/alacritty)
- [starship](https://github.com/starship/starship)
- [fastfetch](https://github.com/fastfetch-cli/fastfetch)

### FiraCode Nerd Font

```bash
git clone https://github.com/ryanoasis/nerd-fonts.git
cd nerd-fonts
./install.sh FiraCode
```

### matugen

`matugen` is used to generate config files for other programs based on the current accent color.

#### Linking config

```bash
ln -sf $PWD/.config/matugen ~/.config/matugen
```

To regenerate configs after accent/color scheme change, make sure to start `~/.config/matugen/watch_style.sh` on GNOME login:

```bash
ln -s ~/.config/matugen/gnome-style-monitor.desktop ~/.config/autostart/gnome-style-monitor.desktop
```

### alacritty

#### Linking config

```bash
ln -sf $PWD/.config/alacritty ~/.config/alacritty
```

### fastfetch

To start `fastfetch` when opening terminal, add this to `~/.bashrc`:

```bash
if [ ! "$(tty)" = "/dev/tty1" ]; then
  clear
  echo
  fastfetch
fi
```

## starship

Add the following to the end of ~/.bashrc:

```bash
eval "$(starship init bash)"
```
