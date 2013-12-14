#!/usr/bin/ruby

colors = Hash.new
# background = base 03
colors['background_R'] = 0
colors['background_G'] = 43
colors['background_B'] = 54
# command = cyan
colors['commandred'] = 42
colors['commandgreen'] = 161
colors['commandblue'] = 152
# comment = base 01
colors['commentred'] = 88
colors['commentgreen'] = 110
colors['commentblue'] = 117
# foreground = base 0
colors['foreground_R'] = 131
colors['foreground_G'] = 148
colors['foreground_B'] = 150
# index = yellow
colors['indexred'] = 181
colors['indexgreen'] = 137
colors['indexblue'] = 0
# marker (like brackets?) = red
colors['markerred'] = 220
colors['markergreen'] = 50
colors['markerblue'] = 47
# insertionpoint (cursor) = base 0
colors['insertionpoint_R'] = colors['foreground_R']
colors['insertionpoint_G'] = colors['foreground_G']
colors['insertionpoint_B'] = colors['foreground_B']

colors.each_with_index do |(key, value), index|
  command = "defaults write TeXShop #{key} #{value/255.0}"
  `#{command}`
end
