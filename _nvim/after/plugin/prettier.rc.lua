local status, prettier = pcall(require, "prettier")
if (not status) then return end


vim.cmd [[
  autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md Prettier
]]

prettier.setup {
  bin = 'prettier',
  filetypes = {
    "css",
    "graphql",
    "html",
    "javascript",
    "javascriptreact",
    "json",
    "less",
    "markdown",
    "scss",
    "typescript",
    "typescriptreact",
    "yaml"
  },
  config_precedence = 'prefer-file'
}
