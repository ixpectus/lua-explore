local strings = require("plenary.strings")
local Job = require'plenary.job'

result = Job:new({
  command = 'ls',
  args = { '-la' },
  cwd = '/usr/bin',
  env = { ['a'] = 'b' },
  on_exit = function(j, return_val)
    -- print(vim.inspect(return_val))
    -- print(vim.inspect(j:result()))
  end,
}):sync() -- or start()
print(vim.inspect(result))
print("23234")
