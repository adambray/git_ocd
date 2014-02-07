# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'git_ocd/version'

Gem::Specification.new do |spec|
  spec.name          = "git_ocd"
  spec.version       = GitOcd::VERSION
  spec.authors       = ["Adam Bray"]
  spec.email         = ["adam.bray@gmail.com"]
  spec.description   = %q{GitOCD watches a git repo for changes and automatically commits/pushes those changes}
  spec.summary       = %q{GitOCD is a terrible idea, well-executed. Have you every wanted your local repo to stay in sync with a remote repo, but you found the whole 'git add', 'git commit', 'git push' cycle was wearing you out?
                          GitOCD is here to save your day. Simply run 'git_ocd path_to_repo', and git_ocd will watch for changes and add/commit/push them for you! What could possibly go wrong?}
  spec.homepage      = "http://github.com/adambray/git_ocd"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency('rdoc')
  spec.add_development_dependency('aruba')
  spec.add_development_dependency('rake', '~> 0.9.2')
  spec.add_development_dependency('pry')
  spec.add_dependency('methadone', '~> 1.3.1')
  spec.add_dependency('listen', '~> 2.4.1')
end
