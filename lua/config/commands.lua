local utils = require("core.utils")
local updater = require("core.updater")

local commands = {
    ["HydraVimReload"] = {utils.ReloadVimrc, {}},
    ["HydraVimUpdate"] = {updater.sync_config_repo, {}},
    ["HydraVimCloseBuffer"] = {utils.CloseBuffer, {}}
}

for name, command in pairs(commands) do
    vim.api.nvim_create_user_command(name, command[1], command[2])
end
