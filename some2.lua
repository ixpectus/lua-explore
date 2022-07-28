-- vim.fn.execute(":set splitbelow")
-- vim.fn.execute("new")
-- vim.fn.execute([[:0read ! ]] .. "avito databus list")
--
local cmd = ":luafile /home/ixpectus/projects/lua-explore/some3.lua"
local result = vim.fn.split(vim.fn.execute(cmd), "\n")
local function create_buf()
	vim.api.nvim_command("botright new")
	local buf = vim.api.nvim_get_current_buf()
	vim.api.nvim_buf_set_name(0, "result #" .. buf)
	vim.api.nvim_buf_set_option(0, "buftype", "nofile")
	-- vim.api.nvim_buf_set_option(0, "swapfile", false)
	-- vim.api.nvim_buf_set_option(0, "bufhidden", "wipe")
	-- vim.api.nvim_command("setlocal wrap")
	-- vim.api.nvim_command("setlocal cursorline")
  return buf
end
local buf = create_buf()
vim.api.nvim_buf_set_lines(buf, 0, -1, false, result)
