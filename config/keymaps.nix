{
  globals.mapleader = " ";
  keymaps = [
    {
      mode = "v";
      key = "J";
      action = ":m '>+1<CR>gv=gv";
      options = {
        desc = "Move selected lines down";
      };
    }
    {
      mode = "v";
      key = "K";
      action = ":m '<-2<CR>gv=gv";
      options = {
        desc = "Move selected lines up";
      };
    }
    {
      mode = "n";
      key = "J";
      action = "mzJ`z";
      options = {
        desc = "Append line below into current line";
      };
    }
    {
      mode = "n";
      key = "n";
      action = "nzzzv";
      options = {
        desc = "Next search result and center the screen";
      };
    }
    {
      mode = "n";
      key = "N";
      action = "Nzzzv";
      options = {
        desc = "Previous search result and center the screen";
      };
    }
    {
      mode = "n";
      key = "<C-d>";
      action = "<C-d>zz";
      options = {
        desc = "Scroll down and center the screen";
      };
    }
    {
      mode = "n";
      key = "<C-u>";
      action = "<C-u>zz";
      options = {
        desc = "Scroll up and center the screen";
      };
    }
    {
      mode = "x";
      key = "<leader>p";
      action = "\"_dP";
      options = {
        desc = "Paste without overwriting register";
      };
    }
    {
      mode = [ "x" "n" ];
      key = "<leader>y";
      action = "\"+y";
      options = {
        desc = "Yank to system clipboard";
      };
    }
    {
      mode = "n";
      key = "<leader>Y";
      action = "\"+Y";
      options = {
        desc = "Yank current line to system clipboard";
      };
    }
    {
      mode = [ "n" "v" ];
      key = "<leader>d";
      action = "\"_d";
      options = {
        desc = "Delete without overwriting register";
      };
    }
    # Don't @ me
    {
      mode = "i";
      key = "<C-c>";
      action = "<Esc>";
      options = {
        desc = "Escape insert mode";
      };
    }
    {
      mode = "n";
      key = "Q";
      action = "<nop>";
    }
    {
      mode = "n";
      key = "<leader>re";
      action = ":%s/\<<C-r><C-w>\>/<C-r> <C-w> /gI <Left> <Left> <Left>";
      options = {
        desc = "Replace all instances of word under cursor in file";
      };
    }
    {
      mode = "n";
      key = "<leader>e";
      action = "vim.diagnostic.open_float";
      lua = true;
      options = {
        desc = "Show diagnostics under cursor";
      };
    }
    {
      mode = "n";
      key = "<leader>n";
      action = "vim.diagnostic.goto_next";
      lua = true;
      options = {
        desc = "Next diagnostic";
      };
    }
    {
      mode = "n";
      key = "<leader>N";
      action = "vim.diagnostic.goto_prev";
      lua = true;
      options = {
        desc = "Previous diagnostic";
      };
    }
    {
      mode = "n";
      key = "<leader>f";
      action = "<cmd> bp <CR>";
      options = {
        desc = "Go to previous buffer";
      };
    }
    {
      mode = "n";
      key = "<leader>j";
      action = "<cmd> bn <CR>";
      options = {
        desc = "Go to next buffer";
      };
    }
    {
      mode = "n";
      key = "<leader>x";
      action = "<cmd> bd <CR>";
      options = {
        desc = "Close current buffer";
      };
    }
    {
      mode = "n";
      key = "<leader>w";
      action = ''function()
          vim.lsp.buf.format()
          vim.cmd("write")
        end'';
      lua = true;
      options = {
        desc = "Format and save file";
      };
    }
    {
      mode = "n";
      key = "<leader>pg";
      action = ''function() builtin.grep_string({ search = vim.fn.input("Grep > ") }) end'';
      lua = true;
      options = {
        desc = "Search for string with Grep";
      };
    }
    # Not my finest work, but it allows <c-m> to be mapped to a different action than <cr>
    {
      mode = "i";
      key = "<cr>";
      action = "<cr>";
    }

    # LSP Mappings
    {
      mode = "n";
      key = "gd";
      action = "function() vim.lsp.buf.definition() end";
      lua = true;
      options = {
        desc = "Go to definition";
      };
    }
    {
      mode = "n";
      key = "K";
      action = "function() vim.lsp.buf.hover() end";
      lua = true;
      options = {
        desc = "Show information about symbol under cursor";
      };
    }
    {
      mode = "n";
      key = "<leader>vws";
      action = "function() vim.lsp.buf.workspace_symbol() end";
      lua = true;
      options = {
        desc = "Search workspace for symbol";
      };
    }
    {
      mode = "n";
      key = "[d";
      action = "function() vim.diagnostic.goto_next() end";
      lua = true;
      options = {
        desc = "Next diagnostic";
      };
    }
    {
      mode = "n";
      key = "]d";
      action = "function() vim.diagnostic.goto_prev() end";
      lua = true;
      options = {
        desc = "Previous diagnostic";
      };
    }
    {
      mode = "n";
      key = "<leader>vca";
      action = "function() vim.lsp.buf.code_action() end";
      lua = true;
      options = {
        desc = "Show code actions available at cursor";
      };
    }
    {
      mode = "n";
      key = "<leader>vrr";
      action = "function() vim.lsp.buf.references() end";
      lua = true;
      options = {
        desc = "Show all references to symbol under cursor";
      };
    }
    {
      mode = "n";
      key = "<leader>rn";
      action = "function() vim.lsp.buf.rename() end";
      lua = true;
      options = {
        desc = "Rename symbol under cursor";
      };
    }
    {
      mode = "n";
      key = "<C-h>";
      action = "function() vim.lsp.buf.signature_help() end";
      lua = true;
      options = {
        desc = "Show signature help";
      };
    }
    {
      mode = "n";
      key = "<leader>va";
      action = "function() vim.lsp.buf.format() end";
      lua = true;
      options = {
        desc = "Format current file";
      };
    }
  ];
}
