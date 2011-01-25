xml.instruct! :xml, :version => '1.0'
xml.tag! :Response do
  xml << yield 
end