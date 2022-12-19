require'nvim-tree'.setup({
  sort_by = "case_sensitive",
  disable_netrw = true,
  open_on_setup = true,
  ignore_buffer_on_setup = true,
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "-", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

require'nvim-web-devicons'.setup({
  color_icons = true,
  default = true,
})
