-- Sources / Inspirations / Examples / Or just good stuff in general,
-- https://github.com/tralph3/.dotfiles/blob/master/configs/neovim.org

-- Options
vim.opt.allowrevins = false -- reverse insert mode
vim.opt.autochdir = false -- auto change working dir
vim.opt.autoindent = true -- auto indent
vim.opt.autoread = true -- auto read when a file is changed outside
-- no longer supported or new?
-- vim.opt.autorewrite = false
-- auto write files after some commands
-- vim.opt.autorewriteall = false
-- and this is for the rest of the commands
-- this includes stuff like :quit
vim.opt.background = "dark" -- dark or light, to guide themes
vim.opt.backspace = "indent,eol,start" -- also possible, nostop
vim.opt.backup = true -- use backups
vim.opt.backupcopy = "yes" -- overwrite original, new file as backup
-- vim.opt.breakat ... -- line break characters for when linebreak true
-- vim.opt.linebreak <- and this is the opt previous one affects

-- unnamedplus aliases unnamed register to +, which is the system clipboard
-- unnamed is the same intent basically, which is *, which seems to effectively mean the same thing on my system
vim.opt.clipboard = "unnamedplus"
vim.opt.cmdheight = 1 -- command line height

-- add 32 for the classic column
vim.opt.colorcolumn = { 72, 80 } -- colors the exact column, 80 is subls 79
vim.opt.completeopt = { "menuone", "noselect" } -- show menu for completion at all times
vim.opt.conceallevel = 0 -- dont hide anything
vim.opt.confirm = true -- ask me if i want to discard unsaved changes
-- copyindent isnt used, might need later
vim.opt.cursorcolumn = false -- highlight column
vim.opt.cursorline = false -- highlight row
-- opt.emoji defaults to on, might want false later on
vim.opt.endofline = true -- write eol
-- equalways to set window resizing, defaults to true
vim.opt.expandtab = true -- just makes sense
-- maybe later ... https://vi.stackexchange.com/questions/2970/elastic-tabstops-in-vim
vim.opt.fileencoding = "utf-8"
vim.opt.fileformat = "unix" -- for line endings and stuff, dont use windows
vim.opt.fileformats = "unix,dos" -- likewise consider all files unix first
-- fillchars is useful for status bar
vim.opt.fixendofline = true -- fix eols
-- fold options might be useful later on
-- fsync might be useful later on during networking
vim.opt.fsync = true
-- grepprg to set grep binary
-- guicursor can be useful later on
-- vim.opt.guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"

-- guifontwide to set a different font for wide characters
-- also skipping guioptions
-- see also guitab...
vim.opt.history = 10000 -- 10k is default, lets keep it that way
vim.opt.hlsearch = true -- highlight all previous matches
vim.opt.ignorecase = true -- ignore case when doing search
vim.opt.incsearch = true -- search as you type
vim.opt.lazyredraw = false -- redraw durin gmacros when false
-- matchpairs might be useful to modify
-- matchtime
-- maxfuncdept is useful to avoid recursion loops, default is 100
-- maxmapdept is similar
-- max menu items, default is 25
vim.opt.menuitems = 50
-- mkspellmem
vim.opt.mouse = "a" -- support mouse in all modes
--mousefocus to auto switch window focus
--mousehide to hide mouse when typing
-- modify mousemodel to show a pop up on rightclick
-- mousescroll sets the shift per scroll
-- mouseshape sets the cursor shape
vim.opt.number = true -- show line numbers
vim.opt.relativenumber = true
-- not doing relativenumber
vim.opt.numberwidth = 4 -- width of number column
-- omnifunc for omni completion
-- paste is obsolete, pastetoggle can be used if we want to use it anyway
vim.opt.pumblend = 0 -- pop up menu opacity, 0-100
vim.opt.pumheight = 10 -- pop up menu height
vim.opt.pumwidth = 25 -- pop up menu width
-- redrawdebug to see redraws
-- redrawtime to see redraw timing
vim.opt.ruler = true -- line col position in bottom right
-- rulerformat default %15(%c%V\ %p%%%)
-- :set rulerformat=%l,%c%V%=%P
--                   │  │ │ │ └ position in the file in percent (or ALL/TOP/BOT)
--                   │  │ │ └—— right align the following items
--                   │  │ └———— virtual (or screen) column, matters for TAB and multibyte chars
--                   │  └—————— cursor column (in bytes)
--                   └————————— current line
-- right align everything instead, and hide virtual position
-- actually lets just display the column number aligned to right instead,
vim.opt.rulerformat = "%=%c"
-- scroll to set scroll size per scroll
-- scrollback can be useful if we need it later on
vim.opt.scrolljump = 1 -- when we scroll past the bottom, how many more characters should be placed next?
vim.opt.scrolloff = 50 -- show more lines at the end of a file, useful for visual mode, these lines wont be numbered
vim.opt.sessionoptions = "buffers" -- mksession behavior
-- scrollopt can also be useful
-- sidescroll to set side scroll width per scroll
vim.opt.showtabline = 2 -- always show tabs
vim.opt.smartcase = true -- when searching, dont care about cases except when theres at least 1 ucase
-- smarttab can be useful
vim.opt.shiftwidth = 4 -- tab width when auto tabbing
vim.opt.softtabstop = 4
vim.opt.smartindent = true -- smart indent
-- more useful split... opts exist
vim.opt.splitbelow = true -- force all horizontal splits to go below current window
vim.opt.splitright = true -- force all vertical splits to go to the right of current window
vim.opt.swapfile = false -- disable using swapfiles, this makes it so its better to work with big files
vim.opt.tabstop = 4 -- tab size
-- a bunch of tag commands, seems awfully useful, lets return to that later
vim.opt.timeoutlen = 3000 -- ms to wait when mapper is in a loop
vim.opt.undolevels = 1000 -- 1000 is the default, lets keep it that way
-- allow persistent undos
vim.opt.undodir = vim.fn.expand("~/.cache/nvim/undodir")
vim.opt.undofile = true
vim.opt.updatecount = 100 -- after this many ms, update swapfile
vim.opt.updatetime = 2000 -- update file if nothing is typed after this much ms
-- varsofttabstop can be useful
-- verbose can be useful to debug
-- softmess can be useful
-- setting virtualedit to a static value can be useful but not sure if i want to do that
-- lots of 'wild' prefixes on w, skipping for now
-- 'win' keys define neovim gui stuff
vim.opt.winblend = 0 -- pop-up transparency, 0-100, 0 is none
vim.opt.wrap = false -- dont wrap text

