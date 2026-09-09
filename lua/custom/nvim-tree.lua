-- nvim-tree file explorer configuration.

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

local function github(repo)
  return 'https://github.com/' .. repo
end

vim.pack.add {
  github 'nvim-tree/nvim-tree.lua',
  github 'nvim-tree/nvim-web-devicons',
}

require('nvim-tree').setup {
  sort = {
    sorter = 'case_sensitive',
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
  },
}

vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeToggle<CR>', {
  desc = 'Toggle file tree',
})
