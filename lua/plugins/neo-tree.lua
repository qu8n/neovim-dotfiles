-- Add a similar sidebar for viewing folder structure like that of VS Code
return {
  "neo-tree.nvim",
  opts = {
    -- Show sidebar on the right
    -- window = { position = "right" },

    filesystem = {
      filtered_items = {
        visible = true,
        hide_dotfiles = false,
        hide_gitignored = true,
        hide_by_name = {
          ".github",
          ".gitignore",
          "package-lock.json",
        },
        never_show = { ".git" },
      },
    },
  },
}
