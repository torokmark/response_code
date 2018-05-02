$LOAD_PATH.push File.expand_path("../lib", __FILE__)
require 'response_code/version'

Gem::Specification.new do |spec|
  spec.name        = 'response_code'
  spec.version     = "#{ ResponseCode::VERSION }"
  spec.date        = '2018-05-02'
  spec.summary     = "Readable way of response codes."
  spec.description = "Collection of response codes in readable and talkative way."
  spec.authors     = ["Mark Torok"]
  spec.email       = 'torokmark@gmx.com'
  spec.homepage    = 'http://github.com/torokmark/response_code'
  spec.license     = 'MIT'

  spec.files            = Dir.glob("{bin,lib}/**/*") + %w(LICENSE README.md)
  spec.test_files       = Dir.glob("spec/**/*")
  spec.executables      = ['response_code']
  spec.require_path     = 'lib'
  spec.extra_rdoc_files = [ "README.md" ]

end
