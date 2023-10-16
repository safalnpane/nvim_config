local status, mlsp_config = pcall(require, 'mason-lspconfig')
if (not status) then return end

mlsp_config.setup {
  ensure_installed = { "lua_ls" },
  automatic_installation = true,
}
