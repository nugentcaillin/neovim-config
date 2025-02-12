-- setup colorscheme

require("tokyonight").setup({
  -- use the night style
  style = "storm",
  -- disable italic for functions
  styles = {
    functions = {}
  },
  -- Change the "hint" color to the "orange" color, and make the "error" color bright red
  on_colors = function(colors)
    colors.bg = "#000000"
    colors.bg_sidebar = "#000000"
  end
})

vim.cmd("colorscheme tokyonight")

