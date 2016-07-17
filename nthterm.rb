def nthterm(first, n, c)
 (1..n).reduce(first){|memo, x| memo += c}
end