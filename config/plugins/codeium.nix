{
  plugins.codeium-vim = {
    enable = true;
    settings.no_map_tab = true;
  };

  keymaps = [
    {
      mode = "i";
      key = "<c-.>";
      action = "function() return vim.fn['codeium#Accept']() end";
      lua = true;
      options = {
        desc = "Accept codeium suggestion";
        expr = true;
        silent = true;
      };
    }
    {
      mode = "i";
      key = "<c-,>";
      action = "function() return vim.fn['codeium#CycleCompletions'](-1) end";
      lua = true;
      options = {
        desc = "Next codeium suggestion";
        expr = true;
        silent = true;
      };
    }
    {
      mode = "i";
      key = "<c-m>";
      action = "function () return vim.fn['codeium#CycleCompletions'](1) end";
      lua = true;
      options = {
        desc = "Previous codeium suggestion";
        expr = true;
        silent = true;
      };
    }
    {
      mode = "i";
      key = "<c-n>";
      action = "function() return vim.fn['codeium#Clear']() end";
      lua = true;
      options = {
        desc = "Clear codeium suggestion";
        expr = true;
        silent = true;
      };
    }
  ];
}
