return {
	{
		'akinsho/bufferline.nvim',
		version = "*",
		dependencies = 'nvim-tree/nvim-web-devicons',
		opts = {
          options = {
            offsets = {
              {
                filetype = "neo-tree",
                text = "File Explorer",
                text_align = "left",
                separator = true, -- use a vertical separator line
              },
            },
          },
        }
	},
	{
		'nvim-mini/mini.bufremove'
	}
}
