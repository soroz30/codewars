def calculate(n1, n2, o)
  options = { 'add' => :+, 'subtract' => :-, 'multiply' => :*}
  p n1.to_i(2).send(options[o], n2.to_i(2)).to_s(2)
end

calculate('10', '100', 'add')