# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path('lib', __dir__)
require 'libv8/node/version'

Gem::Specification.new do |s|
  s.name        = 'drm51_libv8_node'
  s.version     = Libv8::Node::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['']
  s.email       = ['']
  s.homepage    = 'https://github.com/DRM51/libv8-node'
  s.summary     = "DRM51 build of Node.js's V8 JavaScript engine"
  s.description = "DRM51's build of the V8 engine from Node.js #{Libv8::Node::NODE_VERSION} " \
                  "(V8 #{Libv8::Node::LIBV8_VERSION}), for drm51_mini_racer. Not an upstream " \
                  'libv8-node release; versions follow the V8 version.'
  s.license     = 'MIT'

  s.files = Dir['ext/**/*.rb'] +
            Dir['lib/**/*.rb'] +
            Dir['libexec/*'] +
            Dir['patch/*'] +
            Dir['sums/*'] +
            ['LICENSE', 'README.md', 'CHANGELOG.md']

  s.extensions = ['ext/libv8-node/extconf.rb']
  s.require_paths = ['lib', 'ext']

  s.add_development_dependency 'base64'
  s.add_development_dependency 'logger'
  s.add_development_dependency 'mutex_m'
  s.add_development_dependency 'rake', '~> 12'
  s.add_development_dependency 'rubocop', '>= 1.8.0'
  s.metadata['rubygems_mfa_required'] = 'true'
end
