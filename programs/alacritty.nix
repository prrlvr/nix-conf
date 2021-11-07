{ config, lib, pkgs, ... }:

{
  programs.alacritty = {
    enable = true;
    settings = {
      scrolling = {
        history = 10000;
        multiplier = 3;
      };

      font = {
        normal = {
          family = "Fira Code Nerd Font";
          style = "Regular";
        };
        size = 7;
      };

      background_opacity = 1.0;
      bell.duration = 0;
      selection.save_to_clipboard = true;
      cursor.style = "Underline";
      # shell.program = "${pkgs.zsh}/bin/zsh";
      window = {
        decorations = "none";
        padding = {
          x = 8;
          y = 8;
        };
      };

      colors = {
        primary = {
          background = "#1a1a1a";
          foreground = "#c4c5b5";
        };
        normal = {
          black = "#1a1a1a";
          red = "#f4005f";
          green = "#98e024";
          yellow = "#fa8419";
          blue = "#9d65ff";
          magenta = "#f4005f";
          cyan = "#58d1eb";
          white = "#c4c5b5";
        };

        bright = {
          black = "#625e4c";
          red = "#f4005f";
          green = "#98e024";
          yellow = "#e0d561";
          blue = "#9d65ff";
          magenta = "#f4005f";
          cyan = "#58d1eb";
        };
        cursor = {
          text = "0x002635";
          cursor = "0xffcc1b";
        };
      };
    };
  };
}
