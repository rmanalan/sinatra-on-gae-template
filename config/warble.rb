Warbler::Config.new do |config|
  config.staging_dir = 'app'
  config.gems = ['sinatra']
  config.dirs = []
  config.gem_dependencies = true
 
  config.webxml.booter = :rack
 
  config.webxml.jruby.min.runtimes = 1
  config.webxml.jruby.max.runtimes = 1
  config.webxml.jruby.init.serial = true
 
  config.java_libs = []
end

