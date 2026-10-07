{ config, pkgs, inputs, ... }:

{
  # [----- Define a user account. -----] Don't forget to set a password with ‘passwd’.
  users.users.alice = {
    isNormalUser = true;
    description = "Alice";
    extraGroups = [ "networkmanager" "wheel"  "audio"];
    packages = with pkgs; [
    #  kdePackages.kate
    #  thunderbird
    ];
  };
}