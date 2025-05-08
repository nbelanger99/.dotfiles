
-- General Vim Options
vim.opt.number = true
vim.opt.background = light
vim.opt.clipboard = unnamedplus
vim.opt.expandtab = true
-- vim.opt.audoindent = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
-- vim.opt.colorcolumn = '80'
vim.opt.cursorline = true
vim.opt.ignorecase = true
vim.opt.mouse = a
vim.autoread = true
vim.opt.splitright = true
vim.opt.splitbelow = true

vim.filetype.add({
  extension = {
    sm = "cpp"
  }
})


-- Language Support
require'lspconfig'.clangd.setup{
  cmd = {"/opt/dclangd"},
  filetypes = {"c", "cpp", "objc", "objcpp", "sm"},
}

require'lspconfig'.pyright.setup{}

vim.opt.signcolumn = 'yes' -- auto/yes/no

require'lsp_lines'.setup{}

vim.diagnostic.config({
  virtual_text=false,
  virtual_lines = { only_current_line = true }
})

require'nvim-treesitter.configs'.setup{
  highlight = {
    enable = true,
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}

vim.treesitter.language.register("cpp", "sm")

require('telescope').setup{
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    mappings = {

      i = {
        -- map actions.which_key to <C-h> (default: <C-/>)
        -- actions.which_key shows the mappings for your picker,
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
        ["<C-h>"] = "which_key"

      }
    }
  },
  pickers = {
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,

    --   ...
    -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
  },
  extensions = {
    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    -- please take a look at the readme of the extension you want to configure
  }
}

-- Color theme
require("catppuccin").setup({
    flavour = os.getenv("CATPPUCCIN_FLAVOR"),
    transparent_background=true
})

-- vim.cmd.colorscheme "catppuccin-mocha"
vim.cmd.colorscheme "catppuccin"
