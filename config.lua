local isNeovide = vim.fn.exists('g:neovide')

lvim.log.level = "warn"
lvim.format_on_save = true
lvim.colorscheme = "onedarker"

lvim.leader = "space"

lvim.keys.normal_mode["<C-s>"] = ":w<cr>"

lvim.keys.insert_mode["<C-d>"] = "<Esc>yyp<Insert>"
lvim.keys.insert_mode["<C-x>"] = "<Esc>dd<Insert>"

lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.notify.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.show_icons.git = 1

lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "java",
  "yaml",
  "c_sharp"
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

lvim.plugins = {
  { 'editorconfig/editorconfig-vim' },
  { 'andweeb/presence.nvim' }
}

vim.g.EditorConfig_exec_path = '/usr/bin/editorconfig'
vim.g.EditorConfig_core_mode = 'external_command'

if isNeovide then
  lvim.transparent_window = false

  vim.g.neovide_transparency = 0.95
  vim.o.guifont = "JetBrainsMono Nerd Font"
else
  lvim.transparent_window = true
end
