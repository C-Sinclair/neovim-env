" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
local package_path_str = "/home/conor/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/conor/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/conor/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/conor/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/conor/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

_G.packer_plugins = {
  ["BetterLua.vim"] = {
    loaded = true,
    path = "/home/conor/.local/share/nvim/site/pack/packer/start/BetterLua.vim"
  },
  ["auto-pairs"] = {
    loaded = true,
    path = "/home/conor/.local/share/nvim/site/pack/packer/start/auto-pairs"
  },
  ["completion-nvim"] = {
    loaded = true,
    path = "/home/conor/.local/share/nvim/site/pack/packer/start/completion-nvim"
  },
  ["galaxyline.nvim"] = {
    config = { "\27LJ\2\n3\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\24sinclair/statusline\frequire\0" },
    loaded = true,
    path = "/home/conor/.local/share/nvim/site/pack/packer/start/galaxyline.nvim"
  },
  improvedft = {
    loaded = true,
    path = "/home/conor/.local/share/nvim/site/pack/packer/start/improvedft"
  },
  ["lsp_extensions.nvim"] = {
    loaded = true,
    path = "/home/conor/.local/share/nvim/site/pack/packer/start/lsp_extensions.nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/home/conor/.local/share/nvim/site/pack/packer/start/lspsaga.nvim"
  },
  ["manillua.nvim"] = {
    loaded = true,
    path = "/home/conor/.local/share/nvim/site/pack/packer/start/manillua.nvim"
  },
  neoformat = {
    loaded = true,
    path = "/home/conor/.local/share/nvim/site/pack/packer/start/neoformat"
  },
  ["nlua.nvim"] = {
    loaded = true,
    path = "/home/conor/.local/share/nvim/site/pack/packer/start/nlua.nvim"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/conor/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/conor/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/conor/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/conor/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/conor/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/conor/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/conor/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["space-vim-dark"] = {
    loaded = true,
    path = "/home/conor/.local/share/nvim/site/pack/packer/start/space-vim-dark"
  },
  ["telescope-fzy-native.nvim"] = {
    loaded = true,
    path = "/home/conor/.local/share/nvim/site/pack/packer/start/telescope-fzy-native.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/conor/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["vim-closetag"] = {
    loaded = true,
    path = "/home/conor/.local/share/nvim/site/pack/packer/start/vim-closetag"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/home/conor/.local/share/nvim/site/pack/packer/start/vim-commentary"
  },
  ["vim-flog"] = {
    loaded = true,
    path = "/home/conor/.local/share/nvim/site/pack/packer/start/vim-flog"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/conor/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-gitgutter"] = {
    loaded = true,
    path = "/home/conor/.local/share/nvim/site/pack/packer/start/vim-gitgutter"
  },
  ["vim-maximizer"] = {
    loaded = true,
    path = "/home/conor/.local/share/nvim/site/pack/packer/start/vim-maximizer"
  },
  ["vim-startify"] = {
    loaded = true,
    path = "/home/conor/.local/share/nvim/site/pack/packer/start/vim-startify"
  },
  ["vim-wakatime"] = {
    loaded = true,
    path = "/home/conor/.local/share/nvim/site/pack/packer/start/vim-wakatime"
  }
}

-- Config for: galaxyline.nvim
try_loadstring("\27LJ\2\n3\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\24sinclair/statusline\frequire\0", "config", "galaxyline.nvim")
END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
