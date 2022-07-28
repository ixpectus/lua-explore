function CreateOrGetDebugWin()
  if DebugWindowID ~= nil and DebugWindowID > 0 and vim.api.nvim_win_is_valid(DebugWindowID) then
    return DebugWindowID
  end
  DebugWindowID = vim.api.nvim_get_current_win()
  if not vim.api.nvim_buf_is_valid(DebugWinBuf) then
    DebugWinBuf = vim.api.nvim_create_buf(false, true)
  end
  vim.cmd("vsplit")
  vim.api.nvim_win_set_buf(DebugWindowID, DebugWinBuf)
  return DebugWindowID
end

function CreateOrGetDebugBuf()
  CreateOrGetDebugWin()
  return DebugWinBuf
end

function CloseDebugWin()
  if DebugWindowID ~= nil and DebugWindowID > 0 and vim.api.nvim_win_is_valid(DebugWindowID) then
    vim.api.nvim_win_close(DebugWindowID, true)
  end
end
