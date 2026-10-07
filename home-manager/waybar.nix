{ config, pkgs, ... }:

{
  # Waybar
  programs.waybar.enable = true;
  programs.waybar.package = pkgs.waybar;
    programs.waybar.settings = {
    mainBar = {
    layer = "bottom";
    spacing = 0;
    height = 0;
    margin-bottom = 0;
    margin-top = 0;
    margin-right = 0;
    margin-left = 0;
    position = "top";
    modules-left = [
    "hyprland/workspaces"
    "sway/workspaces"
    "custom/musicplayer"
  ];
    modules-center = [
    "custom/applauncher"
  ];
    modules-right = [
    "network"
    "battery"
    "pulseaudio"
    "tray"
    "bluetooth"
    "clock"
  ];
    "hyprland/workspaces" = {
    disable-scroll = true;
    all-outputs = false;
    tooltip = false;
  };
    "sway/workspaces" = {
      disable-scroll = true;
      all-outputs = false;
      tooltip = false;
    };
    "custom/applauncher" = {
      format = "Application Launcher!";
      on-click = "pgrep wofi >/dev/null 2>&1 && killall wofi || wofi --show drun --location=top -y 10";
      tooltip = false;
    };
    "custom/musicplayer" = {
      format = "Music!";
      on-click = "kitty rmpc";
      tooltip = false;
    };
    "tray" = { 
      spacing = 10;
      tooltip = false;
    };
    "clock" = {
      format = "󰅐 {:%H:%M}";
      tooltip = false;
    };
    "network" = {
      format-wifi = " {bandwidthDownBits}";
      format-ethernet = " {bandwidthDownBits}";
      format-disconnected = "󰤮 No Network";
      interval = 5;
      tooltip = false;
    };
    "pulseaudio" = {
      scroll-step = 5;
      max-volume = 150;
      format = "{icon} {volume}%";
      format-bluetooth = "{icon} {volume}%";
      format-icons = [
      ""
      ""
      ""
    ];
    nospacing = 1;
    format-muted = " ";
    on-click = "pavucontrol";
    tooltip = false;
    };
    "bluetooth" = {
      on-click = "blueman-manager";
    };
    "battery" = {
      states = {
        warning = 30;
        critical = 15;
      };
      format = "{icon} {capacity}%";
      format-charging = "󰂄 {capacity}%";
      format-plugged = "󰂄{capacity}%";
      format-alt = "{icon} {time}";
      format-full = "󱈑 {capacity}%";
      format-icons = [
        "󱊡"
        "󱊢"
        "󱊣"
      ];
    };
  };
};


     programs.waybar.style = ''
       * {
  /* General taskbar font, I like maple mono ^-^*/
  font-family: Maple Mono NL;
  border-radius: 0;
  font-size: 13px;
  padding: 0px;
  background: #000000;
}

window#waybar {
  /* Linear gradients are used because it makes less harsh rounded border radius, gtk bug :p */
  background-color: rgba(20, 18, 22, 0.7);

  border-radius: 14px;
  padding: 0px;
  border-style: none;
}

#battery,
#network,
#bluetooth,
#clock,
#custom-applauncher,
#custom-musicplayer,
#tray,
#workspaces,
#pulseaudio {
  background-color: rgba(20, 18, 22, 0.2);

  margin: 6px;
  margin-right: 0px;
  padding: 2px 8px;
  border-radius: 0px;
  color: #ac82e9;

  border-style: solid;
  border-color: #d8cab8;
  border-width: 1px;

  transition-duration: 120ms;
}

/*  */
#bluetooth {
background-color: rgba(20, 18, 22, 0.2);

margin: 6px;
margin-right: 0px;
padding: 2px 8px;
border-radius: 0px;
color: #ac82e9;

border-style: solid;
border-color: #d8cab8;
border-width: 1px;

transition-duration: 120ms;
}

#bluetooth:hover {
background-color: rgba(20, 18, 22, 0.7);
color: #d8cab8;
transition-duration: 120ms;
}

#clock {
  margin-right: 6px;
}

#clock:hover {
  background-color: rgba(20, 18, 22, 0.7);
  color: #d8cab8;
}

#pulseaudio:hover {
  background-color: rgba(20, 18, 22, 0.7);
  color: #d8cab8;
  transition-duration: 120ms;
}

#custom-applauncher {
  font-weight: bold;
  transition-duration: 120ms;
  padding: 0px 25px 0px 25px;
}
#custom-applauncher:hover {
  background-color: rgba(20, 18, 22, 0.7);
  color: #d8cab8;
  transition-duration: 120ms;
}

#custom-musicplayer {
font-weight: bold;
transition-duration: 120ms;
padding: 0px 25px 0px 25px;
}
#custom-musicplayer:hover {
background-color: rgba(20, 18, 22, 0.7);
color: #d8cab8;
transition-duration: 120ms;
}

#tray menu {
  background-color: #141216;
  color: #d8cab8;
  padding: 4px;
}
#tray menu menuitem {
  background-image: linear-gradient(to bottom, #27232b 100%);

  margin: 3px;
  color: #d8cab8;
  border-radius: 4px;
  border-style: solid;
  border-color: #27232b;
}
#tray menu menuitem:hover {
  background-image: linear-gradient(to bottom, #27232b 100%);
  color: #ac82e9;
  font-weight: bold;
}

#workspaces button {
  transition-duration: 100ms;
  all: initial;
  min-width: 0;
  font-weight: bold;
  color: #d8cab8;
  margin-right: 0.2cm;
  margin-left: 0.2cm;
}

#workspaces button:hover {
  transition-duration: 120ms;
  color: #8f56e1;
}
#workspaces button.focused {
  color: #ac82e9;
  font-weight: bold;
}
#workspaces button.active {
  color: #ac82e9;
  font-weight: bold;
}
#workspaces button.urgent {
  color: #fcb167;
}

#battery {
  background-color: #222222;
  color: #1d2021;
}
#battery.warning,
#battery.critical,
#battery.urgent {
  color: #1d2021;
  background-color: #fc4649;
}
  '';
}