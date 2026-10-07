{ config, pkgs, ... }:

{
  # Packages that should be installed to the user profile.
  home.packages = with pkgs; [
    
    # Extraction/File System Stuff
    unzip
    nemo # File Browser
    nautilus # File Browser 2
    kdePackages.dolphin # This is getting stupid
    ntfs3g
    wl-clipboard # Check if needed, Copy and paste functionality

    # Media Players
    tidal-hifi # Streaming Service
    vlc
    yazi

    # Music Related
    picard
    nicotine-plus
    mpd-discord-rpc # sends MPD to discord's activity overlay
    mpc # REMEMBER TO RUN mpc update (and mpc stats)
    # rmpc # Terminal Frontend for MPD (In the terminal WITH album art? woag)
    # renoise # Tracker software
    # reaper # Digital Audio Workstation

    # Social Media
    vesktop
    telegram-desktop
    signal-desktop
    element-desktop


    # Productive Software
    obs-studio # Video Recording/Streaming Software
    # blender # 3d Modelling Software
    libreoffice # Free Microsoft Word Clone
    # godot # Game Engine, Similar to unity.
    vscodium # Text Editor
    pinta # drawing software

    # Gaming/Modding Related
    tetrio-desktop # Webclient for Tetrio, a tetris clone. (ALMOST at a sub 1 min sprint rn @,@)
    hedgemodmanager
    r2modman
    archipelago
    # wine64Packages.unstable (do i even need this?)

    # Fun/Misc!
    stellarium # Star gazing simulator :3 
    hyfetch # Fetch
    mako # Notification utility.
    cava # Terminal Audio Visualizer
    lolcat # Makes Terminal Text Colorful
    cmatrix # hell yeah
    btop # System Monitor for the terminal
    cowsay # testing here
    xwayland-satellite # Steam needs this
    
    



    # nix related
    #
    # it provides the command `nom` works just like `nix`
    # with more details log output
    nix-output-monitor

  ];
}