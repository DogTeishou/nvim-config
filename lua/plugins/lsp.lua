local status, mason = pcall(require, 'mason')
if not status then
  return
end

mason.setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    }
  }
})

local status, mason_lspcfg = pcall(require, 'mason-lspconfig')
if not status then
  return
end

mason_lspcfg.setup({
  ensure_intalled = {
    'lua_ls',
  },
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

local status, lspcfg = pcall(require, 'lspconfig')
if not status then
  return
end

lspcfg.lua_ls.setup({
  capabilities = capabilities,
})
