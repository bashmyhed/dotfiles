return {
  "MeanderingProgrammer/render-markdown.nvim",
  ft = { "markdown", "Avante" },
  opts = {
    file_types = { "markdown" },
    heading = {
      sign = false,
      icons = { "󰲡 ", "󰲣 ", "󰲥 ", "󰲧 ", "󰲩 ", "󰲫 " },
      on = true,
      backgrounds = {},
    },
    dash = {
      on = true,
      icon = "─",
      length = 2,
    },
    checkbox = {
      on = true,
      custom = {
        todo = { raw = "󰄱" },
        done = { raw = "󰄲" },
      },
    },
    bullet = {
      left = "•",
    },
    code = {
      on = true,
      left_pad = 3,
      end_of_line = true,
    },
  },
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },
}
