local telescope = require("plugins.telescope")
local lualine = require("plugins.lualine")
local lsp = require("plugins.lsp")
local treesitter = require("plugins.treesitter")
local oil = require("plugins.oil")
local conform = require("plugins.conform")
local which_key = require("plugins.which-key")
local nvim_notify = require("plugins.nvim-notify")
local nvim_cmp = require("plugins.nvim-cmp")
local dashboard_nvim = require("plugins.dashboard-nvim")
local indent_blankline = require("plugins.indent-blankline")
local vimtex = require("plugins.vimtex")
local undotree = require("plugins.undotree")
local toggleterm = require("plugins.toggleterm")
local nvim_autopairs = require("plugins.nvim-autopairs")
local nvim_dap = require("plugins.nvim-dap")
local colourscheme = require("plugins.colourscheme")
local themery = require("plugins.themery")
local yuck = require("plugins.yuck")
local hover = require("plugins.hover")
local lsp_signature = require("plugins.lsp-signature")
local sneak = require("plugins.sneak")
local vim_signature = require("plugins.vim-signature")
-- local bufferline = require("plugins.bufferline")
-- local marks = require("plugins.marks")
local comment = require("plugins.comment")
local nvim_ufo = require("plugins.nvim-ufo")
local persistence = require("plugins.persistence")
local vim_be_good = require("plugins.vim-be-good")
local todo_comments = require("plugins.todo-comments")
local nvim_ts_autotag = require("plugins.nvim-ts-autotag")
local nvim_web_devicons = require("plugins.nvim-web-devicons")
local snipe = require("plugins.snipe")
local unified = require("plugins.unified-nvim")

return {
    telescope,
    lualine,
    lsp,
    treesitter,
    oil,
    conform,
    which_key,
    nvim_notify,
    nvim_cmp,
    dashboard_nvim,
    indent_blankline,
    vimtex,
    undotree,
    toggleterm,
    nvim_autopairs,
    nvim_dap,
    colourscheme,
    themery,
    yuck,
    hover,
    lsp_signature,
    sneak,
    vim_signature,
    -- bufferline,
    -- marks,
    comment,
    nvim_ufo,
    persistence,
    vim_be_good,
    todo_comments,
    nvim_ts_autotag,
    nvim_web_devicons,
    snipe,
    unified,
}
