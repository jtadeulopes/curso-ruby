require "rexml/document"
require "iconv"

doc = REXML::Document.new(File.open("alunos.xml"))
doc.elements.each("alunos/aluno") do |aluno|
  puts aluno.elements["id"].text+"-"+Iconv.conv("ISO-8859-1", "UTF-8",aluno.elements["nome"].text)
end
