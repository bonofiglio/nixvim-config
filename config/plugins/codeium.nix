{
  plugins.codeium-vim = {
    enable = true;
    settings.no_map_tab = true;
  };

  keymaps = [
    {
      mode = "i";
      key = "<c-.>";
      action.__raw = "function() return vim.fn['codeium#Accept']() end";
      options = {
        desc = "Accept codeium suggestion";
        expr = true;
        silent = true;
      };
    }
    {
      mode = "i";
      key = "<c-,>";
      action.__raw = "function() return vim.fn['codeium#CycleCompletions'](-1) end";
      options = {
        desc = "Next codeium suggestion";
        expr = true;
        silent = true;
      };
    }
    {
      mode = "i";
      key = "<c-m>";
      action.__raw = "function () return vim.fn['codeium#CycleCompletions'](1) end";
      options = {
        desc = "Previous codeium suggestion";
        expr = true;
        silent = true;
      };
    }
    {
      mode = "i";
      key = "<c-n>";
      action.__raw = "function() return vim.fn['codeium#Clear']() end";
      options = {
        desc = "Clear codeium suggestion";
        expr = true;
        silent = true;
      };
    }
  ];
}
