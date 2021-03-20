if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim"'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

call plug#begin(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/plugged"'))

" Tags/Brackets
Plug 'tpope/vim-surround'
Plug 'tpope/vim-endwise'
Plug 'alvan/vim-closetag'

" Search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Powerbar
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Comments
Plug 'tpope/vim-commentary'

" Git 
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'stsewd/fzf-checkout.vim'

" Testing
" Plug 'vim-test/vim-test'

" Close buffers
Plug 'moll/vim-bbye'

" Maximise buffers
Plug 'szw/vim-maximizer'

" Wakatime
Plug 'wakatime/vim-wakatime'

" LSP
Plug 'neovim/nvim-lspconfig'

" Plug 'nvim-lua/completion-nvim'

Plug 'hrsh7th/nvim-compe'
" Plug 'glepnir/lspsaga.nvim'
" Plug 'onsails/lspkind-nvim'
" Plug 'kosayoda/nvim-lightbulb'
" Plug 'mfussenegger/nvim-dap'
Plug 'anott03/nvim-lspinstall'


" Theme
Plug 'liuchengxu/space-vim-dark'
Plug 'kyazdani42/nvim-web-devicons'

call plug#end()

luafile $HOME/.config/nvim/compe-config.lua
luafile $HOME/.config/nvim/ts-lsp.lua
luafile $HOME/.config/nvim/python-lsp.lua

nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <C-n> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> <C-p> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>

autocmd BufWritePre *.js lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.jsx lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.py lua vim.lsp.buf.formatting_sync(nil, 100)
