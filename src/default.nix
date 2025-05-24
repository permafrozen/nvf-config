# this file is the main entry point for the
# nvim configurations and imports submodules
{
  config.vim = {
    viAlias = true;
    vimAlias = true;
    enableLuaLoader = true;
    syntaxHighlighting = true;
    lineNumberMode = "relNumber";
    presence.neocord.enable = true;

    autocomplete.blink-cmp = { enable = true; };

    # global lsp functionality
    lsp = {
      enable = true;
      formatOnSave = true;
      inlayHints.enable = true;
      lightbulb = { enable = true; };
      lspconfig.enable = true;
    };

    languages = {
      enableDAP = true;

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
