{ ... }: {

  imports =
    [ ./lsp.nix ./languages.nix ./complete.nix ./presence.nix ./options.nix ];

  config.vim = {
    viAlias = true;
    vimAlias = true;
    enableLuaLoader = true;
    syntaxHighlighting = true;
    lineNumberMode = "relNumber";
  };
}
