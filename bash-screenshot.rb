#!/usr/bin/ruby

path = File.expand_path('~/.bash_it/themes')
themes = Dir.entries(path)

themes = themes.reject { |x| x.include?("\.") }

bash_file = File.expand_path('~/.bash_profile')

themes.each do |theme|
  p "creating theme #{theme}"
  bash_profile = File.read(bash_file)
  new_theme_string = "export BASH_IT_THEME='#{theme}'"
  new_profile_text = bash_profile.gsub(/export BASH_IT_THEME='.*'/, new_theme_string)

  File.open(bash_file, "w") {|file| file.puts new_profile_text }

  system "osascript screenshot.scpt #{theme}"
end




