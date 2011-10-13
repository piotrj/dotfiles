#!/usr/bin/env ruby

# from http://errtheblog.com/posts/89-huba-huba

home = File.expand_path('~')

Dir['*'].each do |file|
  next if file =~ /install/
  target = File.join(home, ".#{file}")
  `mv #{target} #{target.old}` if File.exist? target
  `ln -s #{File.expand_path file} #{target}`
end

#install Janus
`curl https://raw.github.com/carlhuda/janus/master/bootstrap.sh -o - | sh`

#install oh-my-zsh
`wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh`





