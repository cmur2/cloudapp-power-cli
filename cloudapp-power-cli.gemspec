
Gem::Specification.new do |s|
  s.name = "cloudapp-power-cli"
  s.version = "1.0.0"
  s.summary = "A powerful CLI for CloudApp written in Ruby."
  s.description = "A powerful CLI for CloudApp that makes the complete CloudApp API available on command line and works with Regenwolken."
  s.author = "Christian Nicolai"
  s.email = "cn@mycrobase.de"
  s.license = "Apache License Version 2.0"
  s.homepage = "https://github.com/cmur2/cloudapp-power-cli"
  
  s.files = `git ls-files`.split($/)
  s.executables = ["cloudapp"]
  s.require_paths = ["lib"]
  
  s.add_runtime_dependency "cloudapp_api"
end
