# -*- encoding: utf-8 -*-
# stub: polish 0.1.6 ruby lib

Gem::Specification.new do |s|
  s.name = "polish"
  s.version = "0.1.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Grzesiek Kolodziejczyk"]
  s.date = "2012-01-30"
  s.email = "gkolodziejczyk@gmail.com"
  s.homepage = "http://github.com/grk/polish"
  s.rubygems_version = "2.4.5"
  s.summary = "Polish language support for Ruby and Rails"

  s.installed_by_version = "2.4.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<i18n>, [">= 0"])
      s.add_runtime_dependency(%q<rake>, [">= 0"])
      s.add_runtime_dependency(%q<bundler>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 2.8.0"])
    else
      s.add_dependency(%q<i18n>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 2.8.0"])
    end
  else
    s.add_dependency(%q<i18n>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 2.8.0"])
  end
end
