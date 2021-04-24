return require('packer').startup(function(use)
    -- Auto management
    use { 'wbthomason/packer.nvim', opt = true }

    -- Theme :)
    use { 'folke/tokyonight.nvim' }

    -- Fuzzy finder
    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
    }
    use {
        'hoob3rt/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }

    -- LSP
    use { 'tjdevries/nlua.nvim' }
    use { 'neovim/nvim-lspconfig' }
    use { 'nvim-lua/completion-nvim' } -- autocompletation UX
    use { 'euclidianAce/BetterLua.vim' } -- better highlight lua
    use { 'tjdevries/manillua.nvim' } -- fancy lua folds

    -- Autocomplete
    use { 'hrsh7th/nvim-compe' }

    -- NerdTree
    use { 'scrooloose/nerdtree' }

    -- Auto pairs (), [], {}, ...
    use { 'jiangmiao/auto-pairs' }

    -- Work with parenthesis, etc
    use { 'tpope/vim-surround' }

    -- EasyMotion
    use { 'easymotion/vim-easymotion' }

    -- using packer.nvim
    use { 'akinsho/nvim-bufferline.lua', requires = 'kyazdani42/nvim-web-devicons' }

    -- Formatting
    use { 'sbdchd/neoformat' }

    -- Navigate between tabs
    use { 'christoomey/vim-tmux-navigator' }

    -- Comments
    use { 'scrooloose/nerdcommenter' }

end)



