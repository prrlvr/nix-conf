{ config, lib, pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    enableAutosuggestions = true;

    plugins = [
      {
        name = "zsh-nix-shell";
        file = "nix-shell.plugin.zsh";
        src = pkgs.fetchFromGitHub {
          owner = "chisui";
          repo = "zsh-nix-shell";
          rev = "v0.4.0";
          sha256 = "037wz9fqmx0ngcwl9az55fgkipb745rymznxnssr3rx9irb6apzg";
        };
      }
    ];

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
