def rad_ladies(name)
  name.scan(/[a-zA-Z !]+/).join("").upcase
end