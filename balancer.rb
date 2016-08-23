def balancer(string)
  return false unless string.count("(") == string.count(")")

  #detect order is also good
  parent_count = 0

  string.split("").each do |char|
    parent_count += 1 if char == "("
    parent_count -= 1 if char == ")"

    return false if parent_count < 0
  end

  true
end