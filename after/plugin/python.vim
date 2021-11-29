lua << EOF
local dap = require('dap')
dap.adapters.python = {
    type = 'executable';
    --command = os.getenv('HOME') .. '/.virtualenvs/tools/bin/python';
    command = '/Library/Frameworks/Python.framework/Versions/3.8/bin/python3';
    args = { '-m', 'debugpy.adapter' };
    }
dap.configurations.python = {
  {
    type = 'python';
    request = 'launch';
    name = "Launch file";
    program = "${file}";
    pythonPath = function()
      return '/Library/Frameworks/Python.framework/Versions/3.8/bin/python3'
    end;
  },
}
EOF
