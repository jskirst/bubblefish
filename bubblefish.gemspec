# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "bubblefish/version"

Gem::Specification.new do |spec|
  spec.name          = "bubblefish"
  spec.license       = "MIT"
  spec.version       = Bubblefish::VERSION
  spec.authors       = ["Jonathan Kirst"]
  spec.email         = ["jskirst@gmail.com"]

  spec.summary       = %q{Bubblefish helps you come up with a name for your next project or startup.}
  spec.description   = %q{Bubblefish uses various language APIs to take a single word as a starting point to give you similar words in various languages.}
  spec.homepage      = "https://github.com/jskirst/bubblefish"

   spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.test_files   =  `git ls-files -- {test,spec,features}/*`.split("\n")
  spec.bindir        = 'bin'
  spec.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'rdoc', '~> 5.1'
  spec.add_development_dependency 'aruba', '0.14.2'
  spec.add_dependency 'methadone', '~> 1.9'
  spec.add_dependency 'unirest', '~> 1.1'
  spec.add_development_dependency 'rspec', '~> 3'
end
