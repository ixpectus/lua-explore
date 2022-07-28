function CreateOrGetDebugWin()
end

local curBuf = vim.fn.bufnr("%")
local curWin = vim.api.nvim_get_current_win()
print(curWin)

-- vim.api.nvim_command("botright vnew")
-- local buf = vim.api.nvim_get_current_buf()
local newBuf = vim.api.nvim_create_buf(false, true)
-- local newWin = vim.api.nvim_create_augroup
vim.cmd("vsplit")
vim.api.nvim_win_set_buf(curWin, newBuf)
vim.api.nvim_win_close(curWin, true)
print(vim.api.nvim_win_is_valid(curWin))
-- print(buf)
-- vim.api.nvim_buf_set_name(0, "result #" .. buf)
-- vim.api.nvim_buf_set_option(buf, "buftype", "nofile")
-- vim.api.nvim_buf_set_option(buf, "bufhidden", "wipe")
-- vim.api.nvim_win_set_buf(0, curBuf)
-- vim.api.nvim_win_set_cursor(curWin, {10, 10})
-- local win = vim.api.nvim_get_current_win()
-- print(win)
