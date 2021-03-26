local actions = require'telescope.actions'
local previewers = require'telescope.previewers'
local pickers = require'telescope.pickers'
local sorters = require'telescope.sorters'
local finders = require'telescope.finders'
local state = require'telescope.actions.state'

require'telescope'.setup {
  defaults = {
    file_sorter = require('telescope.sorters').get_fzy_sorter,
    prompt_prefix = ' >',
    color_devicons = true,

    file_previewer   = require('telescope.previewers').vim_buffer_cat.new,
    grep_previewer   = require('telescope.previewers').vim_buffer_vimgrep.new,
    qflist_previewer = require('telescope.previewers').vim_buffer_qflist.new,

    mappings = {
      i = {
        ["<esc>"] = actions.close,
        ["<C-x>"] = false,
        ["<C-q>"] = actions.send_to_qflist,
      },
    }
  },
  extensions = {
    fzy_native = {
      override_generic_sorter = false,
      override_file_sorter = true,
    }
  }
}

require'telescope'.load_extension('fzy_native')
require'telescope'.load_extension('dap')

local function get_id(value)
  local index, _ = value:find("\t")
  local id = value:sub(1, index - 1)
  return id
end

local function open_pr()
  local entry = state.get_selected_entry()
  local id = get_id(entry.value)
  os.execute('gh pr view -w '..id)
end

local function create_pr()
  os.execute('gh pr create -w')
end

local M = {}

M.search_dotfiles = function()
  require'telescope.builtin'.find_files {
    prompt_title = '< NVIM >',
    cwd = '~/.config/nvim',
  }
end

M.git_branches = function()
  require("telescope.builtin").git_branches {
    attach_mappings = function(_, map)
      map('i', '<c-d>', actions.git_delete_branch)
      map('n', '<c-d>', actions.git_delete_branch)
      return true
    end
  }
end

M.buffers = function()
  local function close_buffer()
    local buf = state.get_selected_entry()
    vim.cmd(':'..buf.bufnr..'bw')
    M.buffers()
  end
  require'telescope.builtin'.buffers {
    attach_mappings = function(_, map)
      map('i', '<C-d>', close_buffer)
      return true
    end
  }
end

M.git_prs = function()
  pickers.new {
    results_title = 'Pull Requests',
    finder = finders.new_oneshot_job({'gh', 'pr', 'list'}),
    sorter = sorters.get_fuzzy_file(),
    previewer = previewers.new_termopen_previewer {
      get_command = function(entry)
        local id = get_id(entry)
        return {'gh', 'pr', 'view', id}
      end
    },
    attach_mappings = function(_, map)
      map('i', '<CR>', open_pr)
      map('i', '<C-c>', create_pr)
      return true
    end
  }:find()
end

require'sinclair.telescope.keymaps'

return M
