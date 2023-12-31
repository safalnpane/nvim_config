local status, telescope = pcall(require, "telescope")
if (not status) then return end

telescope.setup {
  defaults = {
    prompt_prefix = "$ ",
    selection_caret = "=>",
  },
}

telescope.load_extension('harpoon')
