return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  config = function ()
        vim.api.nvim_create_autocmd('FileType', {
          callback = function(ev)
            local lang = vim.treesitter.language.get_lang(ev.match) or ev.match
            local ts = require('nvim-treesitter')

            if vim.tbl_contains(ts.get_available(), lang) then
              if not vim.tbl_contains(ts.get_installed(), lang) then
                ts.install(lang):wait()
              end

              pcall(vim.treesitter.start, ev.buf, lang)

              vim.bo[ev.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
            end
          end,
        })
  end
}
