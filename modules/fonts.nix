{ config, pkgs, inputs, ... }:

{  
fonts.packages = with pkgs; [
    font-awesome
    maple-mono.NL-TTF #for diinki's rice :_)
    nerd-fonts.symbols-only
    nerd-fonts.fira-code
  ];
}