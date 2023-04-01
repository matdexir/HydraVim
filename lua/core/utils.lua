local H = {}

H.ReloadVimrc = function ()
    vim.cmd "luafile $MYVIMRC"
end

H.Map = function(mode, keys, comd, desc)
    vim.keymap.set(mode, keys, comd, desc, { silent = true, noremap = true })
end

H.CloseBuffer = function ()
  local modified = vim.api.nvim_buf_get_option(0, 'modified')
  if modified then
    local option = vim.fn.input('Buffer modified. Do you want to save changes? (y/n): ')
    if option:lower() == 'y' then
      vim.cmd('w')
    end
  end
  vim.api.nvim_buf_delete(0, { force = true })
end

return H
