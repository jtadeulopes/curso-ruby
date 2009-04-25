require 'rubygems'
require 'zip/zip'

File.delete('teste.zip') if File.exists? 'teste.zip'

zip = Zip::ZipFile.open('teste.zip', true)
zip.add("arquivo.txt", "arquivo.txt")
zip.close
