lua << EOF
local dap = require('dap')
dap.adapters.go = {
  type = 'executable';
  command = 'node';
  args = {os.getenv('HOME') .. '/.config/nvim/after/vscode-go/dist/debugAdapter.js'};
}
dap.configurations.go = {
  {
    type = 'go';
    name = 'Debug';
    request = 'launch';
    showLog = true;
    program = "${file}";
    dlvToolPath = '/Users/dypan/go/bin/dlv';  -- Adjust to where delve is installed
  },
  {
    type = "go";
    name = "Debug test"; -- configuration for debugging test files
    request = "launch";
    mode = "test";
    program = "${file}";
    dlvToolPath = '/Users/dypan/go/bin/dlv';  -- Adjust to where delve is installed
  },
}
EOF
