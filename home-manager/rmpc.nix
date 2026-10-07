{ config, pkgs, ... }:

{
    programs.rmpc.enable = true;
    programs.rmpc.package = pkgs.rmpc;
    # programs.rmpc.config = '' '';
}