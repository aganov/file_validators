# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)

require 'file_validators/version'

Gem::Specification.new do |s|
  s.name        = 'file_validators'
  s.version     = FileValidators::VERSION
  s.authors     = ['Ahmad Musaffa']
  s.email       = ['musaffa_csemm@yahoo.com']
  s.summary     = 'ActiveModel file validators'
  s.description = 'Adds file validators to ActiveModel'
  s.homepage    = 'https://github.com/musaffa/file_validators'
  s.license     = 'MIT'

  s.files         = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^spec/})
  s.require_paths = ['lib']

  s.add_dependency 'activemodel', '>= 3.2'
  s.add_dependency 'mime-types', '>= 1.0'

  s.add_development_dependency 'coveralls'
  s.add_development_dependency 'rack-test'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec', '~> 3.5.0'
  s.add_development_dependency 'rubocop', '~> 0.58.2'
  s.add_development_dependency 'terrapin', '~> 0.6'
end
