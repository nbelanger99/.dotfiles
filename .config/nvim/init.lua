
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

vim.filetype.add({
  extension = {
    sm = "cpp"
  }
})


-- Language Support
require'lspconfig'.clangd.setup{
  cmd = {"/opt/dclangd"},
  filetypes = {"c", "cpp", "objc", "objcpp", "sm"}
}

vim.opt.signcolumn = 'yes' -- auto/yes/no
vim.diagnostic.config({ virtual_text = true })

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

-- Color theme
require("catppuccin").setup({
    flavour = os.getenv("CATPPUCCIN_FLAVOR"),
    transparent_background=true
})

-- vim.cmd.colorscheme "catppuccin-mocha"
vim.cmd.colorscheme "catppuccin"
