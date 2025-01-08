#apply the new scheme
xrdb ~/.cache/wal/colors.Xresources && xrdb -merge ~/.cache/wal/colors.Xresources
hyprctl reload
cp ~/.cache/wal/colors-waybar.css ~/.config/waybar && pkill -USR2 waybar
spicetify refresh # only needed if you have already enabled devtools. spicetify required.
cp ~/.cache/wal/config ~/.config/cava && pkill -USR2 cava
cp ~/.cache/wal/starship.toml ~/.config/starship/
cp ~/.cache/wal/colors-swaync.css ~/.config/swaync/ && swaync-client -R && swaync-client -rs
