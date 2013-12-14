#!/usr/bin/ruby

colors = Hash.new
# background
colors['background_R'] = 255
colors['background_G'] = 255
colors['background_B'] = 255
# command
colors['commandred'] = 0
colors['commandgreen'] = 0
colors['commandblue'] = 255
# comment
colors['commentred'] = 255
colors['commentgreen'] = 0
colors['commentblue'] = 0
# foreground
colors['foreground_R'] = 0
colors['foreground_G'] = 0
colors['foreground_B'] = 0
# index
colors['indexred'] = 255
colors['indexgreen'] = 255
colors['indexblue'] = 0
# marker
colors['markerred'] = 5
colors['markergreen'] = 130
colors['markerblue'] = 33
# insertionpoint
colors['insertionpoint_R'] = colors['foreground_R']
colors['insertionpoint_G'] = colors['foreground_G']
colors['insertionpoint_B'] = colors['foreground_B']

colors.each_with_index do |(key, value), index|
  command = "defaults write TeXShop #{key} #{value/255.0}"
  `#{command}`
end
