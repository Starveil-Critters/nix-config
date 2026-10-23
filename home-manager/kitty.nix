{ config, pkgs, ... }:

{
  # Terminal Shell
  programs.kitty.enable = true;
  programs.kitty.extraConfig = "
# Font, my favorite font is maple mono :)
font_family Maple Mono NL

# Make the cursor shape a beam
# shell_integration no-cursor
# cursor_shape beam

# Padding
window_padding_width 7
window_padding_height 10

# Scroll back up to 3000 lines.
scrollback_lines 3000

#Default font size.
font_size 14

# Background opacity, set to 0.7.
# Blur works with hyprland, or sway-fx as a drop-in replacement for sway.
# background_opacity 0.7

# Just a keybind to change font size to your liking, it's CTRL + scroll wheel up or down.
map ctrl+shift+plus change_font_size all +1.0
map ctrl+shift+minus change_font_size all -1.0

# Background opacity, set to 0 if you want blur/transparency.
# Blur works with hyprland, or sway-fx as a drop-in replacement for sway.
background_opacity 0


# Finally, the COLORS! these use the design system I made for this rice.
cursor               #00fbff

selection_background #b8d8d5
selection_foreground #121616

background           #121616
foreground           #d4e0df

color0               #212335
color8               #293232
color1               #d32c4d
color9               #fe365e
color2               #15ff00
color10              #00ff3c
color3               #d4e300
color11              #eeff00
color4               #1a72ff
color12              #1a72ff
color5               #cb00cb
color13              #d800e7
color6               #00d7be
color14              #00fbff
color7               #d4e0df
color15              #d4e0df
  ";
}