#!/usr/bin/ruby

colors = Hash.new
# background = base 3
colors['background_R'] = 253
colors['background_G'] = 246
colors['background_B'] = 227
# command = cyan
colors['commandred'] = 42
colors['commandgreen'] = 161
colors['commandblue'] = 152
# comment = base 1
colors['commentred'] = 147
colors['commentgreen'] = 161
colors['commentblue'] = 161
# foreground = base 00
colors['foreground_R'] = 101
colors['foreground_G'] = 123
colors['foreground_B'] = 131
# index = yellow
colors['indexred'] = 181
colors['indexgreen'] = 137
colors['indexblue'] = 0
# marker (like brackets?) = red
colors['markerred'] = 220
colors['markergreen'] = 50
colors['markerblue'] = 47
# insertionpoint (cursor) = same as forground
colors['insertionpoint_R'] = colors['foreground_R']
colors['insertionpoint_G'] = colors['foreground_G']
colors['insertionpoint_B'] = colors['foreground_B']

colors.each_with_index do |(key, value), index|
  command = "defaults write TeXShop #{key} #{value/255.0}"
  `#{command}`
end
