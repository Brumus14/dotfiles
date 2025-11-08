return {
    "lervag/vimtex",
    lazy = false,
    init = function()
        vim.g.vimtex_view_method = "zathura"
        vim.opt.conceallevel = 2
        vim.g.tex_conceal = "abdmg"
    end,
}