-- not doing these from the vim course,
-- vim.cmd "set whichwrap+=<,>,[,],h,l"
-- vim.cmd [[set iskeyword+=-]]
-- vim.cmd [[set formatoptions-=cro]] -- TODO: this doesn't seem to work

-- disable kommentary creating default mappings before plugin exists
vim.g.kommentary_create_default_mappings = false
vim.opt.termguicolors = true
-- vim.o.shell = 'kitty'

-- add " to word seperators
vim.opt.iskeyword:append('"')
-- disable hidden buffers, in practice this means no unexpected exits due to closing a buffer
vim.api.nvim_command("set nohidden")

-- util
local map = function(mode, lhs, rhs, opts)
    local options = { noremap = true, silent = true }
    options = vim.tbl_extend("force", options, opts or {})
    vim.keymap.set(mode, lhs, rhs, options)
end

-- remap space as leader key
vim.api.nvim_set_keymap(
    "",
    "<Space>",
    "<Nop>",
    { noremap = true, silent = true }
) -- no recursive mapping, no output on mapping
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- taken from https://lazy.folke.io/installation
-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "--branch=stable",
        lazyrepo,
        lazypath,
    })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out, "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    -- theme
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },
    -- mason / lsp
    {
        "williamboman/mason.nvim",
    },
    {
        "williamboman/mason-lspconfig.nvim",
    },
    {
        "neovim/nvim-lspconfig",
    },
    {
        "stevearc/conform.nvim",
        opts = {},
    },
    -- sidebar
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
            "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
        },
    },
    -- telescope
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        dependencies = { "nvim-lua/plenary.nvim" },
    },
})

-- tokyonight
require("tokyonight").setup({
    -- your configuration comes here
    -- or leave it empty to use the default settings
    style = "night", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
    light_style = "day", -- The theme is used when the background is set to light
    transparent = true, -- Enable this to disable setting the background color
    terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
    styles = {
        -- Style to be applied to different syntax groups
        -- Value is any valid attr-list value for `:help nvim_set_hl`
        comments = { italic = false },
        keywords = { italic = false },
        functions = {},
        variables = {},
        -- Background styles. Can be "dark", "transparent" or "normal"
        sidebars = "dark", -- style for sidebars, see below
        floats = "dark", -- style for floating windows
    },
    sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
    day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
    hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
    dim_inactive = false, -- dims inactive windows
    lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold

    --- You can override specific color groups to use other groups or a hex color
    --- function will be called with a ColorScheme table
    ---@param colors ColorScheme
    on_colors = function(colors)
        colors.comment = "#8287BF"
    end,

    --- You can override specific highlights to use other groups or a hex color
    --- function will be called with a Highlights and ColorScheme table
    ---@param highlights Highlights
    ---@param colors ColorScheme
    on_highlights = function(highlights, colors) end,
})

-- mason
require("mason").setup()

-- lsp
require("mason-lspconfig").setup()

-- format
require("conform").setup({
    formatters_by_ft = {
        lua = { "stylua" },
    },
})

vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*",
    callback = function(args)
        require("conform").format({ bufnr = args.buf })
    end,
})

-- telescope

local telescope_builtin = require("telescope.builtin")
-- local builtingr = require("telescope.builtin").live_grep({grep_open_files=true})
vim.keymap.set("n", "<leader>f", telescope_builtin.find_files, {})
vim.keymap.set("n", "<leader>g", telescope_builtin.live_grep, {})
-- search in the list of open files
-- vim.keymap.set("n", "<leader>b", telescope_builtin.buffers, {})
-- search in the contents of open files instead
vim.keymap.set(
    "n",
    "<leader>b",
    telescope_builtin.current_buffer_fuzzy_find,
    {}
)
vim.keymap.set("n", "<leader>h", telescope_builtin.help_tags, {})

-- sidebar
vim.cmd([[colorscheme tokyonight]])
map("n", "<leader>e", ":Neotree focus toggle=true<CR>")
