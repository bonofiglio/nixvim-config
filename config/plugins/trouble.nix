{
  plugins.trouble = {
    enable = true;
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>to";
      action.__raw = "function() require('trouble').toggle() end";
    }
    {
      mode = "n";
      key = "<leader>tt";
      action.__raw = "function() require('trouble').close() end";
    }
    {
      mode = "n";
      key = "<leader>tw";
      action.__raw = "function() require('trouble').toggle('workspace_diagnostics') end";
    }
    {
      mode = "n";
      key = "<leader>td";
      action.__raw = "function() require('trouble').toggle('document_diagnostics') end";
    }
    {
      mode = "n";
      key = "<leader>tq";
      action.__raw = "function() require('trouble').toggle('quickfix') end";
    }
    {
      mode = "n";
      key = "<leader>tl";
      action.__raw = "function() require('trouble').toggle('loclist') end";
    }
    {
      mode = "n";
      key = "<C-j>";
      action.__raw = ''
        function() 
          require('trouble').next({ skip_groups = true, jump = true }) 
        end
      '';
    }
    {
      mode = "n";
      key = "<C-k>";
      action.__raw = "function() require('trouble').previous({ skip_groups = true, jump = true }) end";
    }
    {
      mode = "n";
      key = "gR";
      action.__raw = "function() require('trouble').toggle('lsp_references') end";
    }
  ];
}
