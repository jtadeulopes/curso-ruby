require 'yaml'

databases = YAML::load_file('test.yml')
puts databases.inspect
puts databases['test']['user']
