def is_valid(idn)
  idn.match(/^[a-zA-z_$][a-zA-Z0-9_$]+$/) ? true : false
end

###########################33

def is_valid(idn)
  /
    \A       # Match the beginning of the string
    [a-z_$]  # Match a single alpha, underscore or dollar sign character
    [\w$]*   # Match zero or more alpha, digit, underscore or dollar sign characters
    \z       # Match the end of the string 
  /xi === idn
end