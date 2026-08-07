-- Força o Neovim a usar manipuladores sem dependência do provedor quebrado
vim.opt.clipboard = "unnamedplus"
vim.g.clipboard = {
  name = "win32yank",
  copy = {
    ["+"] = "win32yank.exe -i --crlf",
    ["*"] = "win32yank.exe -i --crlf",
  },
  paste = {
    ["+"] = "win32yank.exe -o --lf",
    ["*"] = "win32yank.exe -o --lf",
  },
  cache_enabled = 0,
}
if vim.g.neovide then
  vim.o.guifont = "JetBrainsMono Nerd Font:h14"
end
