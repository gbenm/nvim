local packer = require("packer")
local use = packer.use

packer.init()

packer.config.git.clone_timeout = 600;
packer.reset()

-- Packer
use { "wbthomason/packer.nvim", opt = true, }

-- IDE
use { 'neovim/nvim-lspconfig' }
use { 'tami5/lspsaga.nvim' }
use {
  "nvim-treesitter/nvim-treesitter",
  run = ":TSUpdate"
}
use {
  "hrsh7th/nvim-compe",
  config = function ()
    require "plugins.nvim-compe"
  end,
  event = "InsertEnter *"
}

-- Editor
use { "editorconfig/editorconfig-vim" }
use { "windwp/nvim-autopairs" }
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

use { 'scrooloose/nerdtree', opt = true }
-- use { 'lervag/vimtex', opt = true } -- No funciona bien en opt

