local lsp_dir = vim.fn.stdpath("config") .. "/lua/lsp"

for name, type in vim.fs.dir(lsp_dir) do
	if type == "file" and name:match("%.lua$") then
		local module = "lsp." .. name:gsub("%.lua$", "")
		local ok, err = pcall(require, module)
		if not ok then
			vim.notify("Erreur lors du chargement du module " .. module .. ": " .. err, vim.log.levels.ERROR)
		end
	end
end

vim.lsp.enable({
	"luals",
	"tslsp",
	"pyright",
	"intelephense",
})
