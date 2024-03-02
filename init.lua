
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
   vim.fn.system({
      "git",
      "clone",
      "--depth=1",
      "https://github.com/folke/lazy.nvim.git",
      lazypath,
   })
end
vim.opt.rtp:prepend(lazypath)

require('rhubaruth.settings')
require('rhubaruth.keymaps')
require('rhubaruth.plugins')
require('rhubaruth.plugins_config.init')

