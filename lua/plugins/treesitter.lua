local status, treesitter = pcall(require, 'nvim-treesitter.configs')
if not status then
  return
end

treesitter.setup({
  ensure_installed = { 'cpp', 'c', 'javascript', 'typescript', 'html', 'css', 'go' },
  highlight = { enable = true },
  indent = { enable = true },

  rainbow = {
    enable = true,
    extended_mod = true,
    max_file_lines = nil,
  }
})
