-- Overrides the default LazyVim/NeoVim terminal with toggleterm
-- Toggle it as you would with the default: Ctrl + /
-- Splitting: with a terminal open > press Esc 2x to enter Normal mode > 2 + Ctrl + /
-- Open specific terminal buffer: with terminals closed > 1 + Ctrl + / to open terminal "1", and so on
return {
  {
    "akinsho/toggleterm.nvim",
    opts = {},
  },
}
