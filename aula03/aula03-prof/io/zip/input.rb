require 'rubygems'
require 'zip/zip'

File.delete('teste.zip') if File.exists? 'teste.zip'

zip = Zip::ZipFile.open('teste.zip', true)
Dir.glob("/root/aula3/*.*").each do |file|
  puts "compactando #{file}"
  zip.add("dir-tmp/#{file}", file)
end
zip.close

