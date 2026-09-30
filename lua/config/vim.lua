-- biar clipboard nyampur sama os clipboard
vim.opt.clipboard = "unnamedplus"

-- set no wrap
vim.opt.wrap = false

-- ini buat navigasi window (CTRL + h/j/k/l)
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-l>', '<C-w>l')

-- ini buat perbesar perkecil salah satu window
vim.keymap.set('n', '<C-Up>', ':resize +2<CR>', { silent = true })
vim.keymap.set('n', '<C-Down>', ':resize -2<CR>', { silent = true })
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', { silent = true })
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', { silent = true })

-- ini buat navigasi window kalau lagi di terminal mode
vim.keymap.set('t', '<C-k>', [[<C-\><C-n><C-w>k]])
vim.keymap.set('t', '<C-j>', [[<C-\><C-n><C-w>j]])
vim.keymap.set('t', '<C-h>', [[<C-\><C-n><C-w>h]])
vim.keymap.set('t', '<C-l>', [[<C-\><C-n><C-w>l]])

-- ini biar langsung select lagi setelah abis indent (> / <)
vim.keymap.set("v", ">", ">gv")
vim.keymap.set("v", "<", "<gv")

-- ubah tema ke onedark karena saya suka
vim.cmd("colorscheme monokai-pro-octagon")

-- ini buat munculin line number sama relative number
vim.opt.number = true
vim.opt.relativenumber = true

-- ini buat atur tabs indent
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- disable mouse
vim.opt.mouse = ""

-- ini biar baris cursor di highlight
vim.opt.cursorline = true
