{
  plugins.bufferline = {
    enable = true;

    settings = {
      options = {
        show_buffer_close_icons = true;
        separator_style = "thick";
        diagnostics = "nvim_lsp";
        diagnostics_indicator = ''function(count)
            return "(" .. count .. ")"
            end'';
        indicator = {
          icon = "▎";
          style = "icon";
        };
      };

      highlights = {
        buffer_visible = {
          italic = false;
          bold = false;
        };
        buffer_selected = {
          italic = false;
          bold = false;
        };
        numbers_selected = {
          italic = false;
          bold = false;
        };
        diagnostic_selected = {
          italic = false;
          bold = false;
        };
        hint_visible = {
          italic = false;
          bold = false;
        };
        hint_selected = {
          italic = false;
          bold = false;
        };
        hint_diagnostic_selected = {
          italic = false;
          bold = false;
        };
        info_visible = {
          italic = false;
          bold = false;
        };
        info_selected = {
          italic = false;
          bold = false;
        };
        info_diagnostic_selected = {
          italic = false;
          bold = false;
        };
        warning_visible = {
          italic = false;
          bold = false;
        };
        warning_selected = {
          italic = false;
          bold = false;
        };
        warning_diagnostic_selected = {
          italic = false;
          bold = false;
        };
        error_visible = {
          italic = false;
          bold = false;
        };
        error_selected = {
          italic = false;
          bold = false;
        };
        error_diagnostic_selected = {
          italic = false;
          bold = false;
        };
        duplicate_selected = {
          italic = false;
          bold = false;
        };
        duplicate_visible = {
          italic = false;
          bold = false;
        };
        duplicate = {
          italic = false;
          bold = false;
        };
        pick_selected = {
          italic = false;
          bold = false;
        };
        pick_visible = {
          italic = false;
          bold = false;
        };
        pick = {
          italic = false;
          bold = false;
        };
      };
    };
  };
}
