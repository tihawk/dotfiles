vim.opt_local.conceallevel = 1
vim.opt_local.linebreak = true
vim.opt_local.textwidth = 80

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
