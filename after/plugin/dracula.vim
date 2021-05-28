if dracula#should_abort()
  finish
endif

" Fzf: {{{
if exists('g:loaded_fzf') && ! exists('g:fzf_colors')
  let g:fzf_colors = {
    \ 'fg':      ['fg', 'Normal'],
    \ 'bg':      ['bg', 'Normal'],
    \ 'hl':      ['fg', 'Search'],
    \ 'fg+':     ['fg', 'Normal'],
    \ 'bg+':     ['bg', 'Normal'],
    \ 'hl+':     ['fg', 'DraculaOrange'],
    \ 'info':    ['fg', 'DraculaPurple'],
    \ 'border':  ['fg', 'Ignore'],
    \ 'prompt':  ['fg', 'DraculaGreen'],
    \ 'pointer': ['fg', 'Exception'],
    \ 'marker':  ['fg', 'Keyword'],
    \ 'spinner': ['fg', 'Label'],
    \ 'header':  ['fg', 'Comment'],
    \}
endif
"}}}
" ALE: {{{
if exists('g:ale_enabled')
  hi! link ALEError              DraculaErrorLine
  hi! link ALEWarning            DraculaWarnLine
  hi! link ALEInfo               DraculaInfoLine

  hi! link ALEErrorSign          DraculaRed
  hi! link ALEWarningSign        DraculaOrange
  hi! link ALEInfoSign           DraculaCyan

  hi! link ALEVirtualTextError   Comment
  hi! link ALEVirtualTextWarning Comment
endif
" }}}
" CtrlP: {{{
if exists('g:loaded_ctrlp')
  hi! link CtrlPMatch     IncSearch
  hi! link CtrlPBufferHid Normal
endif
" }}}
" GitGutter / gitsigns: {{{
if exists('g:loaded_gitgutter')
  hi! link GitGutterAdd    DiffAdd
  hi! link GitGutterChange DiffChange
  hi! link GitGutterDelete DiffDelete
endif


" Neovim >=0.5 plugins
if has('nvim-0.5')
  " IndentLine.nvim
  hi! link IndentBlanklineContextChar Comment
  " Gitsigns
  hi! link GitSignsAdd      DiffAdd
  hi! link GitSignsChange   DiffChange
  hi! link GitSignsDelete   DiffDelete
  " Nvim-bufferline.lua (don't get loaded when lazy)
  " hi! link BufferLineIndicatorSelected DraculaPink
  " hi! link BufferlinePickSelected DraculaRed
  " hi! link BufferlinePickVisible DraculaRed
  " Hop.nvim
  hi! link HopUnmatched DraculaComment
  " Telescope.nvim
  hi! link TelescopeBorder DraculaPurple
  " Treesitter
  hi! link TSPunctSpecial Special
  " # Constants
  hi! link TSConstMacro Macro
  hi! link TSStringEscape Character
  hi! link TSSymbol DraculaPurple
  hi! link TSAnnotation DraculaYellow
  hi! link TSAttribute DraculaGreenItalic
  " # Functions
  hi! link TSFuncBuiltin DraculaCyan
  hi! link TSFuncMacro Function
  hi! link TSParameter DraculaOrangeItalic
  hi! link TSParameterReference DraculaOrange
  hi! link TSField DraculaOrange
  hi! link TSConstructor DraculaCyan
  " # Keywords
  hi! link TSLabel DraculaPurpleItalic
  " # Variable
  hi! link TSVariableBuiltin DraculaPurpleItalic
  " # Text
  hi! link TSStrong DraculaFgBold
  hi! link TSEmphasis DraculaFg
  hi! link TSUnderline Underlined
  hi! link TSTitle DraculaYellow
  hi! link TSLiteral DraculaYellow
  hi! link TSURI DraculaYellow
  " # Context
  hi! link TreesitterContext DraculaBgLighter
  " # Vim-sandwich
  highlight OperatorSandwichBuns guifg='#aa91a0' gui=underline ctermfg=172 cterm=underline
	highlight OperatorSandwichChange guifg='#F8D97C' gui=underline ctermfg=yellow cterm=underline
	highlight OperatorSandwichAdd guibg='#50fa7b' gui=none ctermbg=green cterm=none
	highlight OperatorSandwichDelete guibg='#ff5555' gui=none ctermbg=red cterm=none

  hi! link Visual CursorLine

endif
" }}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
