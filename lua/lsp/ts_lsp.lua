vim.lsp.config["tslsp"] = {
    cmd = { "typescript-language-server", "--stdio" },
    filetypes = {
        "typescript",
        "typescriptreact",
        "typescript.tsx",
        "javascript",
        "javascriptreact",
    },
    root_markers = {
        "package.json",
        "tsconfig.json",
        ".git",
    },
}