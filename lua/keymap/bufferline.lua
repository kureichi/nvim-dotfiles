-- tab di normal mode buat pindah ke next buffer
vim.keymap.set('n', 'L', '<Cmd>BufferLineCycleNext<CR>', { desc = 'Next buffer' })

-- shift + tab di normal mode buat pindah ke previous buffer
vim.keymap.set('n', 'H', '<Cmd>BufferLineCyclePrev<CR>', { desc = 'Previous buffer' })
