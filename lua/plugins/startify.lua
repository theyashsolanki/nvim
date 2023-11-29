return {
	{
		"mhinz/vim-startify",
		config = function()
			vim.cmd([[
      let g:startify_enable_special = 0
      let g:startify_custom_indices = 0
      let g:startify_padding_left = 5
      let g:startify_disable_at_cursor = 0
      let g:ascii = [
      \ '',
      \ '',
      \ '',
      \ '',
      \ '',
      \ '',
      \ '',
      \ '',
      \ '',
      \ '',
      \ '',
      \ '',
      \ '',
      \ '',
      \ '',
      \ '',
      \ '',
      \ '',
      \ '',
      \ ''
      \]
      let g:startify_custom_header = g:ascii + startify#center(startify#fortune#cowsay())
      " let g:startify_custom_header =
      " \ startify#center(startify#fortune#cowsay())
      " let g:startify_lists = []
      let g:startify_bookmarks = 0
      let g:startify_files_number = 0
    ]])
		end,
	},
}
