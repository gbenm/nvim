local packer = require("packer")
local use = packer.use

packer.init()
packer.config.git.clone_timeout = 600;
packer.reset()

-- Packer
use { "wbthomason/packer.nvim", opt = true, }

-- IDE
use {
  "github/copilot.vim",
  config = function ()
    vim.g["copilot_no_tab_map"] = true
  end
}

use {
  "neovim/nvim-lspconfig",
  config = function()
    require "lsp"
  end,
  after = {"nvim-cmp", "cmp-nvim-lsp", "cmp_luasnip"}
}

use { "tami5/lspsaga.nvim" }

use {
  "nvim-treesitter/nvim-treesitter",
  run = ":TSUpdate",
  event = "VimEnter",
  config = function()
    require("nvim-treesitter.configs").setup {
      ensure_installed = "maintained",
      highlight = {
        enable = true,
        disable = { "c", "rust" },
        additional_vim_regex_highlighting = false,
      },
    }

    vim.o["foldexpr"] = "nvim_treesitter#foldexpr()"
  end
}

use {
  "hrsh7th/nvim-cmp",
  config = function ()
    require "plugins.units.nvim-cmp"
  end,
  after = "nvim-autopairs"
}

use {
  "hrsh7th/cmp-nvim-lsp",
  after = "nvim-cmp",
} -- LSP source for nvim-cmp

use {
  "saadparwaiz1/cmp_luasnip",
  after = "nvim-cmp",
} -- Snippets source for nvim-cmp

use { "L3MON4D3/LuaSnip" } -- Snippets plugin

-- Editor
use { "editorconfig/editorconfig-vim" }

use {
  "windwp/nvim-autopairs",
  event = "VimEnter",
  config = function()
    require("nvim-autopairs").setup()
  end
}

use { "easymotion/vim-easymotion" }
use { "christoomey/vim-tmux-navigator" } -- moverse entre ventanas
use { "scrooloose/nerdcommenter" }
use { "lukas-reineke/indent-blankline.nvim" }

use {
  "folke/todo-comments.nvim",
  requires = "nvim-lua/plenary.nvim",
  config = function()
    require("todo-comments").setup {}
  end
}

use {
  "folke/trouble.nvim",
  requires = "kyazdani42/nvim-web-devicons",
  config = function()
    require("trouble").setup {}
  end
}

use {
  "nvim-telescope/telescope.nvim",
  requires = {{"nvim-lua/popup.nvim"}, {"nvim-lua/plenary.nvim"}}
}

----------------------------------------
-- Plugins minimos para la apariencia --
----------------------------------------
use { "marko-cerovac/material.nvim" }
use { "glepnir/dashboard-nvim" }

use {
  "hoob3rt/lualine.nvim",
  requires = {"kyazdani42/nvim-web-devicons", opt = true}
}

use {
  "akinsho/nvim-bufferline.lua",
  requires = {"kyazdani42/nvim-web-devicons", opt = true}
}

use { "kyazdani42/nvim-web-devicons", opt = true }
----------------------------------------

use {
  "scrooloose/nerdtree",
  event = "VimEnter",
  config = function ()
    vim.g["NERDTreeQuitOnOpen"] = 1
  end
}

use {
  "lervag/vimtex",
  ft = "tex",
}

use {
  "wakatime/vim-wakatime",
  event = "InsertEnter",
}
