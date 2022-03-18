require('packer').startup(function(use)

    use { 'nvim-lua/plenary.nvim' }
    use { 'kyazdani42/nvim-web-devicons' }

    use { 'rust-lang/rust.vim' }
    use { 'neovim/nvim-lspconfig' }
    use { 'neoclide/coc.nvim', branch = 'release' }
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use { 'nvim-telescope/telescope.nvim' }
    use { 'mhartington/formatter.nvim' }
    
    use { 'ellisonleao/gruvbox.nvim' }
    use { 'xiyaowong/nvim-transparent' }
    use { 'nvim-lualine/lualine.nvim' }

    use { 'goolord/alpha-nvim' }

end)

local fmtClangFormat = function()
    return {
        exe = 'clang-format',
        stdin = false,
        args = {'-i', vim.fn.expand('%:p')},
        cwd = vim.fn.expand('%:p:h')
    }
end

local fmtUncrustify = function()
    return {
        exe = 'uncrustify',
        stdin = false,
        args = {string.format('-f %s', vim.fn.expand('%')), string.format('-o %s', vim.fn.expand('%'))},
        cwd = vim.fn.expand('%:p:h')
    }
end

require('formatter').setup({
    filetype = {
        cpp = {
            fmtClangFormat
        }
    }
})

vim.api.nvim_exec([[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost *.cpp,*.hpp FormatWrite
augroup END
]], true)

vim.api.nvim_set_var('rustfmt_autosave', 1)
