require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 28,
    preserve_window_proportions = true,
  },
  renderer = {
    group_empty = true,
    root_folder_label = false,
  },
  filters = {
    dotfiles = true,
  },
})
