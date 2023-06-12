local Terminal = require('toggleterm.terminal').Terminal
local htop     = Terminal:new({ cmd = "htop", hidden = true, direction = "float" })

function Htop_toggle()
  htop:toggle()
end

-- Toggle htop on <option>+k (ª)
lvim.keys.normal_mode["ª"] = "<cmd>lua Htop_toggle()<CR>"
