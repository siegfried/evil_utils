# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: evil_utils 0.0.2 ruby lib

Gem::Specification.new do |s|
  s.name = "evil_utils"
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Zhi-Qiang Lei"]
  s.date = "2014-02-01"
  s.description = "Controller generators with responders and shoulda-matchers"
  s.email = "zhiqiang.lei@gmail.com"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "evil_utils.gemspec",
    "lib/evil_utils.rb",
    "lib/evil_utils/version.rb",
    "lib/generators/evil_utils/scaffold_controller/USAGE",
    "lib/generators/evil_utils/scaffold_controller/scaffold_controller_generator.rb",
    "lib/generators/evil_utils/scaffold_controller/templates/controller.rb",
    "lib/generators/evil_utils/scaffold_controller_spec/USAGE",
    "lib/generators/evil_utils/scaffold_controller_spec/scaffold_controller_spec_generator.rb",
    "lib/generators/evil_utils/scaffold_controller_spec/templates/controller_spec.rb",
    "test/helper.rb",
    "test/test_evil_utils.rb"
  ]
  s.homepage = "http://github.com/siegfried/evil_utils"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.1"
  s.summary = "Evil utils for Rails"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, ["~> 4.0"])
      s.add_runtime_dependency(%q<shoulda-matchers>, ["~> 2.5"])
      s.add_runtime_dependency(%q<responders>, ["~> 1"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<yard>, ["~> 0.7"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 2.0.1"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
    else
      s.add_dependency(%q<rails>, ["~> 4.0"])
      s.add_dependency(%q<shoulda-matchers>, ["~> 2.5"])
      s.add_dependency(%q<responders>, ["~> 1"])
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<yard>, ["~> 0.7"])
      s.add_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_dependency(%q<bundler>, ["~> 1.0"])
      s.add_dependency(%q<jeweler>, ["~> 2.0.1"])
      s.add_dependency(%q<simplecov>, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>, ["~> 4.0"])
    s.add_dependency(%q<shoulda-matchers>, ["~> 2.5"])
    s.add_dependency(%q<responders>, ["~> 1"])
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<yard>, ["~> 0.7"])
    s.add_dependency(%q<rdoc>, ["~> 3.12"])
    s.add_dependency(%q<bundler>, ["~> 1.0"])
    s.add_dependency(%q<jeweler>, ["~> 2.0.1"])
    s.add_dependency(%q<simplecov>, [">= 0"])
  end
end

