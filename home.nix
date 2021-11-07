{ config, pkgs, ... }:

{
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "prrlvr";
  home.homeDirectory = "/home/prrlvr";

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  # home.stateVersion = "21.05";

  home.packages = with pkgs; [
    alacritty
    arandr
    betterlockscreen
    discord
    feh
    gnupg
    pinentry # dependency of gnupg
    pavucontrol
    slack

    man-pages
    man-db

    # Dev tools
    docker
    docker-compose
    flex
    gdb
    python3
    tig
    valgrind
    gcc
    gcc.man

    # DoomEmacs dependencies
    nixfmt
    ripgrep

    # Shell utilities
    bottom
    exa
    neofetch
    zsh
    nix-zsh-completions
  ];


  # imports =  (./programs);
  imports = [
    ./programs
  ];

}
