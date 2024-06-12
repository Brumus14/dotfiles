local telescope = require("plugins.telescope")
local lualine = require("plugins.lualine")
local lsp = require("plugins.lsp")
local treesitter = require("plugins.treesitter")
local oil = require("plugins.oil")
local conform = require("plugins.conform")
local which_key = require("plugins.which-key")
local noice = require("plugins.noice")
local nvim_cmp = require("plugins.nvim-cmp")
local dashboard_nvim = require("plugins.dashboard-nvim")
local indent_blankline = require("plugins.indent-blankline")
local vimtex = require("plugins.vimtex")
local undotree = require("plugins.undotree")
local auto_session = require("plugins.auto-session")
local toggleterm = require("plugins.toggleterm")
local colourscheme = require("plugins.colourscheme")

return {
	telescope,
	lualine,
	lsp,
	treesitter,
	oil,
	conform,
	which_key,
	noice,
	nvim_cmp,
	dashboard_nvim,
	indent_blankline,
	vimtex,
	undotree,
	auto_session,
	toggleterm,
	colourscheme,
}
