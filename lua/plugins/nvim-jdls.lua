return {
  dependencies = {
    'mfussenegger/nvim-jdtls',
  },

  config = function()
    vim.list_extend(mason_ensure_installed, {
      'jdtls',
    })

    mason_lspconfig.setup {
      handlers = {
        ['jdtls'] = function() end,
      },
    }
  end,
}
