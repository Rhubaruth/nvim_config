require('nightfox').setup({
  options = {
    styles = {
      comments = "italic",
      keywords = "bold",
      types = "italic,bold",
    }
  }
})

-- In your init.lua file
vim.cmd('colorscheme duskfox')
