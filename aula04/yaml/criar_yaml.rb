require 'yaml'

#a = %w{primeiro segundo terceiro}

databases = {}
databases['production'] = {'user' => 'root', 'passwd' => '1234'}
databases['test'] = {'user' => 'root', 'passed' => '1234'}
databases['development'] = {'user' => 'root', 'passed' => '1234'}

YAML.dump(databases, File.open('test.yml', 'w+'))
