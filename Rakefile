$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
require "response_code/version"

task :default => :cucumber

task :build do
  system "gem build response_code.gemspec"
end

task :install do
  system "gem install response_code-#{ ResponseCode::VERSION }.gem"
end

task :push do
  system "gem push response_code-#{ ResponseCode::VERSION }.gem"
end

task :cucumber do
  system 'cucumber features'
end

task :exec do
  system './bin/response_code'
end

task :full => [:build, :install, :cucumber, :exec]
