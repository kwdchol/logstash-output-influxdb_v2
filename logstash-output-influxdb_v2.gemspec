Gem::Specification.new do |s|
  s.name          = 'logstash-output-influxdb_v2'
  s.version       = '0.2.5'
  s.licenses      = ['Apache-2.0']
  s.summary       = 'Writes metrics to InfluxDB v2.*'
  s.description   = 'copy logstash-output-influxdb'
  s.homepage      = 'https://github.com/kwdchol/logstash-output-influxdb_v2'
  s.authors       = ['kwdchol']
  s.email         = 'czg159054@hotmail.com'
  s.require_paths = ['lib']

  # Files
  s.files = Dir['lib/**/*','spec/**/*','vendor/**/*','*.gemspec','*.md','CONTRIBUTORS','Gemfile','LICENSE','NOTICE.TXT']
   # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { "logstash_plugin" => "true", "logstash_group" => "output" }

  # Gem dependencies
  s.add_runtime_dependency "stud"
  s.add_runtime_dependency "influxdb-client" , ">= 2.0"
  #s.add_runtime_dependency "logstash-core-plugin-api", "~> 2.0"
  #s.add_runtime_dependency "logstash-codec-plain"

  s.add_development_dependency "logstash-devutils"
  s.add_development_dependency "logstash-input-generator"
  s.add_development_dependency "logstash-filter-kv"
end
