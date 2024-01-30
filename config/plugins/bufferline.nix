{
  plugins.bufferline = {
    enable = true;
    showBufferCloseIcons = true;
    separatorStyle = "thick";
    diagnostics = "nvim_lsp";
    diagnosticsIndicator = ''function(count)
      return "(" .. count .. ")"
    end'';
    indicator = {
      icon = "▎";
      style = "icon";
    };

    highlights = {
      bufferVisible = {
        italic = false;
        bold = false;
      };
      bufferSelected = {
        italic = false;
        bold = false;
      };
      numbersSelected = {
        italic = false;
        bold = false;
      };
      diagnosticSelected = {
        italic = false;
        bold = false;
      };
      hintVisible = {
        italic = false;
        bold = false;
      };
      hintSelected = {
        italic = false;
        bold = false;
      };
      hintDiagnosticSelected = {
        italic = false;
        bold = false;
      };
      infoVisible = {
        italic = false;
        bold = false;
      };
      infoSelected = {
        italic = false;
        bold = false;
      };
      infoDiagnosticSelected = {
        italic = false;
        bold = false;
      };
      warningVisible = {
        italic = false;
        bold = false;
      };
      warningSelected = {
        italic = false;
        bold = false;
      };
      warningDiagnosticSelected = {
        italic = false;
        bold = false;
      };
      errorVisible = {
        italic = false;
        bold = false;
      };
      errorSelected = {
        italic = false;
        bold = false;
      };
      errorDiagnosticSelected = {
        italic = false;
        bold = false;
      };
      duplicateSelected = {
        italic = false;
        bold = false;
      };
      duplicateVisible = {
        italic = false;
        bold = false;
      };
      duplicate = {
        italic = false;
        bold = false;
      };
      pickSelected = {
        italic = false;
        bold = false;
      };
      pickVisible = {
        italic = false;
        bold = false;
      };
      pick = {
        italic = false;
        bold = false;
      };
    };
  };
}
