local M = {}

local function async_update_hydravim()
  local response = vim.fn.input("Continue with the update? (y/n): ")
  if response ~= 'y' then
    vim.schedule(function()
      vim.api.nvim_echo({{"Update was cancelled.", "WarningMsg"}}, true, {})
    end)
    return
  end

  vim.cmd "redraw"
  vim.api.nvim_echo({{"Looking for updates for HydraVim...", "Normal"}}, true, {})

  local nvim_config_path = vim.fn.stdpath('config')
  local commands = {
    "git -C " .. nvim_config_path .. " fetch -q",
    "git -C " .. nvim_config_path .. " status -s -b",
    "git -C " .. nvim_config_path .. " clean -q -f -d",
    "git -C " .. nvim_config_path .. " reset -q --hard origin/main",
    "git -C " .. nvim_config_path .. " pull -q"
  }

  local success = true
  for _, cmd in ipairs(commands) do
    vim.fn.system(cmd)
    if vim.v.shell_error ~= 0 then
      success = false
      break
    end
  end

  vim.cmd "redraw"
  if success then
    vim.api.nvim_echo({{"HydraVim config updated successfully!", "Normal"}}, true, {})
    vim.cmd "Lazy sync"
  else
    vim.api.nvim_echo({{"Could not update HydraVim from remote repository.", "WarningMsg"}}, true, {})
  end
end

function M.sync_config_repo()
  async_update_hydravim()
end

return M


