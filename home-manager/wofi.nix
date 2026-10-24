{ config, pkgs, ... }:

{
  # Wofi
  programs.wofi = {  
  enable = true;
  settings = {
    show = "drun";
    term = "kitty";
    show_all = true;
    gtk_dark = false;
    location = 0;
    insensitive = false;
    allow_markup = true;
    allow_images = true;
    line_wrap = "word";
    lines = 8;
    width = 500;
    no_actions = false;
    prompt = "Search | 검색 | Поиск | Sök";
    hide_scroll = true;
  };
  style = ''
  * {
  font-family: Maple Mono NL;
  background: transparent;
  color: #d8cab8;
}

#window {
  color: #00d7be;
  border-color: #00d7be;
  border-style: solid;
  border-width: 2px;

  /*Linear gradient background instead of standard background, because it makes cleaner border-radius cuts, issa bug :p*/
  background-color: rgba(0, 0, 0, 0.8);
  border-radius: 14px;
}
#scroll {
  border-top-style: solid;
  border-width: 1px;
  border-color: #d8cab8;
}
#inner-box {
  padding-top: 12px;
}
#entry {
  border-style: none;
  border-color: #d8cab8;
  color: #d8cab8;
  padding: 6px;
  margin-bottom: 8px;
  margin-left: 12px;
  margin-right: 12;

  border-radius: 8px;
}

#entry:selected {
  background-color: rgba(0, 0, 0, 0.2);
  border-style: solid;
  border-color: #d8cab8;
  border-width: 1px;
  color: #d8cab8;
  font-weight: bold;
  outline: solid;
}

#input {
  background-color: rgba(0, 0, 0, 0.2);
  color: #d8cab8;
  border-color: #d8cab8;

  border-style: none;
  border-bottom-style: solid;
  border-width: 2px;

  font-style: normal;

  border-radius: 8;
  border-bottom-left-radius: 0px;
  border-bottom-right-radius: 0px;

  padding: 12px;
  margin: 8px;
}
#input:focus {
  background-color: rgba(0, 0, 0, 0.2);
  border-color: #00ff3c;
  font-style: italic;
  border-width: 1px;
}

#img {
  padding: 4px;
  margin-right: 6px;
}

  '';
};

}