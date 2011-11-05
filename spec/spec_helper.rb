require 'rspec-puppet'

RSpec.configure do |c|
    c.module_path = "modules"
      c.manifest_dir = 'manifests'
end
