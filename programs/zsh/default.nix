{ config, lib, pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    enableAutosuggestions = true;

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" "colorize" "colored-man-pages" "docker" "systemd" ];
      theme = "afowler";
    };

    shellAliases = {
      vactivate = "source venv/bin/activate";
      ls = "exa";
      la = "exa -lah";
      l = "exa -lh";
      tree = "exa --tree";

      ref = "cd ~/tiger/tc";

    };
  };
}
