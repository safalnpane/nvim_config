local status, indent_blankline = pcall(require, "ibl")
if (not status) then return end


indent_blankline.setup {
  show_end_of_line = true,
  space_char_blankline = " ",
}
