-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---
-- @type ChadrcConfig
local M = {}

M.base46 = {
	theme = "catppuccin",
  

  changed_themes = {
     catppuccin = {
        
       base_16 = { 
        base00 ="#303446",
        base03 = "#605f6f",
        },
        
       base_30 = { 
        black = "#303446",
        darker_black = "#292c39",
        line = "#605f6f",
        },
      },
  },
}

return M
