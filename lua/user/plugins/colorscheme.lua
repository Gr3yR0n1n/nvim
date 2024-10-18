return {
  "navarasu/onedark.nvim",
  priority = 1000,
  config = function()
    require("onedark").setup({
      -- Main options --
      style = 'darker', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
      transparent = false,  -- Show/hide background
      term_colors = true, -- Change terminal color as per the selected theme style
      ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
      cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu  

      -- toggle theme style ---
      toggle_style_key = nil, -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
      toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'}, -- List of styles to toggle between

      -- Change code style ---
      -- Options are italic, bold, underline, none
      -- You can configure multiple style with comma separated, For e.g., keywords = 'italic,bold'
      code_style = {
        comments = 'italic',
        keywords = 'none',
        functions = 'none',
        strings = 'none',
        variables = 'none'
      },

      -- Lualine options --
      lualine = {
        transparent = false, -- lualine center bar transparency
      },

      -- Custom Highlights --
      colors = {
        black = "#0c0e15",
        bg0 = "#1a212e",
        bg1 = "#21283b",
        bg2 = "#283347",
        bg3 = "#2a324a",
        bg_d = "#141b24",
        bg_blue = "#54b0fd",
        bg_yellow = "#f2cc81",
        fg = "#93a4c3",
        purple = "#c75ae8",
        green = "#8bcd5b",
        orange = "#dd9046",
        blue = "#41a7fc",
        yellow = "#efbd5d",
        cyan = "#34bfd0",
        red = "#f65866",
        grey = "#455574",
        light_grey = "#6c7d9c",
        dark_cyan = "#1b6a73",
        dark_red = "#992525",
        dark_yellow = "#8f610d",
        dark_purple = "#862aa1",
        diff_add = "#27341c",
        diff_delete = "#331c1e",
        diff_change = "#102b40",
        diff_text = "#1c4a6e",
      }, -- Override default colors
      highlights = {}, -- Override highlight groups

      -- Plugins Config --
      diagnostics = {
        darker = true, -- darker colors for diagnostic
        undercurl = true,   -- use undercurl instead of underline for diagnostics
        background = true,    -- use background color for virtual text
      },

    })

    vim.cmd("colorscheme onedark")
  end,
}
