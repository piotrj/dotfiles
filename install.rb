#!/usr/bin/env ruby

# from http://errtheblog.com/posts/89-huba-huba

home = File.expand_path('~')

Dir['*'].each do |file|
  next if file =~ /install/
  target = File.join(home, ".#{file}")
  `mv #{target} #{target.old}` if File.exist? target
  `ln -s #{File.expand_path file} #{target}`
end


