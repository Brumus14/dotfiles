local map = vim.keymap.set

-- Window movement
map("n", "<c-h>", "<c-w>h")
map("n", "<c-j>", "<c-w>j")
map("n", "<c-k>", "<c-w>k")
map("n", "<c-l>", "<c-w>l")

-- Escape clear highlights
map("n", "<esc>", "<cmd>noh<cr>")

-- Terminal
map("t", "<esc>", "<c-\\><c-n>")
map("t", "<c-h>", "<cmd>wincmd h<cr>")
map("t", "<c-j>", "<cmd>wincmd j<cr>")
map("t", "<c-k>", "<cmd>wincmd k<cr>")
map("t", "<c-l>", "<cmd>wincmd l<cr>")
map({ "n", "t" }, "<c-/>", "<cmd>ToggleTerm direction=float<cr>")

-- Telescope
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>")
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
map("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")

-- File Explorer
map("n", "<leader><space>", "<cmd>Oil<cr>")

-- LSP
map("n", "gd", vim.lsp.buf.definition)
map("n", "gr", vim.lsp.buf.references)
map("n", "gI", vim.lsp.buf.implementation)
map("n", "gy", vim.lsp.buf.type_definition)
map("n", "gD", vim.lsp.buf.declaration)
map("n", "<leader>ca", vim.lsp.buf.code_action)
map("n", "<leader>cr", vim.lsp.buf.rename)

-- Flash
map({ "n", "o", "x" }, "s", function()
    require("flash").jump()
end)

map({ "o" }, "r", function()
    require("flash").remote()
end)

map("n", "<leader>cm", "<cmd>Mason<cr>")
map("n", "<leader>l", "<cmd>Lazy<cr>")

-- Formatting
map("n", "<leader>cf", function()
    require("conform").format()
end)

-- Diagnostics
local diagnostic_goto = function(next, severity)
    return function()
        vim.diagnostic.jump({
            count = (next and 1 or -1) * vim.v.count1,
            severity = severity and vim.diagnostic.severity[severity] or nil,
            float = true,
        })
    end
end

map("n", "<leader>cd", vim.diagnostic.open_float, { desc = "Line Diagnostics" })
map("n", "]d", diagnostic_goto(true), { desc = "Next Diagnostic" })
map("n", "[d", diagnostic_goto(false), { desc = "Prev Diagnostic" })
map("n", "]e", diagnostic_goto(true, "ERROR"), { desc = "Next Error" })
map("n", "[e", diagnostic_goto(false, "ERROR"), { desc = "Prev Error" })
map("n", "]w", diagnostic_goto(true, "WARN"), { desc = "Next Warning" })
map("n", "[w", diagnostic_goto(false, "WARN"), { desc = "Prev Warning" })

-- Splitting
map("n", "<leader>-", "<c-w>s")
map("n", "<leader>|", "<c-w>v")

-- Undo Tree
map("n", "<leader>su", "<cmd>UndotreeToggle<cr>")

-- Trouble
map("n", "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>")
map("n", "<leader>xX", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>")
map("n", "<leader>cs", "<cmd>Trouble symbols toggle<cr>")
