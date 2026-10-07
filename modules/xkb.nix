{ config, pkgs, inputs, ... }:

{
  # [----- Configure keymap in X11 -----]
  services.xserver.xkb = {
    layout = "us";
    variant = "colemak_dh_ortho";
    # options = "misc:extend,level5:caps_switch_lock";
  };
  console.useXkbConfig = true;

  # hardware.keyboard.qmk.enable = true;
}