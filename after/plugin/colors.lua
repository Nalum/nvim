function ColorMyPencils(color)
	color = color or "NeoSolarized"
	vim.cmd.colorscheme(color)
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	vim.api.termguicolors = true
	vim.api.background = "dark"
end

ColorMyPencils()

-- set termguicolors
-- set background=dark

-- sign define DiagnosticSignError text=🤬
-- sign define DiagnosticSignWarn text=😤
-- sign define DiagnosticSignInformation text=🧐
-- sign define DiagnosticSignHint text=🤔

