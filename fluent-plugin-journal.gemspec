lib = File.expand_path("lib", __dir__)

Gem::Specification.new do |spec|
  spec.name          = "fluent-plugin-journal"
  spec.version       = "1.0.0"
  spec.authors       = ["dengbo"]
  spec.email         = ["dengbo02@inspur.com"]

  spec.summary       = %q{Fluentd input plugin.}
  spec.description   = %q{fluent plugin for collect journal logs by open journal files.}
  spec.homepage      = "https://github.com/xidiandb/fluentd-plugin-journal"
  spec.license       = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         =  `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'bundler', '> 1.10'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'test-unit', '~> 2.5'
  spec.add_development_dependency 'rubocop', '~> 0.53.0'

  spec.add_runtime_dependency 'fluentd', ['>= 0.14.11', '< 2']
  spec.add_runtime_dependency 'systemd-journal', '~> 1.3.2'
end
