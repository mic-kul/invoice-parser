$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|

  s.name        = 'faktura_parser'
  s.version     = '0.0.2'
  s.date        = '2015-10-18'
  s.summary     = "Faktura Parser"
  s.description = "OVH Invoices parser"
  s.authors     = ["Michal Kulesza"]
  s.email       = 'mk@trou.pl'
  s.files       = `git ls-files`.split("\n")
  s.homepage    =
    'http://gitub.com/mic-kul/faktura_parser'
s.require_paths = ["lib"]
  s.license       = 'MIT'
  s.add_runtime_dependency 'docsplit'
end
