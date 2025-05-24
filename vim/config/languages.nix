{
  config.vim = {
    languages = {
      nix = {
        enable = true;
        extraDiagnostics.enable = true;
        treesitter.enable = true;
        format = {
          enable = true;
          type = "nixfmt";
        };
        lsp = {
          enable = true;
          server = "nixd";
        };
      };
    };
  };
}
