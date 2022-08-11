if vim.g.loaded_auto_save then
  return
end
vim.g.loaded_auto_save = true

local command = vim.api.nvim_create_user_command

command("ASToggle", function()
	require("auto-save").toggle()
end, {})
