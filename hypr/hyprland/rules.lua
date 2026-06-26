-- hl.window_rule {
--   name = "kitty-transparency",
--   match = {class = "^(kitty)$"},
--   opacity = 0.9
-- }

hl.window_rule {
  name = "anki-transparency",
  match = {class = "^(anki)$"},
  opacity = 0.95
}

hl.window_rule {
  name = "obsidian-transparency",
  match = {class = "^(obsidian)$"},
  opacity = 0.95
}

hl.window_rule {
  name = "floating",
  match = {class = "^(org.pulseaudio.pavucontrol)$"},
  float = true,
  size = "600 800",
}

hl.window_rule {
	-- name = fix-xwayland-drags,
	-- match:class = ^$
	-- match:title = ^$
	-- match:xwayland = true
	-- match:float = true
	-- match:fullscreen = false
	-- match:pin = false

	-- no_focus = true

  name = "fix-xwayland-drags",
  match = {xwayland = true, float = true, fullscreen = false, pin = false},
  no_focus = true
}

hl.window_rule {
  name = "suppress-maximize-events",
  match = {class = ".*"},
  suppress_event = "maximize"
}

hl.window_rule {
  name = "keepassxc-float", 
  match = {class = "^(org.keepassxc.*)$"},
  float = true,
}