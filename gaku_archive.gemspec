# encoding: UTF-8

Gem::Specification.new do |s|
  s.platform     = Gem::Platform::RUBY
  s.name         = 'gaku_archive'
  s.version      =  '0.2.1'
  s.summary      = 'Archive engine for GAKU Engine'
  s.description  = 'It allows archiving functionality'
  s.required_ruby_version = '~> 2.0.0'

  s.authors      = ['Rei Kagetsuki', 'Nakaya Yukiharu', 'Vassil Kalkov', 'Georgi Tapalilov']
  s.email        = 'info@genshin.org'
  s.homepage     = 'http://github.com/Genshin/gaku'

  s.files        = Dir['LICENSE', 'README.md', 'app/**/*', 'config/**/*', 'lib/**/*', 'db/**/*', 'vendor/**/*']
  s.test_files   = `git ls-files -- {spec}/*`.split("\n")
  s.require_path = 'lib'

  s.requirements << 'postgresql'
  s.requirements << 'postgresql-contrib'

  s.add_dependency 'gaku_core',     '~> 0.2.1'
  s.add_dependency 'gaku_admin',    '~> 0.2.1'
  s.add_dependency 'gaku_frontend', '~> 0.2.1'

  s.add_dependency 'paper_trail',                    '3.0.0'
end
