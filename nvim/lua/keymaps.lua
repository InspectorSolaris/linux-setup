-- Keymaps

local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true }

keymap('', '<up>', '<nop>', opts)
keymap('', '<down>', '<nop>', opts)
keymap('', '<left>', '<nop>', opts)
keymap('', '<right>', '<nop>', opts)

keymap('n', '<F1>', ':Alpha<cr>', opts)

cmdFindFiles = '<cmd>Telescope find_files<cr>'
cmdFindGitFiles = '<cmd>Telescope git_files<cr>'

keymap('n', '<leader>fg', cmdFindGitFiles, opts)
keymap('n', '<leader>ff', cmdFindFiles, opts)

keymap('n', '<C-j>', cmdFindGitFiles, opts)
keymap('n', '<C-k>', cmdFindFiles, opts)

keymap('n', '<S-k>', '<cmd>:tabnew<cr>', opts)
keymap('n', '<S-j>', '<cmd>:tabclose<cr>', opts)
keymap('n', '<S-l>', '<cmd>:tabnext<cr>', opts)
keymap('n', '<S-h>', '<cmd>:tabprev<cr>', opts)

keymap('n', '<M-h>', '<C-w>h', opts)
keymap('n', '<M-j>', '<C-w>j', opts)
keymap('n', '<M-k>', '<C-w>k', opts)
keymap('n', '<M-l>', '<C-w>l', opts)

keymap('n', '<M-n>', '<C-w><S-h>', opts)
keymap('n', '<M-m>', '<C-w><S-j>', opts)
keymap('n', '<M-,>', '<C-w><S-k>', opts)
keymap('n', '<M-.>', '<C-w><S-l>', opts)

local tactions = require('telescope.actions')
local tconfig = require('telescope.config') 

require('telescope').setup({
    defaults = {
        mappings = {
            i = {
                ['<C-n>'] = false,
                ['<C-p>'] = false,
                ['<C-j>'] = tactions.move_selection_next,
                ['<C-k>'] = tactions.move_selection_previous
            }
        }
    }
})
