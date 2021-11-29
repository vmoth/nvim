local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  -- Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  local opts = { noremap=true, silent=true }

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
  buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
  buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
  buf_set_keymap('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
  require('jdtls').setup_dap({ hotcodereplace = 'auto' })
  require('jdtls.dap').setup_dap_main_class_configs()
end

local config = {
  -- The command that starts the language server
  cmd = {
    '/Library/Java/JavaVirtualMachines/adoptopenjdk-11.jdk/Contents/Home/bin/java',
--    '-Declipse.application=org.eclipse.jdt.ls.core.id1 \
--      -Dosgi.bundles.defaultStartLevel=4 \
--      -Declipse.product=org.eclipse.jdt.ls.core.product \
--      -Dlog.level=ALL \
--      -noverify \
--      -Xmx1G \
--      -jar ./plugins/org.eclipse.equinox.launcher_1.6.300.v20210813-1054.jar \
--      -configuration ./config_mac \
--      -data /Users/dypan/jdtls/config_mac/data \
--      --add-modules=ALL-SYSTEM \
--      --add-opens java.base/java.util=ALL-UNNAMED \
--      --add-opens java.base/java.lang=ALL-UNNAMED'
    -- ADD REMAINING OPTIONS FROM https://github.com/eclipse/eclipse.jdt.ls#running-from-the-command-line !
        '-javaagent:/Users/dypan/lombok.jar',
	'-jar', '/Users/dypan/jdtls/plugins/org.eclipse.equinox.launcher_1.6.400.v20210924-0641.jar',
	'-Declipse.application=org.eclipse.jdt.ls.core.id1',
	'-Dosgi.bundles.defaultStartLevel=4',
	'-Declipse.product=org.eclipse.jdt.ls.core.product',
	'-Dlog.level=ALL',
	'-noverify',
	'-Xmx4G',
	'-configuration', '/Users/dypan/jdtls/config_mac',
	'-data', '/Users/dypan/jdtls/data',
	'--add-modules=ALL-SYSTEM',
	'--add-opens java.base/java.util=ALL-UNNAMED',
	'--add-opens java.base/java.lang=ALL-UNNAMED'
  },
  on_attach = on_attach,
  capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities()),

  -- This is the default if not provided, you can remove it. Or adjust as needed.
  -- One dedicated LSP server & client will be started per unique root_dir
  root_dir = require('jdtls.setup').find_root({'.git'})
}

--config['init_options'] = {
--    bundles = {
--      vim.fn.glob("/Users/dypan/.config/nvim/after/java-debug/com.microsoft.java.debug.plugin/target/com.microsoft.java.debug.plugin-0.33.0.jar")
--    };
--  }
local bundles = {
  vim.fn.glob("/Users/dypan/.config/nvim/after/java-debug/com.microsoft.java.debug.plugin/target/com.microsoft.java.debug.plugin-0.33.0.jar")
  --vim.fn.glob("path/to/java-debug/com.microsoft.java.debug.plugin/target/com.microsoft.java.debug.plugin-*.jar"),
};  
vim.list_extend(bundles, vim.split(vim.fn.glob("/Users/dypan/.config/nvim/after/vscode-test/extension/server/*.jar"), "\n"))
config['init_options'] = {
  bundles = bundles;
}
require('jdtls').start_or_attach(config)
--require('jdtls').start_or_attach(config) {
--  capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
--}

  


