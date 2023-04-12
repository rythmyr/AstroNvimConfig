return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.rust" },
  {
    "rust-tools.nvim",
    opts = {
      server = {
        settings = {
          ["rust-analyzer"] = {
            check = {
              overrideCommand = {
                "cargo",
                "clippy",
                "--workspace",
                "--no-deps",
                "--message-format=json",
              },
            },
          },
        },
      },
    },
  },
  { import = "astrocommunity.note-taking.obsidian-nvim" },
  { import = "astrocommunity.project.project-nvim" },
  {
    "project.nvim",
    opts = {
      detection_methods = { "pattern", "lsp" },
      patterns = { ".projectile", ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json" },
    },
  },
  { import = "astrocommunity.terminal-integration.flatten-nvim" },
  { import = "astrocommunity.motion.nvim-surround" },
  { import = "astrocommunity.debugging.nvim-bqf" },
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  -- { import = "astrocommunity.colorscheme.catppuccin" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
}
