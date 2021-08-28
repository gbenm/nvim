local packer = require('packer')

packer.config.git.clone_timeout = 600;
packer.reset()

return packer.startup(function(use)
    -- Auto management
    use { 'wbthomason/packer.nvim', opt = true }

    -- folding
    use { 'pseewald/vim-anyfold' }

    -- EditorConfig
    use { 'editorconfig/editorconfig-vim' }

    -- Tracking code
    use { 'wakatime/vim-wakatime' }

    -- Tree Sitter for improve parsing
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    -- Theme :)
    -- use { 'tanvirtin/monokai.nvim' }
    use { 'folke/tokyonight.nvim' }
    use { 'mhinz/vim-startify' }

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
    use { 'euclidianAce/BetterLua.vim' } -- better highlight lua
    use { 'dart-lang/dart-vim-plugin' } -- highlighting dart
    use { 'tjdevries/manillua.nvim' } -- fancy lua folds

    -- AI
    -- use { 'codota/tabnine-vim' }
    use {'tzachar/compe-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-compe'}

    -- completation
    -- use {'Shougo/deoplete.nvim', run = ':UpdateRemotePlugins'}
    -- use { 'nvim-lua/completion-nvim' } -- autocompletation UX
    use {
        'hrsh7th/nvim-compe',
    }

    -- NerdTree
    use { 'scrooloose/nerdtree' }

    -- Auto pairs (), [], {}, ...
    use { 'jiangmiao/auto-pairs' }
    use {
        'windwp/nvim-autopairs',
    }

    use {
        'lewis6991/gitsigns.nvim',
        event = "BufRead",
        requires = {
            'nvim-lua/plenary.nvim'
        }
    }

    use { 'glepnir/lspsaga.nvim' }

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

    -- Indent
    use { 'lukas-reineke/indent-blankline.nvim' }

    -- LaTeX
    use { 'lervag/vimtex' }

end)



