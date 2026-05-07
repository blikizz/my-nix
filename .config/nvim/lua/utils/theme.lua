-- ================================================================================================
-- TITLE : Theme Loader
-- ABOUT : Loads theme based on desktop session (COSMIC or bspwm)
-- ================================================================================================

local M = {}

M.bspwm_dir = os.getenv("HOME") .. "/.config/bspwm"
M.rice_file = M.bspwm_dir .. "/.rice"
M.default_theme = "catppuccin"
M.cosmic_theme = "rose-pine"

function M.set_colorscheme(theme, rice_name)
  vim.g.colors_name = theme
  vim.cmd("colorscheme " .. theme)
  -- Match kitty terminal background color only for MoonKnight theme
  if rice_name == "MoonKnight" then
    vim.cmd("highlight Normal guibg=#212529")
  end
end

function M.load_theme_from_bspwm()
  local rice = nil
  local file = io.open(M.rice_file, "r")
  if file then
    rice = file:read("*a"):gsub("%s+", "")
    file:close()

    if rice and rice ~= "" then
      local theme_config = M.bspwm_dir .. "/rices/" .. rice .. "/theme-config.bash"
      local config = io.open(theme_config, "r")
      if config then
        local content = config:read("*a")
        config:close()

        for line in content:gmatch("[^\r\n]+") do
          local theme = line:match("^NVIM_THEME=\"([^\"]+)\"")
          if theme then
            M.set_colorscheme(theme, rice)
            return
          end
        end
      end
      -- Couldn't find NVIM_THEME in config, use default but pass rice for background override
      M.set_colorscheme(M.default_theme, rice)
      return
    end
  end
  -- No rice file or empty rice, use default without background override
  M.set_colorscheme(M.default_theme, nil)
end

function M.load_theme()
  local desktop = os.getenv("XDG_CURRENT_DESKTOP")
  if desktop == "COSMIC" then
    M.set_colorscheme(M.cosmic_theme, nil)
  else
    M.load_theme_from_bspwm()
  end
end

return M
