require "rexml/document"

doc = REXML::Document.new
dec = REXML::XMLDecl.new("1.0", "ISO-8859-1")

doc.add(dec)

alunos = {"1" => "João", "2" => "Andréia", "3" => "Rafael"}

root = REXML::Element.new("alunos")
doc.add_element(root)

alunos.each do |key, value|
  aluno = REXML::Element.new("aluno")
  id	= REXML::Element.new("id")
  nome	= REXML::Element.new("nome")

  id.text = key
  nome.text = value
  aluno.add_element(id)
  aluno.add_element(nome)

  root.add_element(aluno)
end

doc.write(File.open("alunos.xml", "w"), 2)

