 { config, pkgs, inputs, ... }:

{    
# [----- getting v4l2loopback to enable Virtual Camera in OBS :3-----]
  boot.extraModulePackages = with config.boot.kernelPackages; [
  v4l2loopback
  ];
  boot.kernelModules = [ "v4l2loopback" ];
  boot.extraModprobeConfig = ''
  options v4l2loopback devices=1 video_nr=1 card_label="OBS Virtual Camera" exclusive_caps=1
  '';
}