vim.opt_local.conceallevel = 1
vim.opt_local.linebreak = true
vim.opt_local.textwidth = 80
local current = "hard"

-- Switch wrapping of markdown buffer between soft and hard
---@param softOrHard string|?
function SwitchWrapping(softOrHard)
  softOrHard = softOrHard or "hard"

  if (softOrHard == "hard") then
    vim.opt_local.textwidth = 80
    vim.opt_local.wrap = false
  elseif softOrHard == "soft" then
    vim.opt_local.textwidth = 0
    vim.opt_local.wrap = true
  end
end

-- Toggle wrapping of markdown buffer between soft and hard
function ToggleWrapping()
  if (current == "soft") then
    vim.opt_local.textwidth = 80
    vim.opt_local.wrap = false
    current = "hard"
    print("Toggled wrapping to hard")
  elseif current == "hard" then
    vim.opt_local.textwidth = 0
    vim.opt_local.wrap = true
    current = "soft"
    print("Toggled wrapping to soft")
  end
end

vim.keymap.set("n", "<leader>tw", ":lua ToggleWrapping()<CR>")
