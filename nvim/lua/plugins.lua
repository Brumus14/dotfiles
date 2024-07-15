local telescope = require("plugins.telescope")
local lualine = require("plugins.lualine")
local lsp = require("plugins.lsp")
local treesitter = require("plugins.treesitter")
local oil = require("plugins.oil")
local conform = require("plugins.conform")
local which_key = require("plugins.which-key")
local notifier = require("plugins.notifier")
local nvim_cmp = require("plugins.nvim-cmp")
local dashboard_nvim = require("plugins.dashboard-nvim")
local indent_blankline = require("plugins.indent-blankline")
local vimtex = require("plugins.vimtex")
local undotree = require("plugins.undotree")
local auto_session = require("plugins.auto-session")
local toggleterm = require("plugins.toggleterm")
local nvim_autopairs = require("plugins.nvim-autopairs")
local nvim_dap = require("plugins.nvim-dap")
local colourscheme = require("plugins.colourscheme")
local themery = require("plugins.themery")
local yuck = require("plugins.yuck")
-- local rustaceanvim = require("plugins.rustaceanvim")

return {
    telescope,
    lualine,
    lsp,
    treesitter,
    oil,
    conform,
    which_key,
    notifier,
    nvim_cmp,
    dashboard_nvim,
    indent_blankline,
    vimtex,
    undotree,
    auto_session,
    toggleterm,
    nvim_autopairs,
    nvim_dap,
    colourscheme,
    themery,
    yuck,
    -- rustaceanvim,
}
