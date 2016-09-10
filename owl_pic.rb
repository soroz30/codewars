def owl_pic(text)
  text = text.scan(/[8WTYUIOAHXVM]/i).join("")
  "#{text.upcase}''0v0''#{text.reverse.upcase}" 
end

############

def owl_pic(text)
  plumage = text.upcase.delete("^8WTYUIOAHXVM")
  "#{plumage}''0v0''#{plumage.reverse}"
end
