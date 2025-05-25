{
  vim.theme = {
    enable = true;

    # If the base16-colors are predefined as defaults, the stylix module breaks
    # and appends the colors, which leads to a critical error

    # base16-colors = { };
  };

  # Remove background for transparency
  vim.luaConfigPost = ''
    vim.api.nvim_set_hl(0, "Normal",      { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalNC",    { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
    vim.api.nvim_set_hl(0, "SignColumn",  { bg = "none" })
    vim.api.nvim_set_hl(0, "StatusLine",  { bg = "none" })
    vim.api.nvim_set_hl(0, "VertSplit",   { bg = "none" })
    vim.api.nvim_set_hl(0, "LineNr",      { bg = "none" })
    vim.api.nvim_set_hl(0, "NonText",     { bg = "none" })
    vim.api.nvim_set_hl(0, 'Pmenu',       { bg = 'none' })
    vim.api.nvim_set_hl(0, "StatusLine",  { bg = "none" })
    vim.api.nvim_set_hl(0, "StatusLineNC",{ bg = "none" })
  '';
}
