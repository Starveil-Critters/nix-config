{ config, pkgs, ... }:

{
services.mpd = {
  enable = true;
  musicDirectory = "/mnt/all my things :3 /Information! hehe/04_Auditory/02_Music Listening";
  extraConfig = ''
  audio_output {
  type "pulse"
  name "Pipewire Playback"
}
'';
  # Optional:
  # network.listenAddress = "any"; # if you want to allow non-localhost connections
  # network.startWhenNeeded = true; # systemd feature: only start MPD service upon connection to its socket
};
}