local Terminal = require("toggleterm.terminal").Terminal

-- 2. Create the specific LazyGit terminal instance
local lazygit = Terminal:new({
  cmd = "lazygit",
  dir = "git_dir",
  direction = "float",
  float_opts = {
    border = "double",
  },
  id = 100,
  -- -- Close the mapping when lazygit exits
  -- on_open = function(term)
  --   vim.cmd("startinsert!")
  --   -- Map <q> to close the terminal window seamlessly if you exit lazygit
  --   vim.api.nvim_buf_set_keymap(term.bufnr, "t", "q", "<cmd>close<CR>", {silent = true, noremap = true})
  -- end,
})

-- 3. Define the toggle function
function _LAZYGIT_TOGGLE()
  lazygit:toggle()
end

-- 4. Map a key to toggle the floating LazyGit window (e.g., <leader>g)
vim.api.nvim_set_keymap("n", "<leader>gg", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", {noremap = true, silent = true})
