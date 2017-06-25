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

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency('rdoc')
  spec.add_development_dependency('aruba')
  spec.add_dependency('methadone', '~> 1.9.5')
  spec.add_development_dependency('test-unit')
  spec.add_development_dependency('rspec', '~> 3')
end
