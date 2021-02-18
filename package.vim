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
Plug 'airblade/vim-gitgutter'
" Testing
Plug 'vim-test/vim-test'
" Close buffers
Plug 'moll/vim-bbye'
" Maximise buffers
Plug 'szw/vim-maximizer'
" Autocomplete
Plug 'neoclide/coc.nvim', { 'do': 'yarn install --frozen-lockfile' }
" Typescript specific
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
" Wakatime
Plug 'wakatime/vim-wakatime'
" Theme
Plug 'liuchengxu/space-vim-dark'
Plug 'kyazdani42/nvim-web-devicons'

call plug#end()
