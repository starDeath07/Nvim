require("nvchad.options")

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
--
local o = vim.o -- global options
local wo = vim.wo -- window options
local bo = vim.bo -- buffer options
--
-- ---------------------------------
-- -- Appearance & UI
-- ---------------------------------
o.number = true -- show line numbers
o.relativenumber = true -- show relative line numbers
-- o.cursorline = true -- highlight the current line
-- wo.signcolumn = "yes" -- always show the sign column
-- o.showmode = false -- don't show mode in command line (handled by statusline)
-- o.showcmd = true -- show incomplete commands
-- o.cmdheight = 1 -- command line height
-- o.termguicolors = true -- enable true colors
-- o.background = "dark" -- preferred background
-- o.laststatus = 3 -- global status line
-- o.ruler = true -- show cursor position
-- o.showtabline = 2 -- always show tabline
--
-- ---------------------------------
-- -- Indentation
-- ---------------------------------
o.expandtab = true -- use spaces instead of tabs
o.shiftwidth = 4 -- size of an indent
o.tabstop = 4 -- number of spaces a tab counts for
o.softtabstop = 4
o.smartindent = true -- auto indent new lines
o.autoindent = true
--
-- ---------------------------------
-- -- Searching
-- ---------------------------------
-- o.ignorecase = true -- ignore case in search
-- o.smartcase = true -- but become case-sensitive if uppercase used
-- o.hlsearch = true -- highlight search results
-- o.incsearch = true -- show matches as you type
-- o.gdefault = true -- apply :substitute to all matches by default

-- ---------------------------------
-- -- Splits & Windows
-- -- ---------------------------------
-- o.splitbelow = true -- horizontal splits go below
-- o.splitright = true -- vertical splits go right
-- -- o.fillchars = "vert:│" -- nicer vertical separators

-- ---------------------------------
-- -- Scrolling
-- ---------------------------------
o.scrolloff = 15 -- minimal lines above/below cursor
o.sidescrolloff = 8 -- minimal columns to sides
o.sidescroll = 1

-- ---------------------------------
-- -- Backups & Undo
-- ---------------------------------
-- o.swapfile = false -- disable swap file
-- o.backup = false -- disable backup files
-- o.undofile = true -- enable persistent undo
-- o.undodir = vim.fn.stdpath("data") .. "/undo" -- undo file location

-- ---------------------------------
-- -- Clipboard
-- ---------------------------------
-- o.clipboard = "unnamedplus" -- system clipboard
-- o.mouse = "a" -- enable mouse support
--
-- ---------------------------------
-- -- Performance
-- ---------------------------------
-- o.updatetime = 300 -- faster completion & CursorHold
-- o.timeoutlen = 500 -- shorter timeout for key sequences
--
-- ---------------------------------
-- -- Misc
-- ---------------------------------
-- o.wrap = false -- no line wrap
-- o.list = true -- show whitespace characters
-- o.listchars = "tab:> ,trail:·,extends:>,precedes:<"
-- o.shortmess = "filnxtToOF" -- reduce messages
-- o.splitkeep = "screen" -- keep screen position when splitting
-- o.conceallevel = 0 -- show concealed text

-- ---------------------------------
-- -- Buffer-specific settings
-- ---------------------------------
-- bo.swapfile = false
-- bo.autoindent = true
-- bo.expandtab = true

-- ---------------------------------
-- -- Window-specific settings
-- ---------------------------------
-- wo.number = true
-- wo.relativenumber = true
-- wo.cursorline = true
-- wo.signcolumn = "yes"
