local packer = require("packer")
local use = packer.use

packer.init()
packer.reset()

use { "wbthomason/packer.nvim", opt = true }
use { "editorconfig/editorconfig-vim" }

----------------------------------------
-- Plugins minimos para la apariencia --
use { "marko-cerovac/material.nvim" }
use {
  "hoob3rt/lualine.nvim",
  requires = {"kyazdani42/nvim-web-devicons", opt = true}
}
use {
  "akinsho/nvim-bufferline.lua",
  requires = "kyazdani42/nvim-web-devicons"
}
----------------------------------------

