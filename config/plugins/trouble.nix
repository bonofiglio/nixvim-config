{
  plugins.trouble = {
    enable = true;
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>to";
      action = "function() require('trouble').toggle() end";
      lua = true;
    }
    {
      mode = "n";
      key = "<leader>tt";
      action = "function() require('trouble').close() end";
      lua = true;
    }
    {
      mode = "n";
      key = "<leader>tw";
      action = "function() require('trouble').toggle('workspace_diagnostics') end";
      lua = true;
    }
    {
      mode = "n";
      key = "<leader>td";
      action = "function() require('trouble').toggle('document_diagnostics') end";
      lua = true;
    }
    {
      mode = "n";
      key = "<leader>tq";
      action = "function() require('trouble').toggle('quickfix') end";
      lua = true;
    }
    {
      mode = "n";
      key = "<leader>tl";
      action = "function() require('trouble').toggle('loclist') end";
      lua = true;
    }
    {
      mode = "n";
      key = "<C-j>";
      action = ''
        function() 
          require('trouble').next({ skip_groups = true, jump = true }) 
        end
      '';
      lua = true;
    }
    {
      mode = "n";
      key = "<C-k>";
      action = "function() require('trouble').previous({ skip_groups = true, jump = true }) end";
      lua = true;
    }
    {
      mode = "n";
      key = "gR";
      action = "function() require('trouble').toggle('lsp_references') end";
      lua = true;
    }
  ];
}
