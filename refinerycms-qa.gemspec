# Encoding: UTF-8

Gem::Specification.new do |s|
  s.name              = %q{refinerycms-qa}
  s.version           = %q{1.0.0}
  s.summary           = %q{Question and answer for the Refinery CMS project.}
  s.description       = %q{Question from Refinery frontend and answer in the Refinery backend.}
  s.homepage          = %q{https://github.com/xinminlabs/refinerycms-qa}
  s.email             = %q{flyerhzm@gmail.com}
  s.authors           = ['Richard Huang']
  s.require_paths     = %w(lib)
  s.license           = %q{MIT}

  s.files             = `git ls-files`.split("\n")
  s.test_files        = `git ls-files -- spec/*`.split("\n")

  s.add_dependency  'refinerycms-core'
  s.add_dependency  'refinerycms-settings'
end
