# dotfiles
my arch linux dotfiles (ft. hyprland & pywal)

## how to install
> [!NOTE]
> yay (or other AUR helper) is required as we need some packages there

first, install the packages with this command
```
yay -S swaybg cava fastfetch hyprland kitty waybar swaync rofi-wayland ttf-iosevka-nerd brightnessctl pamixer \
polkit-kde-agent noto-fonts-emoji python-pywal16 python-haishoku \
starship hyprshot xdg-desktop-portal-hyprland hyprpicker \
gvfs udiskie hyprlock ranger wl-clipboard wl-clip-persist cliphist hyprsunset \
```

next, clone the repo, copy all the folders inside to `~/.config` and make the scripts inside the said folder excutable

you also need to append these lines into `.bashrc` for starship to work:

```
export STARSHIP_CONFIG=~/.config/starship/starship.toml
eval "$(starship init bash)"
fastfetch
```

once done, run `Hyprland` (case-sensitive!) and you should be good to go!
## about wallpaper
rofi is now used for setting wallpaper, if you want you can remove waypaper

remember to `chmod +x` the `wal-rofi.sh` script in the `scripts` folder to use, along with the other ones to get the full effect.

hit ctrl+tab while rofi is opened to switch modes between this and drun (app selector)

## spicetify
this scheme is designed to use with the "text" theme, which you can get from [here](https://github.com/spicetify/spicetify-themes)

paste the lines below into the `color.ini` file inside the theme folder and apply using `spicetify config color_scheme pywal`.
> [!NOTE]
> you will need xrdb for loading the generated xresources file!
> 
> plus, if you do not like having to play the music manually because the client restarts, enable devtools using `spicetify apply enable-devtools` and run the `spicetify refresh` command (a manual reload of the client is required but the stream should not be interrupted)
```
[pywal]
accent = ${xrdb:color5}
accent-active = ${xrdb:color5}
accent-inactive = ${xrdb:background}
banner = ${xrdb:background}
border-active = ${xrdb:color5}
border-inactive = ${xrdb:foreground}
banner = ${xrdb:color14}
highlight = ${xrdb:color8}
main = ${xrdb:background}
notification = {xrdb:color8}
notification-error = ${xrdb:color4}
subtext = ${xrdb:color14}
text = ${xrdb:foreground} 
header = ${xrdb:color14}
```
