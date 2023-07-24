local dap = require('dap')
local widgets = require('dap.ui.widgets')

vim.keymap.set('n', '<F5>', dap.continue)
vim.keymap.set('n', '<F8>', dap.toggle_breakpoint)
vim.keymap.set('n', '<F9>', dap.step_into)
vim.keymap.set('n', '<F10>', dap.step_over)
vim.keymap.set('n', '<F12>', dap.step_out)
vim.keymap.set('v', '<Tab>', widgets.hover)

vim.api.nvim_create_user_command('DapStart', function(opts)
  widgets.sidebar(widgets.frames).open()
  widgets.sidebar(widgets.scopes).open()
  dap.continue()
end,
{})

vim.api.nvim_create_user_command('DapLocals', function(opts)
  widgets.centered_float(widgets.scopes)
end,
{})

vim.api.nvim_create_user_command('DapFrameUp', function(opts) dap.up() end, {})
vim.api.nvim_create_user_command('DapFrameDown', function(opts) dap.down() end, {})

