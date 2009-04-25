require 'rubygems'
require 'zip/zip'
require 'fileutils'

zip = Zip::ZipFile.open('teste.zip')
zip.each do |file|
  puts "descompactando arquivo #{file}"
  dir = File.dirname(file.name)
  File.mkpath(dir)
  zip.extract(file.name, file.name)
end
