Gem::Specification.new do |s|
  s.name        = 'faktura_gemspec'
  s.version     = '0.0.1'
  s.date        = '2015-10-15'
  s.summary     = "Faktura Parser"
  s.description = "OVH Invoices parser"
  s.authors     = ["Michal Kulesza"]
  s.email       = 'mk@trou.pl'
  s.files       = ["lib/faktura_parser.rb", 'lib/classifier.rb', 'lib/parser/base_parser.rb', 'lib/parser/ovh_parser.rb']
  s.homepage    =
    'http://gitub.com/mic-kul/faktura_parser'
  s.license       = 'MIT'
end
