$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
require "response_code/version"

task :default => :cucumber

task :build do
  system "gem build response_code.gemspec"
end

task :install do
  system "gem install response_code-0.0.1.gem"
end

task :cucumber do
  system 'cucumber features'
end
