# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "Randint"
  s.version = "0.0.1.20140218091803"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["SoAwesomeMan"]
  s.date = "2014-02-18"
  s.description = "Creates positive integer with specified number of digits (i.e., specified \"length\" when coverted to string)"
  s.email = ["callme@1800AWESO.ME"]
  s.executables = ["randint"]
  s.extra_rdoc_files = ["History.md", "Manifest.txt", "README.md", "History.md"]
  s.files = [".autotest", "History.md", "Manifest.txt", "README.md", "Rakefile", "bin/randint", "lib/randint.rb", "lib/randint/error.rb", "test/test_randint.rb", ".gemtest"]
  s.homepage = "https://github.com/awesome/randint"
  s.licenses = ["MIT"]
  s.rdoc_options = ["--title", "Randint (0.0.1)", "--markup", "markdown", "--quiet"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "randint"
  s.rubygems_version = "1.8.23"
  s.summary = "Creates positive integer with specified number of digits (i.e., specified \"length\" when coverted to string)"
  s.test_files = ["test/test_randint.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<hoe-yard>, [">= 0.1.2"])
      s.add_development_dependency(%q<hoe>, ["~> 3.9"])
    else
      s.add_dependency(%q<hoe-yard>, [">= 0.1.2"])
      s.add_dependency(%q<hoe>, ["~> 3.9"])
    end
  else
    s.add_dependency(%q<hoe-yard>, [">= 0.1.2"])
    s.add_dependency(%q<hoe>, ["~> 3.9"])
  end
end
