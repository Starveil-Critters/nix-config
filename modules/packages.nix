{ config, pkgs, inputs, ... }:

{ 
environment.systemPackages = with pkgs; [
  # shticker-book-unwritten # Tried to get toontown working, revisit this please!! love you <3 :3
  polkit_gnome # So Sway can use sudo? idfk dawg...
  killall # LOL
  pavucontrol # GTK Audio Control
  blueman # GTK Bluetooth Control
  brightnessctl
  # mesa-demos # hehe fun
  ];
}