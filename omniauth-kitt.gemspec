require_relative 'lib/omniauth/kitt/version'

Gem::Specification.new do |spec|
  spec.name          = "omniauth-kitt"
  spec.version       = OmniAuth::Kitt::VERSION
  spec.authors       = ["Sébastien Saunier"]
  spec.email         = ["seb@saunier.me"]

  spec.summary       = %q{OmniAuth strategy for Kitt}
  spec.description   = %q{Le Wagon's alumni platform provides OAuth capabilities for the ecosystem}
  spec.homepage      = "https://github.com/lewagon/omniauth-kitt"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/lewagon/omniauth-kitt"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.require_paths = ["lib"]
  spec.add_dependency 'omniauth', '~> 2.0'
  spec.add_dependency 'omniauth-oauth2', '~> 1.7.1'
end
