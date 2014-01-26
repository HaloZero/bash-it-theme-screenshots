#!/usr/bin/ruby

path = File.expand_path('~/.bash_it/themes')
themes = Dir.entries(path)

themes = themes.reject { |x| x.include?("\.") }

bash_file = File.expand_path('~/.bash_profile')

themes.each do |theme|
  p "creating theme #{theme}"
  # TODO: pass in style and change the background color of the terminal to black?
  system "osascript screenshot.scpt #{theme}"
end




