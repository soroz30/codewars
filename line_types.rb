def line_types lines
  lines.map {|line| line =~ /(alpha|beta)/i ? $1.to_sym.downcase : :unknown}
end

line_types(["This is an alpha line", "Beta line next!", "Another AlphA", "I have no idea", nil])